using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddRestaurant.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDishCategory.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDishes.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDishes.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRestaurants.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDishCategory.aspx");
        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDishCategory.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateDishes.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateRestaurant.aspx");
        }


    }
}