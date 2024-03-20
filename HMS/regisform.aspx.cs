using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace sheikh
{
    public partial class Form1 : System.Web.UI.Page
          
    {

        
        SqlConnection sqlcon = new SqlConnection("Data Source=DESKTOP-GEEG7J7;Initial Catalog=medical;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["user_id"] != null)
            //{

            //    if (!Page.IsPostBack)
            //    {

            //        //Write your code here..

            //    }

            //}

            //else

            //{

            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Session Expired!" + "');", true);
            //    Response.Redirect("loginpage.aspx");

            //}

        }
        public void resetfields()
        {
            idbox.Text = "";
            namebox.Text = "";
            quantitybox.Text = "";
            pricebox.Text = "";
            TextBox.Text = "";
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            box1.Text = DateTime.Now.ToString("dd/mm/yyyy  HH:mm:ss");
            string query = "INSERT INTO patient (cnic,fname,lname,bgroup,phone,address,checkin) VALUES (@cnic,@fname,@lname,@bgroup,@phone,@address,@checkin)";
            SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
            sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(idbox.Text));
            sqlCmd.Parameters.AddWithValue("@fname", namebox.Text);
            sqlCmd.Parameters.AddWithValue("@lname", quantitybox.Text);
            sqlCmd.Parameters.AddWithValue("@bgroup", DropDownList0.Text);
            sqlCmd.Parameters.AddWithValue("@phone", Convert.ToInt32(pricebox.Text));
            sqlCmd.Parameters.AddWithValue("@address", TextBox.Text);
            sqlCmd.Parameters.AddWithValue("@checkin", box1.Text);
            

            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Data Entered" + "');", true);
        }


    }
}