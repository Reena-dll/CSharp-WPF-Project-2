//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfKutuphane
{
    using System;
    using System.Collections.Generic;
    
    public partial class Hareketler
    {
        public int ID { get; set; }
        public Nullable<int> Yonetici { get; set; }
        public Nullable<int> Kullanici { get; set; }
        public string Kitap { get; set; }
        public string AlisTarihi { get; set; }
        public string GeriVeris { get; set; }
        public Nullable<bool> Durum { get; set; }
    
        public virtual Kullanicilar Kullanicilar { get; set; }
        public virtual Kullanicilar Kullanicilar1 { get; set; }
    }
}
