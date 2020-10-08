using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        kaynakDataContext k = new kaynakDataContext();
        protected void AsyncFileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            AsyncFileUpload1.SaveAs(Server.MapPath("images/kategori/" + e.FileName));
            Session["resim"] = e.FileName;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Session["resim"]!=null)
            {
                Kategori r = new Kategori();
                r.Resim = Session["resim"].ToString();
                r.KategoriAdi = TextBox1.Text;
                k.Kategoris.InsertOnSubmit(r);
                k.SubmitChanges(); 
               
            }
           
        }
    }
}