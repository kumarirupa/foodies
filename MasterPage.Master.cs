using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] == null)
            {
                lbLogOut.Visible = false;
            }
        }


        protected void lbAboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void lbContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void lbFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {

            Session["s1"] = null;
            Session["s2"] = null;
            Session["s3"] = null;
                Response.Redirect("LoginPage.aspx");
            
            
        }




    }
}