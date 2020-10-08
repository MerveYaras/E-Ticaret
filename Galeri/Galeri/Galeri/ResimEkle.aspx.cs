using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class ResimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        kaynakDataContext k = new kaynakDataContext();
        protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
        {
            if (!Directory.Exists(Server.MapPath("images/"+DropDownList1.SelectedValue)))
            {
                 Directory.CreateDirectory(Server.MapPath("images/"+DropDownList1.SelectedValue));
            }
            AjaxFileUpload1.SaveAs(Server.MapPath("images/" +DropDownList1.SelectedValue+"/" +e.FileName));
            ResimGaleri r = new ResimGaleri();
            r.Resim = e.FileName;
            r.KatId = Convert.ToInt32(DropDownList1.SelectedValue);
            k.ResimGaleris.InsertOnSubmit(r);
            k.SubmitChanges();
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}