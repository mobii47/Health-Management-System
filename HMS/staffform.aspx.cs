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
    public partial class staffform : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM staff", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                staff.DataSource = dtbl;
                staff.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                staff.DataSource = dtbl;
                staff.DataBind();
                staff.Rows[0].Cells.Clear();
                staff.Rows[0].Cells.Add(new TableCell());
                staff.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                staff.Rows[0].Cells[0].Text = "No Data Found ..!";
                staff.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void staff_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO staff (cnic,fname,lname,phone,username,pass,designation) VALUES (@cnic,@fname,@lname,@phone,@username,@pass,@designation)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@cnic", (staff.FooterRow.FindControl("txtcnicFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@fname", (staff.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lname", (staff.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@phone", (staff.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@username", (staff.FooterRow.FindControl("txtusernameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@pass", (staff.FooterRow.FindControl("txtpassFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@designation", (staff.FooterRow.FindControl("txtdesignationFooter") as TextBox).Text.Trim());
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

        protected void staff_RowEditing(object sender, GridViewEditEventArgs e)
        {
            staff.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void staff_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            staff.EditIndex = -1;
            PopulateGridview();
        }

        protected void staff_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE staff SET cnic=@cnic,fname=@fname,lname=@lname,phone=@phone,username=@username,pass=@pass,designation=@designation WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@fname", (staff.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lname", (staff.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@phone", (staff.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@username", (staff.Rows[e.RowIndex].FindControl("txtusername") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@pass", (staff.Rows[e.RowIndex].FindControl("txtpass") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@designation", (staff.Rows[e.RowIndex].FindControl("txtdesignation") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(staff.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    staff.EditIndex = -1;
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

        protected void staff_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM staff WHERE cnic = @cnic";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@cnic", Convert.ToInt32(staff.DataKeys[e.RowIndex].Value.ToString()));
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

        protected void staff_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}