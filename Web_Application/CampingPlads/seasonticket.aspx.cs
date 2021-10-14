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
        readonly cs.ProcessHandler processHandler = new cs.ProcessHandler();
        readonly cs.UserDataCollection userData = new cs.UserDataCollection();
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdatePrices();
        }

        void UpdatePrices()
        {
            string[] prices = processHandler.GetSeasonPrices();

            SpringLabel.Text = $"{prices[1]},- kr";
            SummerLabel.Text = $"{prices[2]},- kr" ;
            FallLabel.Text = $"{prices[0]},- kr" ;
            WinterLabel.Text = $"{prices[3]},- kr" ;
        }
        
        protected void SpringButton_Click(object sender, EventArgs e)
        {
            userData.SeasonName = "SpringTicket";
            userData.SeasonPrice = processHandler.GetSeasonSpecificPrice("SpringTicket");

            int seasonYear = DateTime.Today.Year;
            if (DateTime.Today.Month > 4)
            {
                seasonYear++;
            }

            // 01/04 - 30/06
            userData.StartDate = DateTime.Parse($"April, 1, {seasonYear}");
            userData.EndDate = DateTime.Parse($"June, 30, {seasonYear}");
            Response.Redirect("SiteSelection.aspx");
        }

        protected void SummerButton_Click(object sender, EventArgs e)
        {
            userData.SeasonName = "SummerTicket";
            userData.SeasonPrice = processHandler.GetSeasonSpecificPrice("SummerTicket");

            int seasonYear = DateTime.Today.Year;
            if (DateTime.Today.Month > 7)
            {
                seasonYear++;
            }

            // 01/07 - 14/08
            userData.StartDate = DateTime.Parse($"July, 1, {seasonYear}");
            userData.EndDate = DateTime.Parse($"August, 14, {seasonYear}");
            Response.Redirect("SiteSelection.aspx");
        }
        protected void FallButton_Click(object sender, EventArgs e)
        {
            userData.SeasonName = "FallTicket";
            userData.SeasonPrice = processHandler.GetSeasonSpecificPrice("FallTicket");

            int seasonYear = DateTime.Today.Year;
            if (DateTime.Today.Month > 8)
            {
                seasonYear++;
            }

            // 15/08 - 31/10
            userData.StartDate = DateTime.Parse($"August, 15, {seasonYear}");
            userData.EndDate = DateTime.Parse($"October, 31, {seasonYear}");
            Response.Redirect("SiteSelection.aspx");
        }

        protected void WinterButton_Click(object sender, EventArgs e)
        {
            userData.SeasonName = "WinterTicket";
            userData.SeasonPrice = processHandler.GetSeasonSpecificPrice("WinterTicket");

            int seasonYear = DateTime.Today.Year;
            if (DateTime.Today.Month > 11)
            {
                seasonYear++;
            }

            // 01/11 - 31/03
            userData.StartDate = DateTime.Parse($"November, 1, {seasonYear}");
            userData.EndDate = DateTime.Parse($"March, 31, {seasonYear}");
            Response.Redirect("SiteSelection.aspx");
        }
    }
}