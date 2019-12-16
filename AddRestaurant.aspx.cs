using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Foodies
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {
            txtRestaurateurId.Text = Session["s1"].ToString();
        }

        string abc = "";
        protected void btAdd_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string s = "";
                s = Path.GetFileName(FileUpload1.FileName);
                string ext = "";

                ext = Path.GetExtension(FileUpload1.FileName).ToLower();
                if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/RestaurantImages/") + s);
                    abc = "~/RestaurantImages/" + s;
                }

                else
                {
                    lblMsg.Text = "Only jpg, jpeg, png, bmp images are allowed";
                }

            }
            else
            {
                lblMsg.Text = "Please Select a image";
            }
            Image2.ImageUrl = abc;

            con.Open();
            string t = txtRestaurateurId.Text;
            int uid=0;
            SqlCommand cmd = new SqlCommand("select UId from UserDetails where UName='" + t + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read() == true)
            {
                uid = Convert.ToInt32(dr[0]);
                
            }
            dr.Close();
            
            SqlCommand cmd2 = new SqlCommand("Insert into Restaurants(UId, Name,RImage, Location, City) values('"+uid+"', '"+ txtName.Text+"','"+abc+"', '"+txtLocation.Text +"', '"+txtCity.Text+"' )", con);
            cmd2.ExecuteNonQuery();

        }
    }
}