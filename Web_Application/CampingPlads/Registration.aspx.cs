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
        readonly cs.ProcessHandler processHandler = new cs.ProcessHandler();
        readonly cs.UserDataCollection userData = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            userData.FullName = firstName.Text + " " + lastName.Text;

            bool bedLining = (userData.AddonDetails[1] == 1);
            bool cleaning = (userData.AddonDetails[2] == 1);

            int? cabinNr = null;
            int? campsiteNr = null;

            if (userData.SiteType.Contains("Cabin"))
            {
                cabinNr = userData.SiteNr;
            } else
            {
                campsiteNr = userData.SiteNr;
            }

            int[] custNr_reserveId = processHandler.InsertCustomerReservation(
                    firstName.Text, lastName.Text, email.Text, phoneNr.Text, Convert.ToDateTime(birthDate.Text),
                    streetName.Text, Convert.ToInt32(buildingNr.Text), city.Text, Convert.ToInt32(postalCode.Text),
                    userData.StartDate, userData.EndDate, userData.AddonDetails[0], userData.AddonDetails[1], userData.SiteType,
                    userData.AddonDetails[2], bedLining, cleaning, userData.AddonDetails[5], userData.AddonDetails[6], userData.AddonDetails[7], cabinNr, campsiteNr, userData.SeasonName);

            string emailBody = $@"


        Hej {userData.FullName},

        Dit kundenummer er {custNr_reserveId[0]}.

        Reservation-id: {custNr_reserveId[1]}.
        Her er din bestillings bekræftigelse til reservationen af {userData.SiteNr} til {userData.SiteType}.
        Vi håber du får en fantastisk oplevelse :)

        Denne mail besvares ikke.";

            processHandler.SendConfirmEmail(email.Text, userData.FullName, emailBody);

            Response.Redirect("Confirmation.aspx");
        }
    }
}