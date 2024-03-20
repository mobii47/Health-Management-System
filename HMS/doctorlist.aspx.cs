using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace sheikh
{
    public partial class doctorlist : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-GEEG7J7;Initial Catalog=medical;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM doctor", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                doctor.DataSource = dtbl;
                doctor.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                doctor.DataSource = dtbl;
                doctor.DataBind();
                doctor.Rows[0].Cells.Clear();
                doctor.Rows[0].Cells.Add(new TableCell());
                doctor.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                doctor.Rows[0].Cells[0].Text = "No Data Found ..!";
                doctor.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void doctor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO doctor (cnic,fname,lname,phone,username,pass,designation) VALUES (@cnic,@fname,@lname,@phone,@username,@pass,@designation)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@cnic", (doctor.FooterRow.FindControl("txtcnicFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@fname", (doctor.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lname", (doctor.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@phone", (doctor.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@username", (doctor.FooterRow.FindControl("txtusernameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@pass", (doctor.FooterRow.FindControl("txtpassFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@designation", (doctor.FooterRow.FindControl("txtdesignationFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void doctor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            doctor.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void doctor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            doctor.EditIndex = -1;
            PopulateGridview();
        }

        protected void doctor_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE doctor SET cnic=@cnic,fname=@fname,lname=@lname,phone=@phone,username=@username,pass=@pass,designation=@designation WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@fname", (doctor.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lname", (doctor.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@phone", (doctor.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@username", (doctor.Rows[e.RowIndex].FindControl("txtusername") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@pass", (doctor.Rows[e.RowIndex].FindControl("txtpass") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@designation", (doctor.Rows[e.RowIndex].FindControl("txtdesignation") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(doctor.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    doctor.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void doctor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM doctor WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(doctor.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void doctor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}