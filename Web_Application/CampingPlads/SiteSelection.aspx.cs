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
        readonly cs.ProcessHandler processHandler = new cs.ProcessHandler();
        readonly cs.UserDataCollection userData = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            startDate.Text = userData.StartDate.Date.ToString("d");
            endDate.Text = userData.EndDate.Date.ToString("d");

            if (userData.SeasonName == null)
            {

                CabinAList.DataSource = processHandler.GetAvailableSites("CabinA", userData.StartDate, userData.EndDate);
                CabinBList.DataSource = processHandler.GetAvailableSites("CabinB", userData.StartDate, userData.EndDate);

                CabinAList.DataBind();
                CabinBList.DataBind();
            }
            else
            {
                cabinSection.Visible = false;
            }

            CampBigList.DataSource = processHandler.GetAvailableSites("CampBig", userData.StartDate, userData.EndDate);
            CampSmallList.DataSource = processHandler.GetAvailableSites("CampSmall", userData.StartDate, userData.EndDate);
            TentList.DataSource = processHandler.GetAvailableSites("Tent", userData.StartDate, userData.EndDate);

            CampBigList.DataBind();
            CampSmallList.DataBind();
            TentList.DataBind();
        }

        protected void CabinA_Click(object sender, EventArgs e)
        {
            userData.SiteType = "CabinA";
            userData.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userData.SiteType != null && userData.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CabinB_Click(object sender, EventArgs e)
        {
            userData.SiteType = "CabinB";
            userData.SiteNr = Convert.ToInt32(CabinBList.SelectedValue);

            if (userData.SiteType != null && userData.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampBig_Click(object sender, EventArgs e)
        {
            userData.SiteType = "CampBig";
            userData.SiteNr = Convert.ToInt32(CampBigList.SelectedValue);

            if (userData.SiteType != null && userData.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampSmall_Click(object sender, EventArgs e)
        {
            userData.SiteType = "CampSmall";
            userData.SiteNr = Convert.ToInt32(CampSmallList.SelectedValue);

            if (userData.SiteType != null && userData.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void Tent_Click(object sender, EventArgs e)
        {
            userData.SiteType = "Tent";
            userData.SiteNr = Convert.ToInt32(TentList.SelectedValue);

            if (userData.SiteType != null && userData.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }
    }
}