using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Reservation : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReservationCal.TodaysDate = System.DateTime.Today.AddDays(1);
            }
            ReservationCal.DayRender += ReservationCal_DayRender;
        }

        private void ReservationCal_DayRender(object sender, DayRenderEventArgs e)
        {
            
        }

        protected void ReservationCal_SelectionChanged(object sender, EventArgs e)
        {
            
        }


    }
}