using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            //lblMsg.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}