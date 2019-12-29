using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{    
    public partial class ToShip : System.Web.UI.Page
    {
        Database db = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            displayToShipItem(uid);
        }

        protected void displayToShipItem(int uid)
        {
            ToShipData.DataSource = db.GetToShip(uid);
            ToShipData.DataBind();
        }
    }
}