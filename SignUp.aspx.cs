using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Foodies
{
    
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                int n;
                Random rnd = new Random();
                n = rnd.Next(2,6);
                Session["s2"] = n;
                Label9.Text = n.ToString();
                SqlCommand cmd = new SqlCommand("Select * from Captcha where CId='"+n+"'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    imgCaptcha.ImageUrl = dr[1].ToString();
                }
                con.Close();

            }
        }

        protected void btSignUp_Click(object sender, EventArgs e)
        {
            
            String s = "";
            String t = "";
            if (RadioButton1.Checked == true)
            {
                t = "Customer";
            }
            if (RadioButton2.Checked == true)
            {
                t = "Restaurateur";
            }
            s = ddSecurityQues.SelectedItem.Text;   

            con.Open();
            string s1 = "";
            int n;
            n = Convert.ToInt32(Session["s2"].ToString());
            
            SqlCommand cmd1 = new SqlCommand("select * from captcha where CId='" + n + "'", con);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                s1 = dr[2].ToString();
                
            }
            con.Close();

            if (s1.Equals(txtCaptcha.Text))
             {
                 con.Open();
                 SqlCommand cmd3 = new SqlCommand("Insert into UserDetails(UName, UPassword, Type, EMail, ContactNo, SecurityQues, SecurityAns) values('" + txtUsername.Text + "', '" + txtPassword.Text + "', '"+ t +"', '"+ txtEmailId.Text + "','" + txtContactNo.Text + "', '" + s + "', '" + txtSecurityAns.Text + "' )", con);
                 cmd3.ExecuteNonQuery();
                 con.Close();
                 lblMsg.Text = "Registered Successfully";
                 txtUsername.Text = "";
                 txtPassword.Text = "";
                 txtCnfPassword.Text = "";
                 txtEmailId.Text = "";
                 txtContactNo.Text = "";
                 txtCaptcha.Text = "";
                 Response.Redirect("LoginPage.aspx");
             }
             else
             {
                 lblMsg.Text = "Wrong Captcha";
             }
        }
    }
}