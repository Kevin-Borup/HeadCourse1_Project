using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace CampingPlads.cs
{
    public class ProcessHandler
    {
        DataConnector connector = new DataConnector();

        void StartConnection()
        {

        }

        public string[] GetSeasonPrices()
        {
            string[] seasonPrices = new string[4];

            seasonPrices = connector.SeasonPriceReference();

            return seasonPrices;
;
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

        public bool SendEmail()
        {
            return false;
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