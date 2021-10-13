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
            get
            {
                object firstname = Session["FirstName"];
                return (firstname == null) ? default : (string)firstname;
            }
            set { Session["FirstName"] = value; }
        }
        public string LastName
        {
            get
            {
                object lastname = Session["LastName"];
                return (lastname == null) ? default : (string)lastname;
            }
            set { Session["LastName"] = value; }
        }
        public string Email
        {
            get
            {
                object email = Session["Email"];
                return (email == null) ? default : (string)email;
            }
            set { Session["Email"] = value; }
        }
        public string PhoneNr
        {
            get
            {
                object phonenr = Session["PhoneNr"];
                return (phonenr == null) ? default : (string)phonenr;
            }
            set { Session["PhoneNr"] = value; }
        }
        public DateTime BirthDate
        {
            get
            {
                object birthdate = Session["BirthDate"];
                return (birthdate == null) ? default : (DateTime)birthdate;
            }
            set { Session["BirthDate"] = value; }
        }
        public string StreetName
        {
            get
            {
                object firstname = Session["FirstName"];
                return (firstname == null) ? default : (string)firstname;
            }
            set { Session["StreetName"] = value; }
        }
        public int BuildingNr
        {
            get
            {
                object buildingNr = Session["BuildingNr"];
                return (buildingNr == null) ? default : (int)buildingNr;
            }
            set { Session["BuildingNr"] = value; }
        }
        public string City
        {
            get
            {
                object city = Session["City"];
                return (city == null) ? default : (string)city;
            }
            set { Session["City"] = value; }
        }
        public int PostalCode
        {
            get
            {
                object postalcode = Session["PostalCode"];
                return (postalcode == null) ? default : (int)postalcode;
            }
            set { Session["PostalCode"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


    }
}