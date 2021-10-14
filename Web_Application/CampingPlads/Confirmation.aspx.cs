using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Confirmation : System.Web.UI.Page
    {
        cs.UserDataCollection userData = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            Greeting.Text = "Du må have dig en fantastisk dag, " + userData.FullName + ".";
        }
    }
}