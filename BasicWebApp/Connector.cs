using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BasicWebApp
{
    public class Connector
    {
        public static SqlConnection Connection()
        {
            SqlConnection conn = new SqlConnection("Data Source=LILIANA-PC;Initial Catalog=BikeStores;Integrated Security=True");
            return conn;
        }
    }
}