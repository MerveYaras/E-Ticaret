using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        kaynakDataContext k = new kaynakDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                foreach (Kategori i in k.Kategoris)
                {
                    string link = " <li><a href='KategoriGoster.aspx?KatId=" + i.Id + "'>" + i.KatAdi + "</a></li>";
                    htmlkat.InnerHtml += link;
                }
                DataList1.DataSource = k.Uruns.Where(p => p.IndirimliMi == true).OrderByDescending(p => p.urunKod).Take(6);
                DataList1.DataBind();
                DataList2.DataSource = k.Uruns.OrderByDescending(p => p.urunKod).Take(9);
                DataList2.DataBind();
                userinfo.Visible = false;
            }
           

            if (Convert.ToBoolean(Session["oturum"]) == true)
            {
                sepetsayi.InnerText = k.tblSepets.Where(p => p.kullaniciKod.ToString() == Session["kkod"]).Count().ToString();
                kadi.InnerText = Session["kadi"].ToString();
                userinfo.Visible = true;
                uyegiris.Visible = false;
            }

            if (Request.QueryString["UrunKod"] != null)
            {
                if (Session["kkod"] != null)
                {
                    tblSepet s = new tblSepet();
                    s.kullaniciKod = Convert.ToInt32(Session["kkod"]);
                    s.urunKod = Convert.ToInt32(Request.QueryString["UrunKod"]);
                    s.adet = 1;
                    k.tblSepets.InsertOnSubmit(s);
                    k.SubmitChanges();
                    Response.Redirect("Anasayfa.aspx");

                }
                else
                {
                    Uyari.Show("Önce Oturum Açınız");
                    Response.Redirect("Anasayfa.aspx");
                }
            }
          
        }

        protected void button_Click(object sender, EventArgs e)
        {
          tblKullanici ku=  k.tblKullanicis.Where(p=>p.email==email.Value & password.Value==p.sifre).FirstOrDefault();
            if (ku!=null)
            {
                Session["oturum"] = true;
                Session["kkod"] = ku.kullaniciKod;
                Session["kadi"] = ku.adsoyad;

                kadi.InnerText = ku.adsoyad;
                sepetsayi.InnerText = k.tblSepets.Where(p => p.kullaniciKod == ku.kullaniciKod).Count().ToString();
                userinfo.Visible = true;
                uyegiris.Visible = false;
            }
            else
            {
                durum.InnerText = "Hatalı Kullanıcı veya Şifre";
                Session["oturum"] = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["oturum"] = false;
            uyegiris.Visible = true;
            Response.Redirect("Anasayfa.aspx");
           
        }
    }
}