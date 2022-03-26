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
using System.Data.SqlClient;
using System.Data;

namespace WpfKutuphane
{
    /// <summary>
    /// Interaction logic for SayfaYazar.xaml
    /// </summary>
    public partial class SayfaYazar : Window
    {
        public SayfaYazar()
        {
            InitializeComponent();
        }

        public string Mail;

        LibraryEntities db = new LibraryEntities();

        void Temizle()
        {
            txtYazar.Text = "";
            txtUlke.Text = "";
            txtYazarID.Text = "";
            rchBiyografi.Document.Blocks.Clear();
        
        }

        void AdminPanel()
        {
            Kullanicilar k = db.Kullanicilar.Where(x => x.Mail == Mail && x.Rol == 1).SingleOrDefault();

            if (k == null)
            {
                btnEkle.Visibility = Visibility.Hidden;
                btnGuncelle.Visibility = Visibility.Hidden;
                btnSil.Visibility = Visibility.Hidden;
                btnTemizle.Visibility = Visibility.Hidden;
                a1.Visibility = Visibility.Hidden;
            }
        }

        void Listele()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=localhost;Initial Catalog=Library;Integrated Security=True; MultipleActiveResultSets=True");
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("select ID,YazarAd,Ulke,Biyografi from Yazarlar", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);
            datagrid1.ItemsSource = dt.DefaultView;
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            AdminPanel();
            Listele();
            
        }

        private void btnGeri_Click(object sender, RoutedEventArgs e)
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
                Yazarlar y = new Yazarlar();
                y.YazarAd = txtYazar.Text;
                y.Ulke = txtUlke.Text;
                string biyografi = new TextRange(rchBiyografi.Document.ContentStart, rchBiyografi.Document.ContentEnd).Text;
                y.Biyografi = biyografi;
                db.Yazarlar.Add(y);
                db.SaveChanges();

            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Yazar Sisteme Kayıt Edildi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void Guncelle_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var yazar = db.Yazarlar.Find(Convert.ToInt32(txtYazarID.Text));
                yazar.YazarAd = txtYazar.Text;
                yazar.Ulke = txtUlke.Text;
                string biyografi = new TextRange(rchBiyografi.Document.ContentStart, rchBiyografi.Document.ContentEnd).Text;
                yazar.Biyografi = biyografi;
                db.SaveChanges();


            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Yazar Başarıyla Güncellendi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void Sil_Click(object sender, RoutedEventArgs e)
        {
            var yazarrr = db.Yazarlar.Find(Convert.ToInt32(txtYazarID.Text));
            db.Yazarlar.Remove(yazarrr);
            db.SaveChanges();
            MessageBox.Show("Yazar Başarıyla Silindi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
            Listele();
            Temizle();
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
                txtYazarID.Text = secilen["ID"].ToString();
                txtYazar.Text = secilen["YazarAd"].ToString();
                txtUlke.Text = secilen["Ulke"].ToString();
                rchBiyografi.Document.Blocks.Clear();
                rchBiyografi.Document.Blocks.Add(new Paragraph(new Run(secilen["Biyografi"].ToString())));


            }
        }
    }
}
