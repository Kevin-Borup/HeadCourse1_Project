using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace CampingPlads.cs
{
    public class DataConnector
    {
        public SqlConnectionStringBuilder FNCampingAdmin = new SqlConnectionStringBuilder();
        public SqlConnectionStringBuilder FNCampingUser = new SqlConnectionStringBuilder();

        public DataConnector ()
        {
            ConnectionDetailer();
        }

        private void ConnectionDetailer ()
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

        //public ICreateDataSource();
    }
}