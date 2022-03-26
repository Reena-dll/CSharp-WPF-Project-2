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
    /// Interaction logic for AnaForm.xaml
    /// </summary>
    public partial class AnaForm : Window
    {
        public AnaForm()
        {
            InitializeComponent();
        }

        LibraryEntities db = new LibraryEntities();

        public string Mail;

        private void btnCikis_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Programı Kapatmak İstiyor Musunuz ?", "UYARI", MessageBoxButton.YesNo, MessageBoxImage.Warning);

            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }

        void listele()
        {
            Kullanicilar k = db.Kullanicilar.Where(x => x.Mail == Mail && x.Rol == 1).SingleOrDefault();

            if (k == null)
            {
                btnKullanici.Visibility = Visibility.Hidden;
            }
           
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            listele();
        }

        private void Kitaplar_Click(object sender, RoutedEventArgs e)
        {
            SayfaKitaplar kt = new SayfaKitaplar();
            kt.Mail = Mail;
            kt.Show();
            this.Hide();
        }

        private void Yazarlar_Click(object sender, RoutedEventArgs e)
        {
            SayfaYazar sy = new SayfaYazar();
            sy.Mail = Mail;
            sy.Show();
            this.Hide();
        }

        private void Turler_Click(object sender, RoutedEventArgs e)
        {
            SayfaTurler st = new SayfaTurler();
            st.Mail = Mail;
            st.Show();
            this.Hide();
        }

        private void Kullanicilar_Click(object sender, RoutedEventArgs e)
        {

        }



        // Sadece bir anaform. Gelen Rol yetkisine göre yetkilendir. Button Enabled özelliğini kullanarak yetkisizleri yetkili alanlardan uzaklaştır!.
        // AnaForm'da herkes her yere girebilsin lakin girdikten sonra rollere göre buttonlar açılıp kapansın.
        // Sekmelerde kullanıcılarda yanda kalkacak butonlar yerine Resim KOY ...
    }
}
