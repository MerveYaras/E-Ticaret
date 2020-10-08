using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class KategoriGoster : System.Web.UI.Page
    {
        kaynakDataContext k = new kaynakDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["KatId"]!=null)
            {
              var urun=  k.Uruns.Where(p => p.KatId.ToString() == Request.QueryString["KatId"]);
              DataList1.DataSource = urun;
              DataList1.DataBind();
            }
            
        }
    }
}