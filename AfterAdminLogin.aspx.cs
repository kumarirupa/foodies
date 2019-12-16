using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDishes.aspx");
        }

        protected void btViewDishes_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDishes.aspx");
        }

        protected void btViewUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUsers.aspx");
        }

        protected void btViewRestaurants_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRestaurants.aspx");
        }

        protected void btDeleteUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateUser.aspx");
        }

        protected void btDeleteRestaurant_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateRestaurant.aspx");
        }

    }
}