using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace CampingPlads
{
    public partial class Reservation : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReservationCal.DayRender += ReservationCal_DayRender;
            }
        }

        private void ReservationCal_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date <= DateTime.Today.Date)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml(("#CCCCCC"));
            }
            else if (e.Day.Date == DateTime.Today.AddDays(1).Date)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml(("#D9D9D9"));
            }

            DateTime day1 = DateTime.Today.AddDays(10);
            DateTime day2 = day1.AddDays(7);

            if (e.Day.Date == day1.Date)
            {
                e.Cell.Style["background"] = "linear-gradient(to right, White, #333399, #333399)";
                
            }
        }

        protected void ReservationCal_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}