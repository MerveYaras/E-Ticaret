using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_ticaret
{
    public partial class UyeOzel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kadi"]==null | Session["kkod"]==null)
            {
                Response.Redirect("../Anasayfa.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["kadi"]=null ;Session["kid"]=null;
            Response.Redirect("../Anasayfa.aspx");
        }
    }
}