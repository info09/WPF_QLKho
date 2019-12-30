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
    public class UnitViewModel : BaseViewModel
    {
        public ICommand AddCommand { get; set; }

        public ICommand UpdateCommand { get; set; }

        private ObservableCollection<Unit> _unitList;

        public ObservableCollection<Unit> unitList { get => _unitList; set { _unitList = value; OnPropertyChanged(); } }

        private Unit _selectedItem;

        public Unit selectedItem
        {
            get => _selectedItem;
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (selectedItem != null)
                {
                    displayName = selectedItem.DisplayName;
                }
            }
        }

        private string _displayName;

        public string displayName { get => _displayName; set { _displayName = value; OnPropertyChanged(); } }

        public UnitViewModel()
        {
            unitList = new ObservableCollection<Unit>(DataProvider.Ins.Db.Units);
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(displayName))
                {
                    return false;
                }
                else
                {
                    var unit = DataProvider.Ins.Db.Units.FirstOrDefault(i => i.DisplayName == displayName);
                    if (unit != null)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }

            }, p => 
            {
                var unit = new Unit() { DisplayName = displayName };
                DataProvider.Ins.Db.Units.Add(unit);
                DataProvider.Ins.Db.SaveChanges();

                unitList.Add(unit);
            });

            UpdateCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(displayName) || selectedItem == null)
                {
                    return false;
                }
                else
                {
                    var unit = DataProvider.Ins.Db.Units.FirstOrDefault(i => i.DisplayName == displayName);
                    if (unit != null)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }

            }, p =>
            {
                var unit = DataProvider.Ins.Db.Units.Where(i => i.Id == selectedItem.Id).SingleOrDefault();
                unit.DisplayName = displayName;
                DataProvider.Ins.Db.SaveChanges();

                selectedItem.DisplayName = displayName;

                unitList = new ObservableCollection<Unit>(DataProvider.Ins.Db.Units);
            });
        }
    }
}
