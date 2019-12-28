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

        /*******************************User Table**************************************/
        public int getUID(String username, String password)
        {
            SqlCommand cmd = new SqlCommand(
                "select UserID, Username, UserPassword from Users where Username = @username AND UserPassword = @userpassword", Conn);

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

        /*******************************Shopping Cart Table**************************************/
        //Show Shopping Cart of the User
        public DataSet CartInventory(int UID)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT CartItems.CartItemID AS ID, Products.ProductName AS Product, Products.Variations AS Variations, Products.ProductUnitPrice AS UnitPrice, CartItems.Quantity AS Quantity " +
                "FROM CartItems INNER JOIN Products ON CartItems.ProductID = Products.ProductID " +
                "INNER JOIN ShoppingCarts ON CartItems.CartID = ShoppingCarts.CartID WHERE ShoppingCarts.UserID = @UID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int).Value = UID;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);

            DataSet data = new DataSet();
            ada.Fill(data);

            Conn.Close();

            return data;
        }

        //Delete items from shopping cart
        public void DeleteItems(int cid)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM CartItems WHERE CartItemID = @CID", Conn);

                Conn.Open();

                cmd.Parameters.Add("@CID", SqlDbType.Int).Value = cid;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();
            }
            catch (Exception e)
            {
                String error = e.Message;
            }
        }

        //getCartID of a user
        public int getCartID(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT CartID FROM ShoppingCarts WHERE UserID = @UID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int).Value = uid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            int cid = -1;

            if (ds.Tables[0].Rows.Count != 0)
            {
                cid = (int)ds.Tables[0].Rows[0][0];
            }
            return cid;
        }

        //Get num of items in the cart
        public int getRowNum(int CID)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT Count(*) FROM CartItems " +
                "where CartID = @CID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@CID", SqlDbType.Int, 100).Value = CID;

            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            int count = 0;

            if (ds.Tables[0].Rows.Count != 0)
            {
                count = (int)ds.Tables[0].Rows[0][0];
            }

            return count;
        }

        //getCartItemDetails (ProductID && Quantity)
        public List<List<int>> getCartItemDetails(int cid)
        {
            int noOfItem = getRowNum(cid);

            SqlCommand cmd = new SqlCommand(
                "SELECT ProductID, Quantity FROM CartItems " +
                "WHERE CartID = @CID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@CID", SqlDbType.Int, 100).Value = cid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            List<List<int>> productQuantity = new List<List<int>>();
            List<int> row = new List<int>();

            if (ds.Tables[0].Rows.Count != 0)
            {
                for (int i = 0; i < noOfItem; i++)
                {
                    row = new List<int>();
                    row.Add((int)ds.Tables[0].Rows[i][0]);
                    row.Add((int)ds.Tables[0].Rows[i][1]);
                    productQuantity.Add(row);
                }

            }           

            return productQuantity;
        }

        /*******************************Product Table**************************************/
        public Decimal getProductPrice(int pid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT ProductUnitPrice FROM Products " +
                "WHERE ProductID = @PID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@PID", SqlDbType.Int, 100).Value = pid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            Decimal UnitPrice = 0.00m;

            if (ds.Tables[0].Rows.Count != 0)
            {
                UnitPrice = (Decimal)ds.Tables[0].Rows[0][0];
            }

            return UnitPrice;
        }

        /*******************************Address Table**************************************/

        public Boolean gotAddress(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "select Name from DeliveryAddresses where UserID = @UID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = uid;
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

        public String[] getAddDetails(int UID)
        {
            SqlCommand cmd = new SqlCommand(
                "select Name, AddLine1, AddLine2, AddLine3, City, PostCode, State, Country, Phone from DeliveryAddresses " +
                "where UserID = @UID", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = UID;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            String[] addDetails = { "Name", "AddLine1", "AddLine2", "AddLine3", "City", "Postcode", "State", "Country", "Phone" };

            if (ds.Tables[0].Rows.Count != 0)
            {
                for(int i = 0; i < 9; i++)
                {
                    addDetails[i] = (String)ds.Tables[0].Rows[0][i];
                }                
            }

            return addDetails;
        }

        public void insertAdd(String name, String add1, String add2, String add3, String city, int code, string state, 
            String country, string phone, int uid)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                   "insert into DeliveryAddresses(Name, AddLine1, AddLine2, AddLine3, City, PostCode, State, Country, Phone, UserID)" +
                   "Values(@USR, @ADD1, @ADD2, @ADD3, @City, @Code, @State, @Country, @Phone, @UID); ", Conn);

                Conn.Open();

                cmd.Parameters.Add("@USR", SqlDbType.VarChar, 100).Value = name;
                cmd.Parameters.Add("@ADD1", SqlDbType.VarChar, 100).Value = add1;
                cmd.Parameters.Add("@ADD2", SqlDbType.VarChar, 100).Value = add2;
                cmd.Parameters.Add("@ADD3", SqlDbType.VarChar, 100).Value = add3;
                cmd.Parameters.Add("@City", SqlDbType.VarChar, 100).Value = city;
                cmd.Parameters.Add("@Code", SqlDbType.Int, 100).Value = code;
                cmd.Parameters.Add("@State", SqlDbType.VarChar, 100).Value = state;
                cmd.Parameters.Add("@Country", SqlDbType.VarChar, 100).Value = country;
                cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 100).Value = phone;
                cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = uid;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();

            }
            catch (Exception e)
            {
                string error = e.Message;
            }
        }

        public void updateAdd(String name, String add1, String add2, String add3, String city, int code, String state, String country, string phone, int uid)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                    "update DeliveryAddresses set Name = @USR, AddLine1 = @ADD1, AddLine2 = @ADD2, AddLine3 = @ADD3, City = @City, " +
                    "PostCode = @Code, Country = @Country, Phone = @Phone where UserID = @UID", Conn);

                Conn.Open();

                cmd.Parameters.Add("@USR", SqlDbType.VarChar, 100).Value = name;
                cmd.Parameters.Add("@ADD1", SqlDbType.VarChar, 100).Value = add1;
                cmd.Parameters.Add("@ADD2", SqlDbType.VarChar, 100).Value = add2;
                cmd.Parameters.Add("@ADD3", SqlDbType.VarChar, 100).Value = add3;
                cmd.Parameters.Add("@City", SqlDbType.VarChar, 100).Value = city;
                cmd.Parameters.Add("@Code", SqlDbType.Int, 100).Value = code;
                cmd.Parameters.Add("@State", SqlDbType.VarChar, 100).Value = state;
                cmd.Parameters.Add("@Country", SqlDbType.VarChar, 100).Value = country;
                cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 100).Value = phone;
                cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = uid;

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