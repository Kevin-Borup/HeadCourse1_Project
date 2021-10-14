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
        DataConnector connector = new DataConnector();

        public string[] GetSeasonPrices()
        {
            string[] seasonPrices = new string[4];

            seasonPrices = connector.SeasonPriceReference();

            return seasonPrices;

        }

        public int PersonPrice(string items)
        {
            int fullPrice = 0;
            int[] personPrices = connector.PersonPriceReference();
            for (int i = 0; i < personPrices.Length; i++)
            {
                fullPrice += items[i] * personPrices[i];
            }
            return fullPrice;
        }

        public int DetailPrice(string items)
        {
            int fullPrice = 0;
            int[] detailPrices = connector.DetailPriceReference();
            for (int i = 0; i < detailPrices.Length; i++)
            {
                fullPrice += items[i+2] * detailPrices[i];
            }
            return fullPrice;
        }

        public string FullPrice(int sitePrice, int personPrice, int detailPrice)
        {
            return Convert.ToString( sitePrice + personPrice + detailPrice);
        }

        public int[] GetAvailableCabins(string type)
        {
            int[] cabinNumbers = connector.CabinAvailableReference(type);

            return cabinNumbers;
        }

        public int[] GetAvailableCampsites(string type)
        {
            int[] campsitesNumbers = connector.CampsiteAvailableReference(type);

            return campsitesNumbers;
        }

        public bool InsertCustomerReservation()
        {
            return connector.InsertCustomerReserveProc();
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