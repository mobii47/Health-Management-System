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
    public partial class patientlist : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM patient", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                patient.DataSource = dtbl;
                patient.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                patient.DataSource = dtbl;
                patient.DataBind();
                patient.Rows[0].Cells.Clear();
                patient.Rows[0].Cells.Add(new TableCell());
                patient.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                patient.Rows[0].Cells[0].Text = "No Data Found ..!";
                patient.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void patient_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO patient (cnic,fname,lname,bgroup,phone,address,checkin) VALUES (@cnic,@fname,@lname,@bgroup,@phone,@address,@checkin)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@cnic", (patient.FooterRow.FindControl("txtcnicFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@fname", (patient.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lname", (patient.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@bgroup", (patient.FooterRow.FindControl("txtbgroupFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@phone", (patient.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@address", (patient.FooterRow.FindControl("txtaddressFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@checkin", (patient.FooterRow.FindControl("txtcheckinFooter") as TextBox).Text.Trim());
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

        protected void patient_RowEditing(object sender, GridViewEditEventArgs e)
        {
            patient.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void patient_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            patient.EditIndex = -1;
            PopulateGridview();
        }

        protected void patient_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE patient SET cnic=@cnic,fname=@fname,lname=@lname,phone=@phone,bgroup=@bgroup,address=@address,checkin=@checkin WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@fname", (patient.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lname", (patient.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@phone", (patient.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@bgroup", (patient.Rows[e.RowIndex].FindControl("txtbgroup") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@address", (patient.Rows[e.RowIndex].FindControl("txtaddress") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@checkin", (patient.Rows[e.RowIndex].FindControl("txtcheckin") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(patient.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    patient.EditIndex = -1;
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

        protected void patient_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM patient WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(patient.DataKeys[e.RowIndex].Value.ToString()));
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

        protected void patient_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}