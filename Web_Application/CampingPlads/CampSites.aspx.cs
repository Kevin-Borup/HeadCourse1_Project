using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class CampSites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdatePrices();
        }

        void UpdatePrices()
        {
            // To be updates from Database for live coverage and reduced future maintenance.
            CampBigLSeason.Text = "65,- kr.";
            CampBigHSeason.Text = "80,- kr.";
            CampSmallLSeason.Text = "50,- kr.";
            CampSmallHSeason.Text = "60,- kr.";
            TentLSeason.Text = "45,- kr.";
            TentHSeason.Text = "35,- kr.";
        }
    }
}