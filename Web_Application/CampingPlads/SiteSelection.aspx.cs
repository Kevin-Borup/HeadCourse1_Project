using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class SiteSelection : System.Web.UI.Page
    {
        cs.ProcessHandler processHandler = new cs.ProcessHandler();
        public DateTime StartDate
        {
            get
            {
                object date = Session["StartDate"];
                return (date == null) ? default : (DateTime)date;
            }
            set { Session["StartDate"] = value; }
        }

        public DateTime EndDate
        {
            get
            {
                object date = Session["EndDate"];
                return (date == null) ? default : (DateTime)date;
            }
            set { Session["EndDate"] = value; }
        }

        public int SiteNr
        {
            get 
            {
                object nr = Session["SiteNr"];
                return (nr == null) ? default : (int)nr;
            }
            set { Session["SiteNr"] = value; }
        }

        public string SiteType
        {
            get
            {
                object nr = Session["SiteType"];
                return (nr == null) ? default : (string)nr;
            }
            set { Session["SiteType"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            startDate.Text = StartDate.Date.ToString("d");
            endDate.Text = EndDate.Date.ToString("d");

            CabinAList.DataSource = processHandler.GetAvailableCabins("A");
            CabinBList.DataSource = processHandler.GetAvailableCabins("B");
            CampBigList.DataSource = processHandler.GetAvailableCampsites("CampBig");
            CampSmallList.DataSource = processHandler.GetAvailableCampsites("CampSmall");
            TentList.DataSource = processHandler.GetAvailableCampsites("Tent");

            CabinAList.DataBind();
            CabinBList.DataBind();
            CampBigList.DataBind();
            CampSmallList.DataBind();
            TentList.DataBind();
        }

        protected void CabinA_Click(object sender, EventArgs e)
        {
            SiteType = "CabinA";
            SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (SiteType != null && SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CabinB_Click(object sender, EventArgs e)
        {
            SiteType = "CabinB";
            SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (SiteType != null && SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampBig_Click(object sender, EventArgs e)
        {
            SiteType = "CampBig";
            SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (SiteType != null && SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampSmall_Click(object sender, EventArgs e)
        {
            SiteType = "CampSmall";
            SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (SiteType != null && SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void Tent_Click(object sender, EventArgs e)
        {
            SiteType = "Tent";
            SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (SiteType != null && SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }
    }
}