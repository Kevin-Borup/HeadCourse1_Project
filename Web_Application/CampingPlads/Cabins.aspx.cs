using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Cabins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdatePrices();
        }

        void UpdatePrices()
        {
            // To be updates from Database for live coverage and reduced future maintenance.
            
            CabinALSeason.Text = "600,- kr.";
            CabinAHSeason.Text = "850,- kr.";
            CabinBLSeason.Text = "350,- kr.";
            CabinBHSeason.Text = "500,- kr.";
        }
    }
}