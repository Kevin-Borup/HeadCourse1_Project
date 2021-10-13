using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace CampingPlads.cs
{
    public class DataConnector
    {
        private string vs_TestAdmin = @"Data Source=tcp:172.16.59.57\CAMPINGPLADS,49172;Initial Catalog=CampingPlads;Persist Security Info=True;User ID=VSLogin;Password=Kode1234!";
        private SqlConnectionStringBuilder fnCampingAdmin = new SqlConnectionStringBuilder();
        private SqlConnectionStringBuilder fnCampingUser = new SqlConnectionStringBuilder();

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

        public int[] PersonPriceReference()
        {
            int[] prices = new int[] { };

            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            string commandStatement = "";

            SqlCommand command = new SqlCommand(commandStatement, sqlCon);

            SqlDataReader sqlDataReader = command.ExecuteReader();


            sqlDataReader.Close();
            command.Dispose();
            sqlCon.Close();

            return prices;
        }

        public int[] DetailPriceReference()
        {
            int[] prices = new int[] { };

            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            string commandStatement = "";

            SqlCommand command = new SqlCommand(commandStatement, sqlCon);

            SqlDataReader sqlDataReader = command.ExecuteReader();


            sqlDataReader.Close();
            command.Dispose();
            sqlCon.Close();

            return prices;
        }

        public int[] CabinAvailableReference(string cabinType)
        {
            List<int> availableCabins = new List<int>();

            //SqlConnection sqlCon = EstablishSQLConnection("User");
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            sqlCon.Open();

            string commandStatement = "SELECT Number FROM ";

            SqlCommand command = new SqlCommand();

            if (cabinType == "A")
            {
                commandStatement += "CabinASiteAvailable";

                command = new SqlCommand(commandStatement, sqlCon);

                SqlDataReader sqlDataReader = command.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    availableCabins.Add(Convert.ToInt32(sqlDataReader.GetValue(0)));
                }
                sqlDataReader.Close();
            }
            else
            {
                commandStatement += "CabinBSiteAvailable";

                command = new SqlCommand(commandStatement, sqlCon);

                SqlDataReader sqlDataReader = command.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    availableCabins.Add(Convert.ToInt32(sqlDataReader.GetValue(0)));
                }

                sqlDataReader.Close();
            }

            command.Dispose();
            sqlCon.Close();

            return availableCabins.ToArray();

        }

        public int[] CampsiteAvailableReference(string campsiteType)
        {
            List<int> availableCampsites = new List<int>();

            //SqlConnection sqlCon = EstablishSQLConnection("User");
            SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

            sqlCon.Open();

            string commandStatement = "SELECT Number FROM ";

            SqlCommand command = new SqlCommand();

            if (campsiteType == "CampBig" || campsiteType == "CampSmall")
            {
                commandStatement += "AutocamperSiteAvailable";

                command = new SqlCommand(commandStatement, sqlCon);

                SqlDataReader sqlDataReader = command.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    availableCampsites.Add(Convert.ToInt32(sqlDataReader.GetValue(0)));
                }
                sqlDataReader.Close();
            }
            else
            {
                commandStatement += "TentSiteAvailable";

                command = new SqlCommand(commandStatement, sqlCon);

                SqlDataReader sqlDataReader = command.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    availableCampsites.Add(Convert.ToInt32(sqlDataReader.GetValue(0)));
                }
                sqlDataReader.Close();
            }

            command.Dispose();
            sqlCon.Close();

            return availableCampsites.ToArray();
        }

        public bool InsertCustomerReserveProc()
        {
            try
            {
                SqlConnection sqlCon = new SqlConnection(vs_TestAdmin);

                SqlCommand command = new SqlCommand("InsertReservation", sqlCon);

 //               @FirstName varchar(50), 
	//@LastName varchar(50),
	//@Email varchar(50),
	//@StreetName varchar(50),
	//@BuildingNr smallint,
 //   @City varchar(50),
	//@PostalCode smallint,
 //   @BirthDate datetime,
	//@PhoneNr varchar(50),
	//@StartDate datetime,
 //   @EndDate datetime,
	//@Adult tinyint,
 //   @Child tinyint,
	//@Dog tinyint,
 //   @CabinNumber tinyint,
	//@CampSiteNumber smallint,
 //   @AddonPriceName varchar(30)

                //command.Parameters.AddWithValue("@FirstName", txtName.Text);
                //command.Parameters.AddWithValue("@LastName", txtSurName.Text);
                //command.Parameters.AddWithValue("@City", txtCity.Text);
                //command.Parameters.AddWithValue("@Phone", txtPhone.Text);

                command.Parameters.Add("@ReturnID", System.Data.SqlDbType.Int);
                command.Parameters["@ReturnID"].Direction = System.Data.ParameterDirection.Output;

                command.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCon.Open();

                command.ExecuteNonQuery();

                sqlCon.Close();
                command.Dispose();

                if (command.Parameters["@ReturnID"].Value == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}