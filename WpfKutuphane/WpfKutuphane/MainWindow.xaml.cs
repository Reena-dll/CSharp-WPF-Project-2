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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfKutuphane
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        LibraryEntities db = new LibraryEntities();

        void Temizle()
        {
            txtMail.Clear();
            txtSifre.Clear();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Kullanicilar k = db.Kullanicilar.Where(x => x.Mail == txtMail.Text && x.Sifre == txtSifre.Password).SingleOrDefault();

            if (k == null)
            {
                MessageBox.Show("Girmiş Olduğunuz Mail veya Şifre Yanlış.", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
                Temizle();
            }

            if (k != null)
            {

                AnaForm fr = new AnaForm();
                fr.Mail = txtMail.Text; 
                fr.Show();
                this.Hide();


            }
        }

        private void btnCikis_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Programı Kapatmak İstiyor Musunuz ?", "UYARI", MessageBoxButton.YesNo, MessageBoxImage.Warning);

            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }

        }

        private void TextBlock_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            KayitOl kt = new KayitOl();
            kt.Show();
            this.Hide();

        }

        private void TextBlock_MouseEnter(object sender, MouseEventArgs e)
        {
            txtHesap.Text = "Hesap Oluştur";
            txtHesap.TextDecorations = TextDecorations.Underline;

        }

        private void txtHesap_MouseLeave(object sender, MouseEventArgs e)
        {
            txtHesap.TextDecorations = null;
            txtHesap.Text = "Hesap Oluştur";

        }
    }
}
