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
        cs.ProcessHandler processHandler = new cs.ProcessHandler(); 
        //String Setup
         //   01234567
         //   adult, child, dog, bedding, cleaning, bikes, adultWater, childWater
        public string UserInputData
        {
            get
            {
                object amount = ViewState["UserInputData"];
                return (amount == null) ? default : (string)amount;
            }
            set { ViewState["UserInputData"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int[] numbers = new int[10] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            AdultList.DataSource = new int[9] { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            ChildList.DataSource = numbers;
            DogList.DataSource = numbers;

            AdultList.DataBind();
            ChildList.DataBind();
            DogList.DataBind();

            //SitePrice.Text = SitePrice;
        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            StringBuilder userString = new StringBuilder("10000000");

            // Adults
            userString[0] = Request["AdultAmount"].ToCharArray()[0];
            // Children
            userString[1] = Request["ChildAmount"].ToCharArray()[0];
            // Dogs
            userString[2] = Request["DogAmount"].ToCharArray()[0];
            // Bedding
            if (Cleaning.Checked) { userString[3] = '1'; }
            // Cleaning
            if (Cleaning.Checked) { userString[4] = '1'; }
            // Bikes
            userString[5] = Request["BikeAmount"].ToCharArray()[0];
            // AdultWater
            userString[6] = Request["AWAmount"].ToCharArray()[0];
            // ChildWater
            userString[7] = Request["CWAmount"].ToCharArray()[0];

            // Saving Form Data
            UserInputData = userString.ToString();
            int sitePrice = Convert.ToInt32(SitePrice.Text);
            int personPrice = processHandler.PersonPrice(UserInputData);
            int detailPrice = processHandler.DetailPrice(UserInputData);

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