using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sheikh
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user_id"] = null;
            
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if(text1.Text == "admin")
            {
                if (text2.Text == "admin")
                {
                   
                    //Response.Redirect("waitpage.aspx");
                    Session["user_id"] = 1;
                    Response.Redirect("waitpage.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "USERNAME/PASSWORD INCORRECT!" + "');", true);
                   
                }
            }
            else if (text1.Text == "123")
            {
                if (text2.Text == "456")
                {
                    Response.Redirect("regisform.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "USERNAME/PASSWORD INCORRECT!" + "');", true);
                    //Response.Redirect("loginpage.aspx");
                }
            }
            Response.Redirect("loginpage.aspx");
        }
    }
}