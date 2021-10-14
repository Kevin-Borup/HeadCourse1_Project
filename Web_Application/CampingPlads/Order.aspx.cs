using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Order : System.Web.UI.Page
    {
        readonly cs.ProcessHandler processHandler = new cs.ProcessHandler();
        readonly cs.UserDataCollection userData = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            SiteTypeLabel.Text = userData.SiteType;
            SiteNrLabel.Text = userData.SiteNr.ToString();
            BikeAmount.Text = "0";
            AWAmount.Text = "0";
            CWAmount.Text = "0";


            int[] numbers = new int[10] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            AdultList.DataSource = new int[9] { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            ChildList.DataSource = numbers;
            DogList.DataSource = numbers;

            AdultList.DataBind();
            ChildList.DataBind();
            DogList.DataBind();

            if (userData.SeasonName == null)
            {
                SitePrice.Text = processHandler.SitePrice(userData.SiteType, userData.StartDate, userData.EndDate).ToString();
            }
            else
            {
                SitePrice.Text = userData.SeasonPrice.ToString();
            }
            
        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            StringBuilder userString = new StringBuilder("10000000");

            // Persons
            // Adults
            userString[0] = Convert.ToChar(AdultList.SelectedValue);
            // Children
            userString[1] = Convert.ToChar(ChildList.SelectedValue);
            // Dogs
            userString[2] = Convert.ToChar(DogList.SelectedValue);
            // Bedding
            if (Cleaning.Checked) { userString[3] = '1'; }
            // Cleaning
            if (Cleaning.Checked) { userString[4] = '1'; }
            // Bikes
            userString[5] = Convert.ToChar(BikeAmount.Text);
            // AdultWater
            userString[6] = Convert.ToChar(AWAmount.Text);
            // ChildWater
            userString[7] = Convert.ToChar(CWAmount.Text);

            // Saving Form Data
            userData.AddonDetails = userString.ToString();
            int sitePrice = Convert.ToInt32(SitePrice.Text);
            int personPrice;
            if (userData.SeasonName == null)
            {
                personPrice = processHandler.PersonPrice(userData.AddonDetails.Substring(0, 2), userData.StartDate, userData.EndDate);

            }
            else
            {
                personPrice = userData.SeasonPrice;
            }

            int detailPrice = processHandler.DetailPrice(userData.AddonDetails.Substring(2, 6));

            PersonPrice.Text = personPrice.ToString();
            DetailPrice.Text =  detailPrice.ToString();
            FullPrice.Text = processHandler.FullPrice(sitePrice, personPrice, detailPrice) + ",- kr.";
        }

        //PriceTable


        protected void ConfirmForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}