using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        kaynakDataContext k = new kaynakDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["UKod"] != null)
            {
                string urunkod = Request.QueryString["UKod"].ToString();
              Urun u=  k.Uruns.Where(p => p.urunKod.ToString() == urunkod).FirstOrDefault();
              if (u!=null)
              {
                  Image1.ImageUrl = "~/urunresim/" + u.urunResim;
                  lblurunad.Text = u.urunAd;
                  lblmarka.Text = u.tblMarka.Marka;
                  lblteslimat.Text = u.teslimatSure.ToString();
                  lblucret.Text = ((double)u.listeFiyat).ToString("00.00")+" TL";
                  aciklamalar.InnerHtml = u.Detay;
                  lblozet.Text = u.urunOzet;
              }
            }
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["kkod"] != null)
            {
                tblSepet s = new tblSepet();
                s.kullaniciKod = Convert.ToInt32(Session["kkod"]);
                s.urunKod = Convert.ToInt32(Request.QueryString["UKod"]);
                s.adet = Convert.ToInt32(DropDownList1.Text);
                k.tblSepets.InsertOnSubmit(s);
                k.SubmitChanges();
                Uyari.Show("Sepete Ürün Eklendi");
            }
          
        }
    }
}