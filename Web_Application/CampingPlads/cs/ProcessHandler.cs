using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Net;
using System.Net.Mail;

namespace CampingPlads.cs
{
    public class ProcessHandler
    {
        readonly DataConnector connector = new DataConnector();

        public string[] GetSeasonPrices()
        {
            return connector.SeasonPriceReference();
        }

        public int GetSeasonSpecificPrice(string seasonName)
        {
            return connector.SpecificSeasonPriceReference(seasonName);
        }

        public int SitePrice(string siteType, DateTime startDate, DateTime endDate)
        {
            return connector.SitePriceReference(siteType, startDate, endDate);
        }

        public int PersonPrice(string items, DateTime startDate, DateTime endDate)
        {
            int adults = items[0];
            int children = items[1];
            return connector.PersonPriceReference(adults, children, startDate, endDate);
        }

        public int DetailPrice(string addons)
        {
            int dogs = addons[0];
            bool bedding = (addons[1] == 1);
            bool cleaning = (addons[2] == 1);
            int bikes = addons[3];
            int adultWater = addons[4];
            int childWater = addons[5];
            return connector.DetailPriceReference(dogs, bedding, cleaning, bikes, adultWater, childWater);
        }

        public string FullPrice(int sitePrice, int personPrice, int detailPrice)
        {
            return Convert.ToString(sitePrice + personPrice + detailPrice);
        }

        public int[] GetAvailableSites(string siteType, DateTime startDate, DateTime endDate)
        {
            return connector.GetAvailableSitesReference(siteType, startDate, endDate);
        }

        public int[] InsertCustomerReservation(
            string firstName, string lastName, string email, string phoneNr, DateTime birthDate,
            string streetName, int buildingNr, string city, int postalCode, DateTime startDate, DateTime endDate,
            int adult, int child, string campType, int dogs, bool bedLining, bool cleaning, int bike, int adultWater, int childWater,
            int? cabinNumber = null, int? campSiteNumber = null, string seasonName = null)
        {
            return connector.InsertFullReserveProc(
                firstName, lastName, email, phoneNr, birthDate, 
                streetName, buildingNr, city, postalCode, 
                startDate, endDate, adult, child, campType, 
                dogs, bedLining, cleaning, bike, adultWater, childWater);
        }

        public bool SendConfirmEmail(string customerMail, string customerFullName, string mailBody)
        {
            try
            {
                MailAddress fromAddress = new MailAddress("fnaturcamping@gmail.com", "Fårup Natur Camping");
                MailAddress toAddress = new MailAddress(customerMail, customerFullName);
                const string fromPassword = "nokbtpejerialjeo";
                const string subject = "Reservation Bekræftet!";
                string body = mailBody;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
            }
            catch (Exception)
            {

                return false;
            }
            return true;
        }


        //ICollection CreateDataSource()
        //{
        //    DataTable myDataTable = new DataTable();
        //    DataRow myDataRow;

        //    myDataTable.Columns.Add(new DataColumn("EmployeeName", typeof(string)));
        //    myDataTable.Columns.Add(new DataColumn("EmployeeID", typeof(long)));
        //    for (int i = 0; i < 3; i++)
        //    {
        //        myDataRow = myDataTable.NewRow();
        //        myDataRow[0] = "somename" + i.ToString();
        //        myDataRow[1] = (i + 1000);
        //        myDataTable.Rows.Add(myDataRow);
        //    }
        //    DataView dataView = new DataView(myDataTable);
        //    return dataView;
        //}

    }
}