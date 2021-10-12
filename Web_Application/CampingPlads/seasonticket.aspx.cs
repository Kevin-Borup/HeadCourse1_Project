using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class SeasonTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdatePrices();
        }

        void UpdatePrices()
        {
            string[] prices = cs.FrontChannel.GetSeasonPrices();
            // To be updates from Database for live coverage and reduced future maintenance.
            SpringLabel.Text = "error";
            SummerLabel.Text = "error";
            FallLabel.Text = "error";
            WinterLabel.Text = "error";

            SpringLabel.Text = prices[1];
            SummerLabel.Text = prices[2];
            FallLabel.Text = prices[0];
            WinterLabel.Text = prices[3];
        }

        protected void FallButton_Click(object sender, EventArgs e)
        {

        }

        protected void SummerButton_Click(object sender, EventArgs e)
        {

        }
        protected void SpringButton_Click(object sender, EventArgs e)
        {

        }

        protected void WinterButton_Click(object sender, EventArgs e)
        {

        }
    }
}