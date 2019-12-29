using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class Profile : System.Web.UI.MasterPage
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            displayPic(uid);
        }

        protected void displayPic(int uid)
        {
            String image = db.getImage(uid);
            Image.ImageUrl = "Images/" + image;
        }

        protected void BtnChgPic_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            if (FileUploadControl.HasFile)
            {
                try
                {
                    String filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/Images/" + filename));

                    //Store it unto database
                    db.updateImage(uid, filename);                    

                    StatusLabel.Text = "Upload status: Successful!";

                    displayPic(uid);
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}