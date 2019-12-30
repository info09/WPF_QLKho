using QuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        private ObservableCollection<TonKho> _tonKhoList;

        public ObservableCollection<TonKho> tonKhoList { get => _tonKhoList; set { _tonKhoList = value; OnPropertyChanged(); } }

        public bool isLoaded = false;
        public ICommand LoadWindowCommand { get; set; }
        public ICommand UnitCommand { get; set; }

        public ICommand SuplierCommand { get; set; }

        public ICommand CustomerCommand { get; set; }

        public ICommand ObjectCommand { get; set; }

        public ICommand UserCommand { get; set; }

        public ICommand InputCommand { get; set; }

        public ICommand OutputCommand { get; set; }

        public MainViewModel()
        {
            LoadWindowCommand = new RelayCommand<Window>((i) => { return true; },
               (i) =>
               {
                   isLoaded = true;
                   if (i == null)
                   {
                       return;
                   }
                   i.Hide();
                   LoginWindow wd = new LoginWindow();
                   wd.ShowDialog();

                   if (wd.DataContext == null)
                   {
                       return;
                   }

                   var loginVM = wd.DataContext as LoginViewModel;

                   if (loginVM.isLogin)
                   {
                       i.Show();
                       LoadTonKho();
                   }
                   else
                   {
                       i.Close();
                   }

               });

            UnitCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   UnitWindow wd = new UnitWindow();
                   wd.ShowDialog();
               });

            SuplierCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   SuplierWindow wd = new SuplierWindow();
                   wd.ShowDialog();
               });

            CustomerCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   CustomerWindow wd = new CustomerWindow();
                   wd.ShowDialog();
               });

            ObjectCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   ObjectWindow wd = new ObjectWindow();
                   wd.ShowDialog();
               });

            UserCommand = new RelayCommand<object>(i => { return CheckRole(); },
               i =>
               {
                   UserWindow wd = new UserWindow();
                   wd.ShowDialog();
               });

            InputCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   InputWindow wd = new InputWindow();
                   wd.ShowDialog();
               });

            OutputCommand = new RelayCommand<object>(i => { return true; },
               i =>
               {
                   OutputWindow wd = new OutputWindow();
                   wd.ShowDialog();
               });
        }

        private void LoadTonKho()
        {
            tonKhoList = new ObservableCollection<TonKho>();
            var objectList = DataProvider.Ins.Db.Objects.ToList();

            int i = 1;
            foreach (var item in objectList)
            {
                var inputList = DataProvider.Ins.Db.InputInfoes.Where(p => p.IdObject == item.Id);
                var outputList = DataProvider.Ins.Db.OutputInfoes.Where(p => p.IdObject == item.Id);

                int sumInput = 0;
                int sumOutput = 0;

                if(inputList != null)
                {
                    sumInput = inputList.Sum(p => p.Count).GetValueOrDefault();
                }

                if (outputList != null)
                {
                    sumOutput = outputList.Sum(p => p.Count).GetValueOrDefault();
                }

                TonKho tonkho = new TonKho()
                {
                    Stt = i,
                    Count = sumInput - sumOutput,
                    Object = item
                };

                tonKhoList.Add(tonkho);

                i++;
            }
        }

        private bool CheckRole()
        {
            LoginWindow wd = new LoginWindow();
            var loginVM = wd.DataContext as LoginViewModel;

            var user = DataProvider.Ins.Db.Users.Where(i => i.UserName == loginVM.UserName).FirstOrDefault();

            var role = DataProvider.Ins.Db.UserRoles.Where(i => i.Id == user.IdRole).FirstOrDefault();

            if(role.DisplayName == "Admin")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
