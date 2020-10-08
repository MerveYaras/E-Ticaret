using System;
using System.Drawing;
using System.Drawing.Imaging;

namespace e_ticaret
{
    public partial class RetCapDifficult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap bmp = new Bitmap(120, 40);
            Graphics g = Graphics.FromImage(bmp);
            g.Clear(Color.Lavender);

            string randStr = RandomString(7);
            Session["capRand"] = randStr;

            g.DrawString(randStr, new Font(FontFamily.Families[1], 15, FontStyle.Bold),
                                                                   new SolidBrush(Color.Black), 5, 10);
            g.DrawLine(new Pen(Color.White, 1), 10, 10, 100, 100);
            g.DrawLine(new Pen(Color.White, 1), 100, 10, 50, 50);

            Random rdm = new Random();
            for (int i = 0; i < bmp.Width; i++)
            {
                for (int j = 0; j < bmp.Height; j++)
                {
                    if (rdm.Next(4) == 1)
                        bmp.SetPixel(i, j, Color.Black);
                }
            }

            bmp.Save(Response.OutputStream, ImageFormat.Png);
        }

        public string RandomString(int loop)
        {
            Random rdm = new Random();
            string deger = "";

            for (int i = 0; i < loop; i++)
            {
                deger += ((char)rdm.Next('A', 'Z')).ToString();
            }

            return deger;
        }

    }
}