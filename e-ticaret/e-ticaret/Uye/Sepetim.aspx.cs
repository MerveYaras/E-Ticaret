using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class Sepetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack!=true)
            {
                doldur();
            }
     
        }
        void doldur()
        {

            kaynakDataContext k = new kaynakDataContext();

            var sepet = from a in k.tblSepets
                        where a.kullaniciKod.ToString() == Session["kkod"]
                        select new
                        {
                            UrunKod = a
                                .Urun.urunKod,
                            Adet = a.adet,
                            UrunAd = a.Urun.urunAd,
                            Fiyat =a.Urun.listeFiyat
                        };
            GridView1.DataSource = sepet;
            GridView1.DataBind();
            double top = 0;
            if (GridView1.Rows.Count==0)
            {
                lblurunyok.Visible = true;
                Label2.Text =  "0 TL";
                Label3.Text = "0 TL";
                Label4.Text =  "0 TL";
                Session["ucret"] = 0;
            }
            else
            {
                try
                {
                    lblurunyok.Visible = false;

                    foreach (tblSepet item in k.tblSepets.Where(p => p.kullaniciKod.ToString() == Session["kkod"]))
                    {
                        top += ((double)item.adet * ((double)item.Urun.listeFiyat));
                    }
                   
                    Label2.Text = top.ToString("00.00") + " TL";
                    Label3.Text = (top * 0.18).ToString("00.00") + " TL";
                    Label4.Text = (top * 1.18).ToString("00.00") + " TL";
                    Session["ucret"] = (top * 1.18).ToString("00.00");
                }
                catch (Exception)
                {
                     
                   
                }


            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string urunkod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            TextBox adet = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Textbox1");
            kaynakDataContext k = new kaynakDataContext();
            tblSepet s = k.tblSepets.Where(p => p.kullaniciKod.ToString() == Session["kkod"] & p.urunKod.ToString() == urunkod).FirstOrDefault();
       s.adet = Convert.ToInt32(adet.Text);
       k.SubmitChanges();
       doldur();
       GridView1.EditIndex = -1;
       GridView1.DataBind(); 
       Uyari.Show("Güncellendi");


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            GridView1.DataBind();

            doldur();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            GridView1.DataBind();

            doldur();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string urunkod = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            kaynakDataContext k = new kaynakDataContext();
            tblSepet s = k.tblSepets.Where(p => p.kullaniciKod.ToString() == Session["kkod"] & p.urunKod.ToString() == urunkod).FirstOrDefault();
            k.tblSepets.DeleteOnSubmit(s);
            k.SubmitChanges();
            Uyari.Show("Güncellendi");
            doldur();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ( Session["ucret"] !=null)
	        {
             Response.Redirect("OdemeYap.aspx");

	        }
        }
    }
}