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
        private SqlConnection Conn;

        public Database()
        {

            SqlConnection conn = new SqlConnection(
                            "server=" + Credentials.SERVER + " ; " +
                            "database=" + Credentials.DATABASE + "; " +
                            "uid=" + Credentials.UID + "; " +
                            "password=" + Credentials.PASSWORD + ";");
            Conn = conn;
        }

        //User Table 
        public int getUID(String username, String password)
        {
            SqlCommand cmd = new SqlCommand(
                "select UserID, Username, UserPassword from Users where Username = @username AND UserPassword = @userpassword", Conn);


            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }

            Conn.Open();

            cmd.Parameters.Add("@username", SqlDbType.VarChar, 100).Value = username;
            cmd.Parameters.Add("@userpassword", SqlDbType.VarChar, 100).Value = password;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            int UserID = 0;

            if (ds.Tables[0].Rows.Count != 0)
            {
                UserID = (int)ds.Tables[0].Rows[0][0];
            }

            return UserID;
        }

        public String[] getUsersDetails(int UID)
        {
            SqlCommand cmd = new SqlCommand(
                "select UserPassword, UserEmail, UserFirstName, UserLastName from Users " +
                "where UserID = @UID", Conn);

            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = UID;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            String[] userDetails = { "password", "email", "", "" };

            if (ds.Tables[0].Rows.Count != 0)
            {
                userDetails[0] = (String)ds.Tables[0].Rows[0][0];
                userDetails[1] = (String)ds.Tables[0].Rows[0][1];

                if (!ds.Tables[0].Rows[0][2].Equals(System.DBNull.Value)) userDetails[2] = (String)ds.Tables[0].Rows[0][2];
                if (!ds.Tables[0].Rows[0][3].Equals(System.DBNull.Value)) userDetails[3] = (String)ds.Tables[0].Rows[0][3];
            }

            return userDetails;
        }


        //Validate Sign In Details
        public Boolean SignIn(String username, String password)
        {
            SqlCommand cmd = new SqlCommand(
                "select Username, UserPassword from Users where Username = @username AND UserPassword = @userpassword", Conn);

            Conn.Open();

            cmd.Parameters.Add("@username", SqlDbType.VarChar, 100).Value = username;
            cmd.Parameters.Add("@userpassword", SqlDbType.VarChar, 100).Value = password;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            if (ds.Tables[0].Rows.Count != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Insert SignUp Details
        public void SignUp(String email, String username, String password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                   "insert into Users(Username, UserPassword, UserEmail, RoleID)" +
                   "Values(@USR, @PWD, @EMAIL, @Role); ", Conn);

                Conn.Open();

                cmd.Parameters.Add("@USR", SqlDbType.VarChar, 100).Value = username;
                cmd.Parameters.Add("@PWD", SqlDbType.VarChar, 100).Value = password;
                cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar, 100).Value = email;
                cmd.Parameters.Add("@Role", SqlDbType.Int, 100).Value = 3;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();

            }
            catch (Exception e)
            {
                string error = e.Message;
            }

        }

        //Insert MyAccount details
        public void MyAccount(int UID, String fname, String lname, String email, String username)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                    "update Users set UserFirstName = @fname, UserLastName = @lname, UserEmail = @Email, Username = @USR where UserID = @UID", Conn);

                Conn.Open();

                cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = UID;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 100).Value = fname;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 100).Value = lname;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 100).Value = email;
                cmd.Parameters.Add("@USR", SqlDbType.VarChar, 100).Value = username;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();
            }
            catch (Exception e)
            {
                String error = e.Message;
            }

        }

        //Validate whether current password is true
        public Boolean Password(int UID, String pw)
        {
            SqlCommand cmd = new SqlCommand(
                "select UserPassword from Users where UserID = @UID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = UID;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            String current_pw = "";

            if (ds.Tables[0].Rows.Count != 0)
            {
                current_pw = (String)ds.Tables[0].Rows[0][0];
            }

            if (current_pw == pw)
            {
                return true;
            }
            else return false;
        }

        //Change new password
        public void NewPassword(int UID, String pw)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                    "update Users set UserPassword = @PWD where UserID = @UID", Conn);

                //if (cmd.Connection.State == ConnectionState.Open)
                //{
                //    cmd.Connection.Close();
                //}

                Conn.Open();

                cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = UID;
                cmd.Parameters.Add("@PWD", SqlDbType.VarChar, 100).Value = pw;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();
            }
            catch (Exception e)
            {
                String error = e.Message;
            }
        }

    }
 
}