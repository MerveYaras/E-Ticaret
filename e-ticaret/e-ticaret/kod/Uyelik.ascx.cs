using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class Uyelik : System.Web.UI.UserControl
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            kaynakDataContext k = new kaynakDataContext();

            if (Page.IsPostBack!=true)
            {
                tblKullanici u = k.tblKullanicis.Where(p => p.kullaniciKod.ToString() == Session["kid"]).FirstOrDefault();

                if (u != null)
                {
                    if ((bool)u.Cinsiyet)
                    {
                        bay.Checked = true;
                    }
                    else
                    {
                        bayan.Checked = true;
                    }
                    sehir.SelectedIndex = sehir.Items.IndexOf(new ListItem(u.sehir));

                    txtadi.Text = u.adsoyad;
                    txtadres.Text = u.adres1;
                   
                    txteposta.Text = u.email;
                    txttelefon.Text = u.tel;
                    txttelefon0.Text = u.Dtarih.ToString();

                }
                else
                {
                    Response.Redirect("../Anasayfa.aspx");
                } 
            }
        }

     

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (sozlesme.Checked)
            {
                if (txtguvenlik.Text == Session["capRand"].ToString())
                {
                    try
                    {
                        kaynakDataContext k = new kaynakDataContext();
                     
                            tblKullanici u = k.tblKullanicis.Where(p => p.kullaniciKod.ToString() == Session["kid"]).FirstOrDefault();
                          
                             u.adsoyad = txtadi.Text+" "+txtsoyad;
                            
                         
                            u.tel = txttelefon.Text;
                            u.sonGirisTarih = DateTime.Now;
                            u.sehir = sehir.SelectedItem.ToString();

                            u.Dtarih = txttelefon0.Text;
                            if (bay.Checked)

                            {
                                u.Cinsiyet = true;
                            }
                            else
                            {
                                u.Cinsiyet = false;

                            }
                          
                            k.SubmitChanges();
                            txtadi.Text = "";
                            txteposta.Text = "";
                            txtsoyad.Text = "";
                            txttelefon.Text = "";
                            txtadres.Text = "";
                            txtguvenlik.Text = "";
                            txttelefon0.Text = "";
                           
                            sehir.SelectedIndex = 0;

                            durum.InnerHtml = "<a style='color:red;font-size:12px'>!! Bilgileriniz Güncellendi... . !!</a>";


                      
                    }
                    catch (Exception)
                    {
                        durum.InnerHtml = "<a style='color:red;font-size:12px'>!! Hata Oluştu !!</a>";



                    }

                }
                else
                {
                    durum.InnerHtml = "<a style='color:red;font-size:12px'>!! Güvenlik Kodunu yanlış girdiniz. !!</a>";



                }
            }
            else
            {
                durum.InnerHtml = "<a style='color:red;font-size:12px'>!! Bilgilerinin Doğrununu Onaylayınız.. !!</a>";
            }
        }
    }
}