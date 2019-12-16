using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Foodies
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string abc = "";
        protected void btAddDish_Click(object sender, EventArgs e)
        {
            
            if (fuDish.HasFile)
            {
                string s = "";
                s = Path.GetFileName(fuDish.FileName);
                string ext = "";
                
                ext = Path.GetExtension(fuDish.FileName).ToLower();
                if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
                {
                    fuDish.SaveAs(Server.MapPath("~/DishImages/") + s);
                    abc = "~/DishImages/" + s;
                }
                
                else
                {
                    lblMsg.Text="Only jpg, jpeg, png, bmp images are allowed";
                } 

            }
            else
            {
                lblMsg.Text = "Please Select a image";       
            }
            Image2.ImageUrl = abc;
            con.Open();
            string category = ddDishCategory.SelectedItem.Text;
            int dcid = 0;
            SqlCommand cmd = new SqlCommand("select DCId from DishCategory where CategoryName='" + category  + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read() == true)
            {
                dcid = Convert.ToInt32(dr[0]);

            }
            dr.Close();

            string restaurant = ddRestaurant.SelectedItem.Text;
            int rid = 0;
            SqlCommand cmd2 = new SqlCommand("select RId from Restaurants where Name='" + restaurant + "' ", con);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            while (dr1.Read() == true)
            {
                rid = Convert.ToInt32(dr1[0]);

            }
            dr1.Close();







            
            SqlCommand cmd3 = new SqlCommand("Insert into Dishes(DCId, RId, DishName, Price, DishImage) values('" + dcid + "', '"+rid+"', '"+txtDishName.Text+"','"+txtAmount.Text+"', '"+abc+"' )", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            lblMsg.Text = "Inserted Successfully";
        }
    
        }

    
}