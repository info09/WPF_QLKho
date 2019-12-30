using QuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {
        public bool isLogin = false;

        private string _userName;

        public string UserName { get => _userName; set { _userName = value; OnPropertyChanged(); } }

        private string _passWord;

        public string Password { get => _passWord; set { _passWord = value; OnPropertyChanged(); } }

        public ICommand LoginCommand { get; set; }

        public ICommand CloseCommand { get; set; }

        public ICommand PasswordChangedCommand { get; set; }


        public LoginViewModel()
        {
            isLogin = false;
            UserName = "";
            Password = "";
            LoginCommand = new RelayCommand<Window>(i => { return true; },
               i =>
               {
                   Login(i);
               });

            PasswordChangedCommand = new RelayCommand<PasswordBox>(i => { return true; },
               i =>
               {
                   Password = i.Password;
               });

            CloseCommand = new RelayCommand<Window>(i => { return true; },
               i =>
               {
                   i.Close();
               });
        }

        void Login(Window p)
        {
            if (p == null)
            {
                return;
            }
            else
            {
                string pass = MD5Hash(Base64Encode(Password));
                var user = DataProvider.Ins.Db.Users.Where(i => i.UserName == UserName && i.Password == pass).Count();
                if (user > 0)
                {
                    isLogin = true;
                    p.Close();
                }
                else
                {
                    isLogin = false;
                    MessageBox.Show("Tài khoản hoặc mật khẩu không đúng");
                }
            }
        }

        private static string Base64Encode(string text)
        {
            var byteText = System.Text.Encoding.UTF8.GetBytes(text);
            return System.Convert.ToBase64String(byteText);
        }

        private static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5Provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5Provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
    }
}
