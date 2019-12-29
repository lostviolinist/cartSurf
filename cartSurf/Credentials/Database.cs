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

        public String GetProductName(int pid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT ProductName from Products WHERE ProductID = @PID", Conn);

            Conn.Open();
            cmd.Parameters.Add("@PID", SqlDbType.Int, 100).Value = pid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();


            String productName = "";

            if (ds.Tables[0].Rows.Count != 0)
            {
                productName = (String)ds.Tables[0].Rows[0][0];
            }

            return productName;
        }

        public DataSet GetProducts()
        {
            SqlCommand cmd = new SqlCommand(
               "SELECT * from Products", Conn);

            Conn.Open();

            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                byte[] bytes = (byte[])ds.Tables[0].Rows[i][6];
                string strBase64 = Convert.ToBase64String(bytes);
                ds.Tables[0].Rows[i][10] = "data:Image;base64," + strBase64;
            }
            return ds;
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

        //Address Details
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
                    if (i != 5)
                    {
                        addDetails[i] = (String)ds.Tables[0].Rows[0][i];
                    }
                }

                addDetails[5] = Convert.ToString((int)ds.Tables[0].Rows[0][5]);
            }

            return addDetails;
        }

        public Boolean insertAdd(String name, String add1, String add2, String add3, String city, int code, string state, 
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

                return true;
            }
            catch (Exception e)
            {
                string error = e.Message;
            }

            return false;
        }

        public Boolean updateAdd(String name, String add1, String add2, String add3, String city, int code, String state, String country,
            string phone, int uid)
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

                return true;
            }
            catch (Exception e)
            {
                String error = e.Message;
            }

            return false;

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

        //Insert Items into Shopping Cart
        public void InsertItem(int uid, int pid, int quantity)
        {

            if(!gotCart(uid))
            {
                addShoppingCart(uid);                
            }

            int cid = getCartID(uid);


            try
            {
                SqlCommand cmd = new SqlCommand(
                   "insert into CartItems(ProductID, CartID, Quantity)" +
                   "Values(@PID,  @CID, @Quantity); ", Conn);

                Conn.Open();

                cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = pid;
                cmd.Parameters.Add("@CID", SqlDbType.Int, 100).Value = cid;
                cmd.Parameters.Add("@Quantity", SqlDbType.Int, 100).Value = quantity;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();

            }
            catch (Exception e)
            {
                string error = e.Message;
            }
        }

        public Boolean gotCart(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT CartID FROM ShoppingCarts WHERE UserID = @UID", Conn);
            
            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int).Value = uid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            if (ds.Tables[0].Rows.Count != 0)
            {
                return true;
            }
            return false;

        }

        //getCartID of a user
        public int getCartID(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT CartID FROM ShoppingCarts WHERE UserID = @UID", Conn);

            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }

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

        //Add user's shoppingcart
        public void addShoppingCart(int uid)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(
                   "insert into ShoppingCarts(UserID)" +
                   "Values(@UID);", Conn);

                Conn.Open();

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

        public void removeFromCart(int uid)
        {

            int cid = getCartID(uid);

            try
            {
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM CartItems WHERE CartID = @CID", Conn);

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

        /*******************************Order Table**************************************/
        public int getOrderID(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT MAX(OrderID) FROM Orders WHERE CustID = @UID", Conn);

            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int, 100).Value = uid;
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);

            Conn.Close();

            int oid = -1;

            if (ds.Tables[0].Rows.Count != 0)
            {
                oid = (int)ds.Tables[0].Rows[0][0];
            }

            return oid;

        }
        public void checkOut(int uid)
        {            
            insertIntoOrder(uid);
            
            insertIntoOrderDetails(uid);

            removeFromCart(uid);
        }

        public void insertIntoOrder(int uid)
        {
            int cid = getCartID(uid);

            try
            {
                SqlCommand cmd = new SqlCommand(
                   "insert into Orders(CustID, OrderDate)" +
                   "Values(@UID, @Date); ", Conn);

                Conn.Open();

                cmd.Parameters.Add("@UID", SqlDbType.VarChar, 100).Value = uid;
                cmd.Parameters.Add("@Date", SqlDbType.DateTime, 100).Value = DateTime.Now;
                
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                Conn.Close();

            }
            catch (Exception e)
            {
                string error = e.Message;
            }
        }

        public void insertIntoOrderDetails(int uid)
        {
            int cid = getCartID(uid);
            List<List<int>> productQuantity = getCartItemDetails(cid);
            int noOfItem = getRowNum(cid);
            int oid = getOrderID(uid);

            try
            {
                //Insert into orderdetails (Based on number of items in the cart)
                for (int i = 0; i < noOfItem; i++)
                {
                    int pid = productQuantity[i][0];
                    int Quantity = productQuantity[i][1];
                    Decimal price = getProductPrice(pid);
                    Decimal total = price * (Convert.ToDecimal(Quantity));

                    SqlCommand cmd = new SqlCommand(
                       "insert into OrderDetails(OrderID, ProductID, Quantity, ProductTotal, ItemStatus)" +
                       "Values(@OID, @PID, @Quantity, @Total, @Status); ", Conn);

                    Conn.Open();

                    cmd.Parameters.Add("@OID", SqlDbType.Int, 100).Value = oid;
                    cmd.Parameters.Add("@PID", SqlDbType.Int, 100).Value = pid;
                    cmd.Parameters.Add("@Quantity", SqlDbType.Int, 100).Value = Quantity;
                    cmd.Parameters.Add("@Total", SqlDbType.Decimal, 100).Value = total;
                    cmd.Parameters.Add("@Status", SqlDbType.VarChar, 100).Value = "ToShip";                    

                    cmd.ExecuteNonQuery();
                    cmd.Dispose();

                    Conn.Close();
                }
            }
            catch (Exception e)
            {
                string error = e.Message;
            }
        }

        public DataSet GetToShip(int uid)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT Users.Username AS Seller, Products.ProductName AS ProductName, Products.ProductUnitPrice AS UnitPrice, " +
                "OrderDetails.Quantity AS Quantity, OrderDetails.ProductTotal AS Total " +
                "FROM OrderDetails JOIN Orders ON Orders.OrderID = OrderDetails.OrderID " +
                "JOIN Products ON Products.ProductID = OrderDetails.ProductID " +
                "JOIN Users ON Users.UserID = Products.SellerID " +
                "WHERE CustID = @UID AND OrderDetails.ItemStatus = @IS", Conn);

            Conn.Open();

            cmd.Parameters.Add("@UID", SqlDbType.Int).Value = uid;
            cmd.Parameters.Add("@IS", SqlDbType.VarChar).Value = "ToShip";
            SqlDataAdapter ada = new SqlDataAdapter(cmd);

            DataSet data = new DataSet();
            ada.Fill(data);

            Conn.Close();

            return data;
        }

    }



}