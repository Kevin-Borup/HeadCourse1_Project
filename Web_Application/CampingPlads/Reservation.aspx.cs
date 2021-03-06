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
        readonly cs.UserDataCollection userDate = new cs.UserDataCollection();

        private readonly string colorHeaderText = "#3D5901";
        private readonly string colorPastDays = "#CCCCCC";
        private readonly string colorCurrentDay = "#D9D9D9";
        private readonly string colorPickedDates = "#3D5901";
        private readonly string colorPeriodText = "#FFFFFF";


        protected void Page_Load(object sender, EventArgs e)
        {
            StartStyler();
            if (!IsPostBack)
            {
                ReserveCalEnd.VisibleDate = DateTime.Today.AddMonths(1);
            }
            ReserveCalStart.DayRender += ReserveCal_DayRender;
            ReserveCalEnd.DayRender += ReserveCal_DayRender;

            ReserveCalStart.VisibleMonthChanged += new MonthChangedEventHandler(this.StartMonthChange);
            ReserveCalEnd.VisibleMonthChanged += new MonthChangedEventHandler(this.EndMonthChange);
        }

        private void StartStyler()
        {
            ReserveCalStart.TitleStyle.ForeColor = ColorTranslator.FromHtml(colorHeaderText);
            ReserveCalEnd.TitleStyle.ForeColor = ColorTranslator.FromHtml(colorHeaderText);
            ReserveCalStart.SelectedDayStyle.BackColor = ColorTranslator.FromHtml(colorPickedDates);
            ReserveCalEnd.SelectedDayStyle.BackColor = ColorTranslator.FromHtml(colorPickedDates);
        }

        private void ReserveCal_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Today)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml(colorPastDays);
                e.Cell.Enabled = false;
            }
            else if (e.Day.Date == DateTime.Today.Date)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml(colorCurrentDay);
                e.Cell.Enabled = false;
            }

            if (userDate.StartDate != default)
            {
                if (e.Day.Date == userDate.StartDate.Date)
                {
                    e.Cell.Style["background"] = $"linear-gradient(to right, White, {colorPickedDates}, {colorPickedDates}, {colorPickedDates})";
                    e.Cell.ForeColor = ColorTranslator.FromHtml(colorPeriodText);

                }
                else if (userDate.EndDate != default)
                {
                    if (userDate.StartDate.Date < e.Day.Date && e.Day.Date < userDate.EndDate.Date)
                    {

                        e.Cell.BackColor = ColorTranslator.FromHtml(colorPickedDates);
                        e.Cell.ForeColor = ColorTranslator.FromHtml(colorPeriodText);
                    }
                    else if (e.Day.Date == userDate.EndDate.Date)
                    {
                        e.Cell.Style["background"] = $"linear-gradient(to left, White, {colorPickedDates}, {colorPickedDates}, {colorPickedDates})";
                        e.Cell.ForeColor = ColorTranslator.FromHtml(colorPeriodText);
                    }
                }
            }
        }

        protected void ReserveCalStart_SelectionChanged(object sender, EventArgs e)
        {
            userDate.StartDate = ReserveCalStart.SelectedDate;
        }

        protected void ReserveCalEnd_SelectionChanged(object sender, EventArgs e)
        {
            userDate.EndDate = ReserveCalEnd.SelectedDate;
        }

        protected void StartMonthChange(Object sender, MonthChangedEventArgs e)
        {
            if (e.NewDate > e.PreviousDate && e.NewDate > ReserveCalEnd.VisibleDate)
            {
                ReserveCalEnd.VisibleDate = ReserveCalStart.VisibleDate;

            }
        }

        protected void EndMonthChange(Object sender, MonthChangedEventArgs e)
        {
            if (e.NewDate < e.PreviousDate && e.NewDate < ReserveCalStart.VisibleDate)
            {
                ReserveCalStart.VisibleDate = ReserveCalEnd.VisibleDate;

            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (userDate.StartDate != default && userDate.EndDate != default)
            {
                Response.Redirect("SiteSelection.aspx");
            }
        }
    }
}