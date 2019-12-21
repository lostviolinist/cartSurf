using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (MenuItem menuitem in MenuHeader.Items)
            {

                foreach (MenuItem submenuitem in menuitem.ChildItems)
                {
                        // coloring the sub menu item
                        submenuitem.Text = "<div style='color: Black'>" + submenuitem.Text + "</div>";
                }

            }

            String username = Convert.ToString(Session["username"]);
            LbUserShow.Text = "Hello, " + username;


        }
    }
}