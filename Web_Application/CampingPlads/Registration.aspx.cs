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
        cs.ProcessHandler processHandler = new cs.ProcessHandler();
        cs.UserDataCollection userData = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            userData.FullName = firstName.Text + " " + lastName.Text;


            // Add insert customer method
            //processHandler.InsertCustomerReservation();

            string emailBody = $@"


        Hej {userData.FullName},

        Her er din bestillings bekræftigelse til reservationen af {userData.SiteNr} til {userData.SiteType}.
        Vi håber du får en fantastisk oplevelse :)

        Denne mail besvares ikke.";

            processHandler.SendConfirmEmail(email.Text, userData.FullName, emailBody);

            Response.Redirect("Confirmation.aspx");
        }
    }
}