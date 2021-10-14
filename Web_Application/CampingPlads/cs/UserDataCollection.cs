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
        private static string firstName;
        private static string lastName;
        private static string email;
        private static string phoneNr;
        private static DateTime birthDate;
        private static string streetName;
        private static int buildingNr;
        private static string city;
        private static int postalCode;

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