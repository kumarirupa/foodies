using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbForgotPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword1.aspx");
        }



        protected void btLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            string t="";
            
            if (RadioButton1.Checked == true)
            {
                t = RadioButton1.Text;
            }
            if (RadioButton2.Checked == true)
            {
                t = RadioButton2.Text;
            }
            if (RadioButton3.Checked == true)
            {
                t = RadioButton3.Text;
            }

            SqlCommand cmd = new SqlCommand("select * from UserDetails where Type='" + t + "' AND UName='" + txtUsername.Text + "' AND UPassword ='" + txtPassword.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read() == true)
            {
                //Session["s1"] = "1";
                Session["s1"] = txtUsername.Text;
                if (RadioButton1.Checked == true)
                {
                    Response.Redirect("AfterCustomerLogin.aspx");
                }
                if (RadioButton2.Checked == true)
                {
                   Response.Redirect("AfterRestaurateurLogin.aspx");
                    Response.Redirect("AddRestaurant.aspx");
                }
                if (RadioButton3.Checked == true)
                {
                    Response.Redirect("AfterAdminLogin.aspx");
                }
                
                


            }
            if (dr.Read() == false)
            {
                lblMsg.Text = "Invalid user name and password!";
            }
        }
    }
}