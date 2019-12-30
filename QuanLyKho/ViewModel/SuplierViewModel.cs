using QuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
    public class SuplierViewModel : BaseViewModel
    {
        private ObservableCollection<Suplier> _suplierList;

        public ObservableCollection<Suplier> suplierList { get => _suplierList; set { _suplierList = value; OnPropertyChanged(); } }

        #region Model Binding

        private string _displayName;

        public string displayName { get => _displayName; set { _displayName = value; OnPropertyChanged(); } }

        private string _address;

        public string address { get => _address; set { _address = value; OnPropertyChanged(); } }

        private string _phone;

        public string phone { get => _phone; set { _phone = value; OnPropertyChanged(); } }

        private string _email;

        public string email { get => _email; set { _email = value; OnPropertyChanged(); } }

        private string _moreInfo;

        public string moreInfo { get => _moreInfo; set { _moreInfo = value; OnPropertyChanged(); } }

        private DateTime? _contractDate;

        public DateTime? contractDate { get => _contractDate; set { _contractDate = value; OnPropertyChanged(); } }

        #endregion

        #region Command

        public ICommand AddCommand { get; set; }

        public ICommand UpdateCommand { get; set; }

        #endregion

        private Suplier _selectedItem;

        public Suplier selectedItem 
        { 
            get => _selectedItem; 
            set 
            { 
                _selectedItem = value; 
                OnPropertyChanged(); 
                if(selectedItem != null)
                {
                    displayName = selectedItem.DisplayName;
                    address = selectedItem.Address;
                    phone = selectedItem.Phone;
                    email = selectedItem.Email;
                    moreInfo = selectedItem.MoreInfo;
                    contractDate = selectedItem.ContractDate;
                }
            } 
        }

        public SuplierViewModel()
        {
            suplierList = new ObservableCollection<Suplier>(DataProvider.Ins.Db.Supliers);
            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, p =>
            {
                var suplier = new Suplier() 
                { 
                    DisplayName = displayName,
                    Address = address,
                    Email = email,
                    ContractDate = contractDate,
                    MoreInfo = moreInfo,
                    Phone = phone
                };
                DataProvider.Ins.Db.Supliers.Add(suplier);
                DataProvider.Ins.Db.SaveChanges();

                suplierList.Add(suplier);
            });

            UpdateCommand = new RelayCommand<object>((p) =>
            {
                if (selectedItem == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }

            }, p =>
            {
                var suplier = DataProvider.Ins.Db.Supliers.Where(i => i.Id == selectedItem.Id).SingleOrDefault();
                suplier.DisplayName = displayName;
                suplier.Email = email;
                suplier.Phone = phone;
                suplier.MoreInfo = moreInfo;
                suplier.ContractDate = contractDate;
                suplier.Address = address;

                DataProvider.Ins.Db.SaveChanges();

                selectedItem.DisplayName = displayName;

                suplierList = new ObservableCollection<Suplier>(DataProvider.Ins.Db.Supliers);
            });
        }
    }
}
