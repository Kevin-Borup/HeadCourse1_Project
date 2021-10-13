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
        cs.ProcessHandler processHandler = new cs.ProcessHandler(); 
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