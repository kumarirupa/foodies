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
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("Insert into DishCategory(CategoryName) values('" + txtCategoryName.Text + "' )", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            lblMsg.Text = "Added Successfully";
        }
    }
}