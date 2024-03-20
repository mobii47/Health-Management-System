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
    public partial class salesreport : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM expense", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                expense.DataSource = dtbl;
                expense.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                expense.DataSource = dtbl;
                expense.DataBind();
                expense.Rows[0].Cells.Clear();
                expense.Rows[0].Cells.Add(new TableCell());
                expense.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                expense.Rows[0].Cells[0].Text = "No Data Found ..!";
                expense.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void expense_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO expense (id,month,income,expense,tax) VALUES (@id,@month,@income,@expense,@tax)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id", (expense.FooterRow.FindControl("txtidFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@month", (expense.FooterRow.FindControl("txtmonthFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@income", (expense.FooterRow.FindControl("txtincomeFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@expense", (expense.FooterRow.FindControl("txtexpenseFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@tax", (expense.FooterRow.FindControl("txttaxFooter") as TextBox).Text.Trim());
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

        protected void expense_RowEditing(object sender, GridViewEditEventArgs e)
        {
            expense.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void expense_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            expense.EditIndex = -1;
            PopulateGridview();
        }

        protected void expense_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE expense SET id=@id,month=@month,income=@income,expense=@expense,tax=@tax WHERE id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@month", (expense.Rows[e.RowIndex].FindControl("txtmonth") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@income", (expense.Rows[e.RowIndex].FindControl("txtincome") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@expense", (expense.Rows[e.RowIndex].FindControl("txtexpense") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@tax", (expense.Rows[e.RowIndex].FindControl("txttax") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(expense.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    expense.EditIndex = -1;
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

        protected void expense_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM expense WHERE id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(expense.DataKeys[e.RowIndex].Value.ToString()));
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

        protected void expense_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}