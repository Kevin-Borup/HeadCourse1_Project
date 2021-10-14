using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Registration : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Click(object sender, EventArgs e)
        {

            // Add insert customer method

            // Send Email confirmation

            Response.Redirect("Confirmation.aspx");
        }
    }
}