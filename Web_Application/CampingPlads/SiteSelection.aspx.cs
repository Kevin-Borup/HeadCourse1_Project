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
        cs.UserDataCollection userDate = new cs.UserDataCollection();

        protected void Page_Load(object sender, EventArgs e)
        {
            startDate.Text = userDate.StartDate.Date.ToString("d");
            endDate.Text = userDate.EndDate.Date.ToString("d");

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
            userDate.SiteType = "CabinA";
            userDate.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userDate.SiteType != null && userDate.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CabinB_Click(object sender, EventArgs e)
        {
            userDate.SiteType = "CabinB";
            userDate.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userDate.SiteType != null && userDate.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampBig_Click(object sender, EventArgs e)
        {
            userDate.SiteType = "CampBig";
            userDate.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userDate.SiteType != null && userDate.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void CampSmall_Click(object sender, EventArgs e)
        {
            userDate.SiteType = "CampSmall";
            userDate.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userDate.SiteType != null && userDate.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }

        protected void Tent_Click(object sender, EventArgs e)
        {
            userDate.SiteType = "Tent";
            userDate.SiteNr = Convert.ToInt32(CabinAList.SelectedValue);

            if (userDate.SiteType != null && userDate.SiteNr != 0)
            {
                Response.Redirect("Order.aspx");
            }
        }
    }
}