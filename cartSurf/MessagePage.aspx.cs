using cartSurf.Credentials;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class MessagePage : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (!IsPostBack)
            {
               
                

                DataSet ds2 = new DataSet();
                DataTable T2 = new DataTable();
                T2.Columns.Add("left");
                T2.Columns.Add("right");
                List<List<String>> messagelist = new List<List<string>>();
                Console.WriteLine("seller id " + Request.QueryString["param"]);
                Console.WriteLine("self id " + Session["uid"]);
                messagelist = db.GetMessages(Int32.Parse(Request.QueryString["param"]), Convert.ToInt32(Session["uid"]));
                for(int i = 0; i < messagelist.Count; i++)
                {
                    String[] temp = new string[2];

                    if (messagelist[i][0].Equals("0"))
                    {
                        temp[0] = null;
                        temp[1] = messagelist[i][1];
                        
                        
                    }
                    else
                    {
                        temp[1] = null;
                        temp[0] = messagelist[i][1];
                    }
                    
                    T2.Rows.Add(temp);
                }

                ds2.Tables.Add(T2);
                DataList4.DataSource = ds2;
                DataList4.DataBind();

            }
        }

        protected void message()
        {
            int uid = Convert.ToInt32(Session["uid"]);
            
        }

        public void sendmessage_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int receiverID = Int32.Parse(Request.QueryString["param"]);
            String message = textarea.Text;
            db.sendMessage(uid, receiverID, message);
            textarea.Text = "";
            Page_Load(sender, e);

           

            //int quantity = Int32.Parse(SellerName.Text);

            //Response.Redirect("MessagePage.aspx?param=" + sid);

        }

        public void timer_tick(object sender, EventArgs e)
        {
            



                DataSet ds2 = new DataSet();
                DataTable T2 = new DataTable();
                T2.Columns.Add("left");
                T2.Columns.Add("right");
                List<List<String>> messagelist = new List<List<string>>();
                Console.WriteLine("seller id " + Request.QueryString["param"]);
                Console.WriteLine("self id " + Session["uid"]);
                messagelist = db.GetMessages(Int32.Parse(Request.QueryString["param"]), Convert.ToInt32(Session["uid"]));
                for (int i = 0; i < messagelist.Count; i++)
                {
                    String[] temp = new string[2];

                    if (messagelist[i][0].Equals("0"))
                    {
                        temp[0] = null;
                        temp[1] = messagelist[i][1];


                    }
                    else
                    {
                        temp[1] = null;
                        temp[0] = messagelist[i][1];
                    }

                    T2.Rows.Add(temp);
                }

                ds2.Tables.Add(T2);
                DataList4.DataSource = ds2;
                DataList4.DataBind();
               

            
        }
    }
}