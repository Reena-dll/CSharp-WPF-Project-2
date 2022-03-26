using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace WpfKutuphane
{
    /// <summary>
    /// Interaction logic for KayitOl.xaml
    /// </summary>
    public partial class KayitOl : Window
    {
        public KayitOl()
        {
            InitializeComponent();
        }

        LibraryEntities db = new LibraryEntities();
        void Temizle()
        {
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtMail.Text = "";
            txtTelefon.Text = "";
            txtAdres.Text = "";
            txtSifre.Password = "";
            txtSifreTekrar.Password = "";
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Temizle();
        }

        private void btnGeri_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Hide();
        }

        public string hatamesaji;
        public int sayac;
        public string Ad;
        public string Soyad;
        public string telefon;
        public string Adres;
        public string Mail;
        public string password1;
        public string password2;

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            hatamesaji = "";
            sayac = 0;

            if (txtAd.Text == "" || txtAd.Text.Length < 2)
            {
                IconUser.Foreground = System.Windows.Media.Brushes.Red;
                txtAd.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji = "Ad bölümü boş olamaz veya 2 harften uzun olmalı." + "\n" + "";
            }
            else if (txtAd.Text != "" && txtAd.Text.Length > 2)
            {
                IconUser.Foreground = System.Windows.Media.Brushes.Gray;
                txtAd.Background = System.Windows.Media.Brushes.Transparent;
                Ad = txtAd.Text;
                sayac += 1;
            }




            if (txtSoyad.Text == "" || txtSoyad.Text.Length < 2)
            {
                IconUser2.Foreground = System.Windows.Media.Brushes.Red;
                txtSoyad.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Soyad bölümü boş olamaz veya 2 harften uzun olmalı." + "\n" + "";
            }
            else if (txtSoyad.Text != "" && txtSoyad.Text.Length > 2)
            {
                IconUser2.Foreground = System.Windows.Media.Brushes.Gray;
                txtSoyad.Background = System.Windows.Media.Brushes.Transparent;
                Soyad = txtSoyad.Text;
                sayac += 1;
            }





            if (txtTelefon.Text == "" || txtTelefon.Text.Length < 10)
            {
                IconTel.Foreground = System.Windows.Media.Brushes.Red;
                txtTelefon.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Telefon bölümü boş olamaz veya 10 karakterden uzun olmalı." + "\n" + "";
            }
            else if (txtTelefon.Text != "" && txtTelefon.Text.Length >= 10)
            {
                IconTel.Foreground = System.Windows.Media.Brushes.Gray;
                txtTelefon.Background = System.Windows.Media.Brushes.Transparent;
                telefon = txtTelefon.Text;
                sayac += 1;
            }




            if (txtAdres.Text == "" || txtAdres.Text.Length <= 3)
            {
                IconHome.Foreground = System.Windows.Media.Brushes.Red;
                txtAdres.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Adres bölümü boş olamaz veya 3 harften uzun olmalı." + "\n" + "";
            }
            else if (txtAdres.Text != "" && txtAd.Text.Length > 3)
            {
                IconHome.Foreground = System.Windows.Media.Brushes.Gray;
                txtAdres.Background = System.Windows.Media.Brushes.Transparent;
                Adres = txtAdres.Text;
                sayac += 1;
            }


            if (txtMail.Text == "" || txtMail.Text.Length <= 3)
            {
                IconMail.Foreground = System.Windows.Media.Brushes.Red;
                txtMail.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Mail bölümü boş olamaz veya 3 harften uzun olmalı." + "\n" + "";
            }
            else if (txtMail.Text != "" && txtMail.Text.Length > 3)
            {
                IconMail.Foreground = System.Windows.Media.Brushes.Gray;
                txtMail.Background = System.Windows.Media.Brushes.Transparent;
                Mail = txtMail.Text;
                sayac += 1;
            }


            if (txtSifre.Password == "" || txtSifre.Password.Length <= 3)
            {
                IconPassword1.Foreground = System.Windows.Media.Brushes.Red;
                txtSifre.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Şifre bölümü boş olamaz veya 3 harften uzun olmalı." + "\n" + "";
            }
            else if (txtSifre.Password != "" && txtSifre.Password.Length > 3)
            {
                IconPassword1.Foreground = System.Windows.Media.Brushes.Gray;
                txtSifre.Background = System.Windows.Media.Brushes.Transparent;
                password1 = txtSifre.Password;
                sayac += 1;
            }



            if (txtSifreTekrar.Password == "" || txtSifreTekrar.Password.Length <= 3)
            {
                IconPassword2.Foreground = System.Windows.Media.Brushes.Red;
                txtSifreTekrar.Background = System.Windows.Media.Brushes.OrangeRed;
                hatamesaji += "Şifre Tekrar bölümü boş olamaz veya 3 harften uzun olmalı." + "\n" + "";
            }
            else if (txtSifreTekrar.Password != "" && txtSifreTekrar.Password.Length > 3)
            {
                IconPassword2.Foreground = System.Windows.Media.Brushes.Gray;
                txtSifreTekrar.Background = System.Windows.Media.Brushes.Transparent;
                password2 = txtSifreTekrar.Password;
                sayac += 1;
            }

            

            if (txtSifreTekrar.Password != txtSifre.Password)
            {
                hatamesaji += "Şifreler Uyuşmuyor!!";
                sayac -= 1;
            }


            if (sayac == 7 && txtSifre.Password == txtSifreTekrar.Password)
            {

                Kullanicilar kr = new Kullanicilar();
                kr.KullaniciAd = Ad;
                kr.KullaniciSoyad = Soyad;
                kr.Adres = Adres;
                kr.Mail = Mail;
                kr.Telefon = telefon;
                kr.Sifre = password1;
                kr.Rol = 2;
                kr.Durum = true;
                db.Kullanicilar.Add(kr);
                db.SaveChanges();

                MessageBox.Show("Sisteme Başarıyla Kayıt Oldunuz.", "Başarılı", MessageBoxButton.OK, MessageBoxImage.Information);
                Temizle();

                MainWindow mw = new MainWindow();
                mw.Show();
                this.Hide();
            }
            else if (sayac != 7  )
            {
                
                MessageBox.Show(hatamesaji, "Gerekli Alanlar Yanlış veya Eksik Dolduruldu", MessageBoxButton.OK, MessageBoxImage.Error);
            }


        }
    }
}
