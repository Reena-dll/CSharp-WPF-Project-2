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
using System.Data;
using System.Data.SqlClient;

namespace WpfKutuphane
{
    /// <summary>
    /// Interaction logic for SayfaTurler.xaml
    /// </summary>
    public partial class SayfaTurler : Window
    {
        public SayfaTurler()
        {
            InitializeComponent();
        }

        public string Mail;

        LibraryEntities db = new LibraryEntities();

        void Temizle()
        {
            txtKitapTur.Text = "";
            txtTurID.Text = "";
        }

        void Listele()
        {

            SqlConnection baglanti = new SqlConnection("Data Source=localhost;Initial Catalog=Library;Integrated Security=True; MultipleActiveResultSets=True");
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("select ID, KitapTur from KitapTur", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);
            datagrid1.ItemsSource = dt.DefaultView;
        }

        void AdminPanel()
        {
            Kullanicilar k = db.Kullanicilar.Where(x => x.Mail == Mail && x.Rol == 1).SingleOrDefault();

            if (k == null)
            {
                btnEkle.Visibility = Visibility.Hidden;
                btnGuncelle.Visibility = Visibility.Hidden;
                btnTemizle.Visibility = Visibility.Hidden;
                a1.Visibility = Visibility.Hidden;
            }
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            AdminPanel();
            Listele();
            Temizle();

        }

        private void Geri_Click(object sender, RoutedEventArgs e)
        {
            AnaForm mw = new AnaForm();
            mw.Mail = Mail;
            mw.Show();
            this.Hide();
        }

        private void Ekle_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                KitapTur y = new KitapTur();
                y.KitapTur1 = txtKitapTur.Text;
                db.KitapTur.Add(y);
                db.SaveChanges();

            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Kitap Türü Sisteme Kayıt Edildi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void Guncelle_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var kitapturu = db.KitapTur.Find(Convert.ToInt32(txtTurID.Text));
                kitapturu.KitapTur1 = txtKitapTur.Text;
                db.SaveChanges();


            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Kitap Türü Başarıyla Güncellendi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void Temizle_Click(object sender, RoutedEventArgs e)
        {
            Temizle();
        }

        private void datagrid1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataGrid gd = (DataGrid)sender;
            DataRowView secilen = gd.SelectedItem as DataRowView;
            if (secilen != null)
            {
                txtTurID.Text = secilen["ID"].ToString();
                txtKitapTur.Text = secilen["KitapTur"].ToString();
               
            }
        }
    }
}
