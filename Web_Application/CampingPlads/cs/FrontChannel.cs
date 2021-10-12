using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampingPlads.cs
{
    public static class FrontChannel
    {
        static ProcessHandler processHandler = new ProcessHandler();

        public static string[] GetSeasonPrices()
        {
            return processHandler.GetSeasonPrices();
        }

    }
}