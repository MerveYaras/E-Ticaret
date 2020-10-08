using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class Deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 10; i++)
            {
			pg_photos.InnerHtml+="<li><a href='#"+i+"'><img src='images/"+i+".jpg' alt='Here comes a description'/></a></li>";
              }
        }
    }
}