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
    public partial class Form2 : System.Web.UI.Page
    {
       
        SqlConnection sqlcon = new SqlConnection("Data Source=DESKTOP-GEEG7J7;Initial Catalog=new;Integrated Security=True");

        public void Page_Load(object sender, EventArgs e)
        {
            Session["valup"] = null;
        }

        protected void findbutton_Click(object sender, EventArgs e)
        {

            
            
            Session["valup"] = Convert.ToInt32(uptext.Text);

            Response.Redirect("form3.aspx");
            


        }
           

        protected void deletebutton_Click(object sender, EventArgs e)
        {
           // int getcid = Convert.ToInt32(uptext.Text);
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }

            SqlCommand sqlCmd = new SqlCommand("drop_proc", sqlcon);
            sqlCmd.CommandType = CommandType.StoredProcedure;

           // sqlCmd.Parameters.AddWithValue("@cid", getcid);

            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();



            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Sucessfully Deleted" + "');", true);
        }
    }
}