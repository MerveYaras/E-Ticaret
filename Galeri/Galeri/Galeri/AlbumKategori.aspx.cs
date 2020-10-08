using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class AlbumKategori : System.Web.UI.Page
    {
        kaynakDataContext k = new kaynakDataContext();
     
        protected void Page_Load(object sender, EventArgs e)
        {
           
            int s = 0;
            string r2="";
            foreach (Kategori i in k.Kategoris)
            {
                s++;
                string r = "  <li><a href='#"+s+"'><img height='420' width='420' src='images/kategori/"+i.Resim+"' alt=''/></a><a href='Album.aspx?KatId="+i.Id+"'>"+i.KategoriAdi+"</a></li>";
                pg_photos.InnerHtml += r;
               string r1 = "<li><a href='#" + s + "'>Image " + s + "</a></li>";
               resim.InnerHtml += r1;

               r2 += "<li><img height='75' width='75'src='images/kategori/" + i.Resim + "' alt='Thumb " + s + "' /></li>";
               

            }

           
            string d = "<li class='ts_thumbnails'>" +
                       "<div class='ts_preview_wrapper'>" +
                           "<ul class='ts_preview' id='resim1' runat='server'>" +
                           r2+
                           "</ul>" +
                       "</div>" +
                       "<span></span></li>";
            resim.InnerHtml += d;
           
        }
    }
}