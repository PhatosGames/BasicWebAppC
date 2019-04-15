using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BasicWebApp.it.objectmethod.BasicWebApp.Classes
{
    public class Statistiche
    {
        public static DataTable SalesByYear()
        {
            
            SqlConnection conn = Connector.Connection();
            SqlDataAdapter SDA = new SqlDataAdapter("exec SalesByYear 2016", conn);
            DataTable dt = new DataTable();
            SDA.Fill(dt);
            return dt;
        }
    }
}