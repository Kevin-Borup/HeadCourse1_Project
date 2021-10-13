using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampingPlads.cs
{
    public static class UserDataCollection
    {
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

        // Order Data
        private static DateTime startDate;
        private static DateTime endDate;
        private static string siteType;
        private static int siteNumber;

        // Order Details
        private static int adultCount;
        private static int childCount;
        private static int dogCount;
        private static bool bedlining;
        private static bool cleaning;
        private static int bikes;
        private static int adultWater;
        private static int childWater;


    }
}