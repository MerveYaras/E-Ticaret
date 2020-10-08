using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class OdemeYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ucret"]==null)
            {
                Response.Redirect("Sepetim.aspx");
            }
            else
            {
                Kartisim0.Value = Session["ucret"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (onay.Checked)
            {
                tblSipari s = new tblSipari();
                s.kullaniciKod = Convert.ToInt32(Session["kid"]);
                s.siparisTarih = DateTime.Now;
                s.Onay = false;
                s.ToplamTutar = Convert.ToDouble(Session["ucret"]);
                kaynakDataContext k = new kaynakDataContext();
                k.tblSiparis.InsertOnSubmit(s);
                k.SubmitChanges();

                int faturakod = k.tblSiparis.OrderByDescending(p => p.faturaKod).Take(1).FirstOrDefault().faturaKod;
                var sepet = k.tblSepets.Where(a => a.kullaniciKod.ToString() == Session["kid"]);

                foreach (tblSepet item in sepet)
                {
                    tblSiparisDetay sd = new tblSiparisDetay();
                    sd.urunKod = item.urunKod;
                    sd.adet = (short)item.adet;
                    sd.fiyat = (item.adet * item.Urun.listeFiyat * 1.18);
                    sd.faturaKod = faturakod;
                    k.tblSiparisDetays.InsertOnSubmit(sd);
                    k.SubmitChanges();
                }

                Uyari.Show("Ödemeniz Alındı.."); 
            }
            else
            {
                Uyari.Show("Onay Veriniz.."); 

            }

        }
    }
}