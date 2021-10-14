using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampingPlads.cs
{
    public class UserDataCollection
    {
        readonly HttpContext current = HttpContext.Current;

        // Saved Data:
        // Full Name
        // Start Date
        // End Date
        // SiteNr
        // SiteType
        // Order Details in one string - adult, child, dog, bedding, cleaning, bikes, adultWater, childWater

        // Customer Data
        public string FullName
        {
            get
            {
                object fullname = current.Session["FullName"];
                return (fullname == null) ? default : (string)fullname;
            }
            set { current.Session["FullName"] = value; }
        }

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

        public string SeasonName
        {
            get
            {
                object seasonName = current.Session["SeasonName"];
                return (seasonName == null) ? default : (string)seasonName;
            }
            set { current.Session["SeasonName"] = value; }
        }

        public int SeasonPrice
        {
            get
            {
                object seasonPrice = current.Session["SeasonPrice"];
                return (seasonPrice == null) ? default : (int)seasonPrice;
            }
            set { current.Session["SeasonPrice"] = value; }
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