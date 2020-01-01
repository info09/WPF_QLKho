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
    public class ObjectViewModel : BaseViewModel
    {
        #region Model
        private string _displayName;
        public string displayName { get => _displayName; set { _displayName = value; OnPropertyChanged(); } }

        

        private string _qrConde;
        public string qRCode { get => _qrConde; set { _qrConde = value; OnPropertyChanged(); } }

        private string _barCode;
        public string barCode { get => _barCode; set { _barCode = value; OnPropertyChanged(); } }
        #endregion
        private ObservableCollection<Model.Object> _objectList;

        public ObservableCollection<Model.Object> objectList { get => _objectList; set { _objectList = value; OnPropertyChanged(); } }


        private ObservableCollection<Model.Unit> _unitList;

        public ObservableCollection<Model.Unit> unitList { get => _unitList; set { _unitList = value; OnPropertyChanged(); } }

        private ObservableCollection<Model.Suplier> _suplierList;

        public ObservableCollection<Model.Suplier> suplierList { get => _suplierList; set { _suplierList = value; OnPropertyChanged(); } }

        private Model.Unit _selectedUnit;

        public Model.Unit selectedUnit
        {
            get => _selectedUnit;
            set
            {
                _selectedUnit = value;
                OnPropertyChanged();
                
            }
        }

        private Model.Suplier _selectedSuplier;

        public Model.Suplier selectedSuplier
        {
            get => _selectedSuplier;
            set
            {
                _selectedSuplier = value;
                OnPropertyChanged();
            }
        }

        private Model.Object _selectedItem;

        public Model.Object selectedItem 
        { 
            get => _selectedItem;
            set 
            {
                _selectedItem = value;
                OnPropertyChanged(); 
                if(selectedItem != null)
                {
                    displayName = selectedItem.DisplayName;
                    barCode = selectedItem.BarCode;
                    qRCode = selectedItem.QRCode;
                    selectedUnit = selectedItem.Unit;
                    selectedSuplier = selectedItem.Suplier;
                }
            }
        }

        public ICommand AddCommand { get; set; }

        public ICommand UpdateCommand { get; set; }

        public ObjectViewModel()
        {
            objectList = new ObservableCollection<Model.Object>(DataProvider.Ins.Db.Objects);
            unitList = new ObservableCollection<Unit>(DataProvider.Ins.Db.Units);
            suplierList = new ObservableCollection<Suplier>(DataProvider.Ins.Db.Supliers);

            var obj = DataProvider.Ins.Db.Objects.Where(i => i.DisplayName == displayName && i.IdUnit == selectedUnit.Id && i.IdSuplier == selectedSuplier.Id).Count();

            var isCheckQR = DataProvider.Ins.Db.Objects.Any(i => i.QRCode == qRCode);
            var isCheckBar = DataProvider.Ins.Db.Objects.Any(i => i.BarCode == barCode);

            AddCommand = new RelayCommand<object>(p =>
            {
                if (selectedUnit == null || selectedSuplier == null || obj > 0 || isCheckBar || isCheckQR)
                    return false;

                return true;
            }, p=> 
            {
                var Obj = new Model.Object()
                {
                    IdSuplier = selectedSuplier.Id,
                    IdUnit = selectedUnit.Id,
                    QRCode = qRCode,
                    BarCode = barCode,
                    DisplayName = displayName,
                    Id = Guid.NewGuid().ToString()
                };

                DataProvider.Ins.Db.Objects.Add(Obj);
                DataProvider.Ins.Db.SaveChanges();

                objectList.Add(Obj);
            });

            UpdateCommand = new RelayCommand<object>(p =>
            {
                if (selectedItem == null || selectedUnit == null || selectedSuplier == null || obj > 0 || isCheckBar || isCheckQR)
                    return false;

                return true;
            }, p =>
            {
                var Obj = DataProvider.Ins.Db.Objects.Where(i => i.Id == selectedItem.Id).SingleOrDefault();

                Obj.IdSuplier = selectedSuplier.Id;
                Obj.IdUnit = selectedUnit.Id;
                Obj.QRCode = qRCode;
                Obj.BarCode = barCode;
                Obj.DisplayName = displayName;

                DataProvider.Ins.Db.SaveChanges();

                objectList = new ObservableCollection<Model.Object>(DataProvider.Ins.Db.Objects);
            });
        }
    }
}
