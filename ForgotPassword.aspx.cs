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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select SecurityQues from UserDetails where Username='" + txtUsername.Text + "' ", con);
            //SqlDataReader dr = cmd.ExecuteReader();

            
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select SecurityQues from UserDetails where Username='" + txtUsername.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read() == true)
            //{
            //    con.Close();
            //    con.Open();
            //    dr.Close();
            //    string ans = "";
            //    SqlCommand cmd2 = new SqlCommand("select SecurityAns from UserDetails where Username='" + txtUsername.Text + "' ", con);
            //    SqlDataReader dr1 = cmd.ExecuteReader();
            //    if (dr.Read() == true)
            //    {
            //        ans = dr[0].ToString();
            //        if (txtSecAns.Text.Equals(ans))
            //        {
            //            Response.Redirect("ResetPassword.aspx");
            //        }
            //        else
            //        {
            //            Label5.Text = "Not Correct Answer";
            //        }
            //    }

            //}
            if (dr.Read() == true)
            {
                txtSecQues.Text = dr[0].ToString();
            }
            else {
                Label5.Text = "wrong";
            }
            con.Close();
            dr.Close();
        }

        protected void txtSecAns_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            
            string ans = "";
            SqlCommand cmd2 = new SqlCommand("select SecurityAns from UserDetails where Username='" + txtUsername.Text + "' ", con);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            if (dr1.Read() == true)
            {
                ans = dr1[0].ToString();
                if (txtSecAns.Text.Equals(ans))
                {
                    Response.Redirect("ResetPassword.aspx");
                }
                else
                {
                    Label5.Text = "Not Correct Answer";
                }
            }
        }
    }
}