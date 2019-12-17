using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace cartSurf.Credentials
{
    public class Database
    {
        private SqlConnection Connection;

        public Database() 
        {
        
            SqlConnection conn = new SqlConnection(
                            "server=" + Credentials.SERVER + "; " +
                            "database=" + Credentials.DATABASE + "; " +
                            "uid=" + Credentials.UID + "; " +
                            "password=" + Credentials.PASSWORD + ";");
            Connection = conn;
        }

        public Boolean Login(String username, String password)
        {           
            SqlCommand cmd = new SqlCommand(
                "select Username, UserPassword from Users where Username = @username AND UserPassword = @userpassword", Connection);
        
            Connection.Open();

            cmd.Parameters.Add("@username", SqlDbType.VarChar, 100).Value = username;
            cmd.Parameters.Add("@userpassword", SqlDbType.VarChar, 100).Value = password;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            if (ds.Tables[0].Rows.Count != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

 
}