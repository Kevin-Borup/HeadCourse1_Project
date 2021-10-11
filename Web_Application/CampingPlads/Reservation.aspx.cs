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

        }
        protected void MenuTabs_MenuItemClick(object sender, MenuEventArgs e)
        {
            Menu menuTabs = sender as Menu;
            MultiView multiTabs = this.FindControl("multiviewEmployee") as MultiView;
            multiTabs.ActiveViewIndex = Int32.Parse(menuTabs.SelectedValue);

        }
    }
}