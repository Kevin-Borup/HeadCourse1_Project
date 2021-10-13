using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads
{
    public partial class Registration : System.Web.UI.Page
    {
        public string FirstName
        {
            get { }
            set { Session["FirstName"] = value; }
        }
        public string LastName
        {
            get { }
            set { }
        }
        public string Email
        {
            get { }
            set { }
        }
        public string PhoneNr
        {
            get { }
            set { }
        }
        public DateTime BirthDate
        {
            get { }
            set { }
        }
        public string StreetName
        {
            get { }
            set { }
        }
        public int BuildingNr
        {
            get { }
            set { }
        }
        public string City
        {
            get { }
            set { }
        }
        public int PostalCode
        {
            get { }
            set { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}