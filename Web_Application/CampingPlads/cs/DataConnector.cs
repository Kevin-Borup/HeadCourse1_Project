using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CampingPlads.cs
{
    public class DataConnector
    {
        private readonly string vs_TestAdmin = @"Data Source=tcp:172.16.59.57\CAMPINGPLADS,49172;Initial Catalog=CampingPlads;Persist Security Info=True;User ID=VSLogin;Password=Kode1234!";
        private readonly SqlConnectionStringBuilder fnCampingAdmin = new SqlConnectionStringBuilder();
        private readonly SqlConnectionStringBuilder fnCampingUser = new SqlConnectionStringBuilder();

        public DataConnector()
        {
            ConnectionDetailer();
        }

        private void ConnectionDetailer()
        {
            fnCampingAdmin.DataSource = @"tcp:172.16.59.57\CAMPINGPLADS,49172";
            fnCampingAdmin.InitialCatalog = "CampingPlads";
            fnCampingAdmin.PersistSecurityInfo = true;
            fnCampingAdmin.UserID = "CampAdmin";
            fnCampingAdmin.Password = "Kode1234!";

            fnCampingUser.DataSource = @"tcp:172.16.59.57\CAMPINGPLADS,49172";
            fnCampingUser.InitialCatalog = "CampingPlads";
            fnCampingUser.PersistSecurityInfo = true;
            fnCampingUser.UserID = "CampUser";
            fnCampingUser.Password = "Kode1234!";
        }

        private SqlConnection EstablishSQLConnection(string accessType)
        {
            if (accessType == "Admin")
            {

                return new SqlConnection(fnCampingAdmin.ConnectionString);
            }
            else
            {
                return new SqlConnection(fnCampingUser.ConnectionString);
            }
        }

        public string[] SeasonPriceReference()
        {
            string[] seasonPrices = new string[4];

            //SqlConnection sqlCon = EstablishSQLConnection("User");
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            sqlCon.Open();

            string commandStatement = "SELECT Price FROM SeasonTicket";

            SqlCommand command = new SqlCommand(commandStatement, sqlCon);

            SqlDataReader sqlDataReader = command.ExecuteReader();

            int seasonPriceIndex = 0;
            while (sqlDataReader.Read())
            {
                seasonPrices[seasonPriceIndex] = Convert.ToString(sqlDataReader.GetValue(0));
                seasonPriceIndex += 1;
            }
            sqlDataReader.Close();
            command.Dispose();
            sqlCon.Close();

            return seasonPrices;
        }

        public int SpecificSeasonPriceReference(string seasonName)
        {
            int seasonPrice;

            //SqlConnection sqlCon = EstablishSQLConnection("User");
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            sqlCon.Open();

            string commandStatement = "SELECT Price FROM SeasonTicket WHERE Item = " + seasonName;

            SqlCommand command = new SqlCommand(commandStatement, sqlCon);

            SqlDataReader sqlDataReader = command.ExecuteReader();

            seasonPrice = Convert.ToInt32(sqlDataReader.GetValue(0));

            sqlDataReader.Close();
            command.Dispose();
            sqlCon.Close();

            return seasonPrice;
        }

        /*
             *  .Add().Value = Variable
             *  is better than
             *  .AddWithValue()
             *  as the later is more prone to errors,
             *  since sql has to estimate the datatype, 
             *  which might create conversion mistakes
             *  with .Add you specify, thus more secure and still just one line.
             *  
             */

        public int SitePriceReference(string siteType, DateTime startDate, DateTime endDate)
        {
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            SqlCommand command = new SqlCommand("SitePriceTotal", sqlCon);

            command.Parameters.Add("@SiteType", SqlDbType.VarChar).Value = siteType;
            command.Parameters.Add("@StartDate", SqlDbType.Date).Value = startDate.Date;
            command.Parameters.Add("@EndDate", SqlDbType.Date).Value = endDate.Date;

            command.Parameters.Add("@ReturnValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

            command.CommandType = CommandType.StoredProcedure;

            sqlCon.Open();

            command.ExecuteNonQuery();

            int totalPrice = Convert.ToInt32(command.Parameters["@ReturnValue"].Value);

            command.Dispose();
            sqlCon.Close();

            //int totalPrice = 500;
            return totalPrice;
        }

        public int PersonPriceReference(int adults, int children, DateTime startDate, DateTime endDate)
        {
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            SqlCommand command = new SqlCommand("PersonPriceTotal", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@Adults", SqlDbType.TinyInt).Value = adults;
            command.Parameters.Add("@Children", SqlDbType.TinyInt).Value = children;
            command.Parameters.Add("@StartDate", SqlDbType.Date).Value = startDate.Date;
            command.Parameters.Add("@EndDate", SqlDbType.Date).Value = endDate.Date;

            command.Parameters.Add("@ReturnValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

            sqlCon.Open();

            command.ExecuteNonQuery();

            int totalPrice = Convert.ToInt32(command.Parameters["@ReturnValue"].Value);

            command.Dispose();
            sqlCon.Close();

            return totalPrice;
        }

        public int DetailPriceReference(int dogs, bool bedding, bool cleaning, int bikes, int adultWater, int childWater)
        {
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            SqlCommand command = new SqlCommand("AddonPriceTotal", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@Dogs", SqlDbType.TinyInt).Value = dogs;
            command.Parameters.Add("@BedLining", SqlDbType.Bit).Value = bedding;
            command.Parameters.Add("@Cleaning", SqlDbType.Bit).Value = cleaning;
            command.Parameters.Add("@Bikes", SqlDbType.TinyInt).Value = bikes;
            command.Parameters.Add("@AdultWater", SqlDbType.TinyInt).Value = adultWater;
            command.Parameters.Add("@ChildWater", SqlDbType.TinyInt).Value = childWater;

            command.Parameters.Add("@ReturnValue", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

            sqlCon.Open();

            command.ExecuteNonQuery();

            int totalPrice = Convert.ToInt32(command.Parameters["@ReturnValue"].Value);

            command.Dispose();
            sqlCon.Close();

            return totalPrice;
        }

        public int[] GetAvailableSitesReference(string siteType, DateTime startDate, DateTime endDate)
        {
            List<int> availableSites = new List<int>();

            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            SqlCommand command = new SqlCommand("GetAvailableSites", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@SiteType", SqlDbType.VarChar).Value = siteType;
            command.Parameters.Add("@StartDate", SqlDbType.DateTime).Value = startDate;
            command.Parameters.Add("@EndDate", SqlDbType.DateTime).Value = endDate;

            sqlCon.Open();

            SqlDataReader sqlDataReader = command.ExecuteReader();

            while (sqlDataReader.Read())
            {
                availableSites.Add(Convert.ToInt32(sqlDataReader.GetValue(0)));
            }
            sqlDataReader.Close();

            command.Dispose();
            sqlCon.Close();


            //return new int[20] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
            return availableSites.ToArray();

        }

        public int[] InsertFullReserveProc(
            string firstName, string lastName, string email, string phoneNr, DateTime birthDate,
            string streetName, int buildingNr, string city, int postalCode, DateTime startDate, DateTime endDate,
            int adult, int child, string campType, int dogs, bool bedLining, bool cleaning, int bike, int adultWater, int childWater,
            int? cabinNumber = null, int? campSiteNumber = null, string seasonName = null)
        {
            int[] custNr_reserveId = new int[2];

            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            SqlCommand command = new SqlCommand("InsertFullReservation", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = firstName;
            command.Parameters.Add("@LastName", SqlDbType.VarChar).Value = lastName;
            command.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
            command.Parameters.Add("@PhoneNr", SqlDbType.VarChar).Value = phoneNr;
            command.Parameters.Add("@BirthDate", SqlDbType.DateTime).Value = birthDate;
            command.Parameters.Add("@StreetName", SqlDbType.VarChar).Value = streetName;
            command.Parameters.Add("@BuildingNr", SqlDbType.SmallInt).Value = buildingNr;
            command.Parameters.Add("@City", SqlDbType.VarChar).Value = city;
            command.Parameters.Add("@PostalCode", SqlDbType.SmallInt).Value = postalCode;
            command.Parameters.Add("@StartDate", SqlDbType.DateTime).Value = startDate;
            command.Parameters.Add("@EndDate", SqlDbType.DateTime).Value = endDate;
            command.Parameters.Add("@Adult", SqlDbType.TinyInt).Value = adult;
            command.Parameters.Add("@Child", SqlDbType.TinyInt).Value = child;
            command.Parameters.Add("@CabinNumber", SqlDbType.TinyInt).Value = cabinNumber;
            command.Parameters.Add("@CampSiteNumber", SqlDbType.SmallInt).Value = campSiteNumber;
            command.Parameters.Add("@CampType", SqlDbType.VarChar).Value = campType;
            command.Parameters.Add("@SeasonName", SqlDbType.VarChar).Value = seasonName;
            command.Parameters.Add("@Dogs", SqlDbType.TinyInt).Value = dogs;
            command.Parameters.Add("@BedLining", SqlDbType.Bit).Value = bedLining;
            command.Parameters.Add("@Cleaning", SqlDbType.Bit).Value = cleaning;
            command.Parameters.Add("@Bike", SqlDbType.TinyInt).Value = bike;
            command.Parameters.Add("@AdultWater", SqlDbType.TinyInt).Value = adultWater;
            command.Parameters.Add("@ChildWater", SqlDbType.TinyInt).Value = childWater;

            command.Parameters.Add("@newCustomerNr", SqlDbType.Int);
            command.Parameters["@newCustomerNr"].Direction = ParameterDirection.Output;

            command.Parameters.Add("@newReserveId", SqlDbType.Int);
            command.Parameters["@newReserveId"].Direction = ParameterDirection.Output;

            sqlCon.Open();

            command.ExecuteNonQuery();

            custNr_reserveId[0] = Convert.ToInt32(command.Parameters["@newCustomerNr"].Value);
            custNr_reserveId[1] = Convert.ToInt32(command.Parameters["@newReserveId"].Value);

            sqlCon.Close();
            command.Dispose();

            return custNr_reserveId;
        }
    }
}