using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampingPlads.cs
{
    public class UserDataCollection
    {
        HttpContext current = HttpContext.Current;

        // Customer Data
        //public string FirstName
        //{
        //    get
        //    {
        //        object firstname = Session["FirstName"];
        //        return (firstname == null) ? default : (string)firstname;
        //    }
        //    set { Session["FirstName"] = value; }
        //}
        //public string LastName
        //{
        //    get
        //    {
        //        object lastname = Session["LastName"];
        //        return (lastname == null) ? default : (string)lastname;
        //    }
        //    set { Session["LastName"] = value; }
        //}
        //public string Email
        //{
        //    get
        //    {
        //        object email = Session["Email"];
        //        return (email == null) ? default : (string)email;
        //    }
        //    set { Session["Email"] = value; }
        //}
        //public string PhoneNr
        //{
        //    get
        //    {
        //        object phonenr = Session["PhoneNr"];
        //        return (phonenr == null) ? default : (string)phonenr;
        //    }
        //    set { Session["PhoneNr"] = value; }
        //}
        //public DateTime BirthDate
        //{
        //    get
        //    {
        //        object birthdate = Session["BirthDate"];
        //        return (birthdate == null) ? default : (DateTime)birthdate;
        //    }
        //    set { Session["BirthDate"] = value; }
        //}
        //public string StreetName
        //{
        //    get
        //    {
        //        object firstname = Session["FirstName"];
        //        return (firstname == null) ? default : (string)firstname;
        //    }
        //    set { Session["StreetName"] = value; }
        //}
        //public int BuildingNr
        //{
        //    get
        //    {
        //        object buildingNr = Session["BuildingNr"];
        //        return (buildingNr == null) ? default : (int)buildingNr;
        //    }
        //    set { Session["BuildingNr"] = value; }
        //}
        //public string City
        //{
        //    get
        //    {
        //        object city = Session["City"];
        //        return (city == null) ? default : (string)city;
        //    }
        //    set { Session["City"] = value; }
        //}
        //public int PostalCode
        //{
        //    get
        //    {
        //        object postalcode = Session["PostalCode"];
        //        return (postalcode == null) ? default : (int)postalcode;
        //    }
        //    set { Session["PostalCode"] = value; }
        //}

        public DateTime StartDate
        {
            get
            {
                object date = current.Session["StartDate"];
                return (date == null) ? default : (DateTime)date;
            }
            set { current.Session["StartDate"] = value; }
        }

        public DateTime EndDate
        {
            get
            {
                object date = current.Session["EndDate"];
                return (date == null) ? default : (DateTime)date;
            }
            set { current.Session["EndDate"] = value; }
        }

        public int SiteNr
        {
            get
            {
                object nr = current.Session["SiteNr"];
                return (nr == null) ? default : (int)nr;
            }
            set { current.Session["SiteNr"] = value; }
        }

        public string SiteType
        {
            get
            {
                object nr = current.Session["SiteType"];
                return (nr == null) ? default : (string)nr;
            }
            set { current.Session["SiteType"] = value; }
        }


        //String Setup
        //   01234567
        //   adult, child, dog, bedding, cleaning, bikes, adultWater, childWater
        public string AddonDetails
        {
            get
            {
                object amount = current.Session["AddonDetails"];
                return (amount == null) ? default : (string)amount;
            }
            set { current.Session["AddonDetails"] = value; }
        }
    }
}