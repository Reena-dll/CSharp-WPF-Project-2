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
    /// Interaction logic for SayfaKitaplar.xaml
    /// </summary>
    public partial class SayfaKitaplar : Window
    {
        public SayfaKitaplar()
        {
            InitializeComponent();
        }



        public string Mail;

        LibraryEntities db = new LibraryEntities();

        void Temizle()
        {
            txtKitapAd.Text = "";
            txtKitapID.Text = "";
            txtSayfaSayisi.Text = "";
            txtYayinEvi.Text = "";
            rchHakkinda.Document.Blocks.Clear();
            cmbTur.Text = "";
            cmbYazar.Text = "";

        }

        void Turler()
        {

            var turler = (from x in db.KitapTur  // ENTITY
                          select new
                          {
                              x.KitapTur1,
                              x.ID,

                          }).ToList();
            cmbTur.DisplayMemberPath = "KitapTur1";
            cmbTur.SelectedValuePath = "ID";
            cmbTur.ItemsSource = turler;
        }

        void Yazarlarr()
        {
            var yazar = (from x in db.Yazarlar
                         select new
                         {
                             x.YazarAd,
                             x.ID
                         }).ToList();
            cmbYazar.DisplayMemberPath = "YazarAd";
            cmbYazar.SelectedValuePath = "ID";
            cmbYazar.ItemsSource = yazar;

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
            SqlDataAdapter da = new SqlDataAdapter("select Kitaplar.ID,KitapAd,YazarAd,KitapTur,SayfaSayisi,Hakkinda,Yayınevi  from kitaplar inner join Yazarlar on Kitaplar.Yazar = Yazarlar.ID inner join KitapTur on Kitaplar.Tur = KitapTur.ID ", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);
            datagrid1.ItemsSource = dt.DefaultView;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            AdminPanel();
            Turler();
            Yazarlarr();
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
                Kitaplar k = new Kitaplar();
                k.KitapAd = txtKitapAd.Text;
                k.SayfaSayisi = txtSayfaSayisi.Text;
                k.Yayınevi = txtYayinEvi.Text;
                k.Yazar = int.Parse(cmbYazar.SelectedValue.ToString());
                k.Tur = int.Parse(cmbTur.SelectedValue.ToString());
                k.Durum = true;
                string hakkinda = new TextRange(rchHakkinda.Document.ContentStart, rchHakkinda.Document.ContentEnd).Text;
                k.Hakkinda = hakkinda;
                db.Kitaplar.Add(k);
                db.SaveChanges();

            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Kitap Sisteme Kayıt Edildi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void Guncelle_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var Kitap = db.Kitaplar.Find(Convert.ToInt32(txtKitapID.Text));
                Kitap.KitapAd = txtKitapAd.Text;
                Kitap.SayfaSayisi = txtSayfaSayisi.Text;
                Kitap.Yayınevi = txtYayinEvi.Text;
                Kitap.Yazar = int.Parse(cmbYazar.SelectedValue.ToString());
                Kitap.Tur = int.Parse(cmbTur.SelectedValue.ToString());
                string Hakkinda = new TextRange(rchHakkinda.Document.ContentStart, rchHakkinda.Document.ContentEnd).Text;
                Kitap.Hakkinda = Hakkinda;
                db.SaveChanges();


            }
            catch (Exception)
            {
                MessageBox.Show("HATA !!!", "UYARI", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                MessageBox.Show("Kitap Başarıyla Güncellendi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
                Listele();
                Temizle();
            }
        }

        private void datagrid1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataGrid gd = (DataGrid)sender;
            DataRowView secilen = gd.SelectedItem as DataRowView;
            if (secilen != null)
            {
                txtKitapID.Text = secilen["ID"].ToString();
                txtKitapAd.Text = secilen["KitapAd"].ToString();
                txtSayfaSayisi.Text = secilen["SayfaSayisi"].ToString();
                cmbYazar.Text = secilen["YazarAd"].ToString();
                cmbTur.Text = secilen["KitapTur"].ToString();
                txtYayinEvi.Text = secilen["Yayınevi"].ToString();
                rchHakkinda.Document.Blocks.Clear();
                rchHakkinda.Document.Blocks.Add(new Paragraph(new Run(secilen["Hakkinda"].ToString())));
            }

        }

        private void Sil_Click(object sender, RoutedEventArgs e)
        {
            var kitapp = db.Yazarlar.Find(Convert.ToInt32(txtKitapID.Text));
            db.Yazarlar.Remove(kitapp);
            db.SaveChanges();
            MessageBox.Show("Kitap Başarıyla Silindi.", "Bilgi", MessageBoxButton.OK, MessageBoxImage.Information);
            Listele();
            Temizle();
        }

        private void Temizle_Click(object sender, RoutedEventArgs e)
        {
            Temizle();
        }
    }
}

