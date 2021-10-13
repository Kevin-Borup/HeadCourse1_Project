using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace CampingPlads.cs
{
    public class DataConnector
    {
        private string VS_testAdmin = @"Data Source=tcp:172.16.59.57\CAMPINGPLADS,49172;Initial Catalog=CampingPlads;Persist Security Info=True;User ID=VSLogin;Password=Kode1234!";
        private SqlConnectionStringBuilder FNCampingAdmin = new SqlConnectionStringBuilder();
        private SqlConnectionStringBuilder FNCampingUser = new SqlConnectionStringBuilder();

        public DataConnector()
        {
            ConnectionDetailer();
        }

        private void ConnectionDetailer()
        {
            FNCampingAdmin.DataSource = @"tcp:172.16.59.57\CAMPINGPLADS,49172";
            FNCampingAdmin.InitialCatalog = "CampingPlads";
            FNCampingAdmin.PersistSecurityInfo = true;
            FNCampingAdmin.UserID = "CampAdmin";
            FNCampingAdmin.Password = "Kode1234!";

            FNCampingUser.DataSource = @"tcp:172.16.59.57\CAMPINGPLADS,49172";
            FNCampingUser.InitialCatalog = "CampingPlads";
            FNCampingUser.PersistSecurityInfo = true;
            FNCampingUser.UserID = "CampUser";
            FNCampingUser.Password = "Kode1234!";
        }

        private SqlConnection EstablishSQLConnection(string accessType)
        {
            if (accessType == "Admin")
            {

                return new SqlConnection(FNCampingAdmin.ConnectionString);
            }
            else
            {
                return new SqlConnection(FNCampingUser.ConnectionString);
            }
        }

        public string[] SeasonPriceReference()
        {
            string[] seasonPrices = new string[4];

            //SqlConnection sqlCon = EstablishSQLConnection("User");
            SqlConnection sqlCon = new SqlConnection(VS_testAdmin);

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
            SqlConnection sqlCon = new SqlConnection(VS_testAdmin);

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
            SqlConnection sqlCon = new SqlConnection(VS_testAdmin);

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
    }
}