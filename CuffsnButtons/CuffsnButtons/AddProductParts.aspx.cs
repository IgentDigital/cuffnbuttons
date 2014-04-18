using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using DAL;

namespace CuffsnButtons
{
    public partial class AddProductParts : System.Web.UI.Page
    {
        cProductMaster objcProductMaster = new cProductMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillData();
                btnSave.Visible = true;
                btnUpdate.Visible = false;
                chkNewRecord.Visible = false;
                lblChkNewRecord.Visible = false;
                lblHeader.Text = "Add Product Parts";
                lblMessage.Text = "";
                fillProductList();
                rfvPartName.ErrorMessage = "Required Field.";
            }
        }

        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            fillData();
        }

        protected void fillProductList()
        {
            DataTable dtProductList = objcProductMaster.GetProductList();
            
            ddlProduct.DataSource = dtProductList;
            ddlProduct.DataTextField = "SKUType";
            ddlProduct.DataValueField = "SKUTypeID";
            DataBind();
            ddlProduct.Items.Insert(0, new ListItem("<--Select Product-->", "0"));
            
        }

        protected void fillData()
        {
            DataTable dtUserData = objcProductMaster.GetProductxParts();

            if (dtUserData.Rows.Count > 0)
            {
                gvDetails.DataSource = dtUserData.DefaultView;
                gvDetails.DataBind();
                lblGridRcrd.Text = "";
                lblGridRcrd.Visible = false;
            }
            else
            {
                lblGridRcrd.Text = "No. Records Available";
                lblGridRcrd.Visible = true;
                //ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                //gvDetails.DataSource = ds;
                //gvDetails.DataBind();
                //int columncount = gvDetails.Rows[0].Cells.Count;
                //gvDetails.Rows[0].Cells.Clear();
                //gvDetails.Rows[0].Cells.Add(new TableCell());
                //gvDetails.Rows[0].Cells[0].ColumnSpan = columncount;
                //gvDetails.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //gvDetails.EditIndex = e.NewEditIndex;
            //BindEmployeeDetails();
        }
        protected void gvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int userid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
            //string username = gvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();
            //TextBox txtcity = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtcity");
            //TextBox txtDesignation = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtDesg");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("update Employee_Details set City='" + txtcity.Text + "',Designation='" + txtDesignation.Text + "' where UserId=" + userid, con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //lblresult.ForeColor = Color.Green;
            //lblresult.Text = username + " Details Updated successfully";
            //gvDetails.EditIndex = -1;
            //BindEmployeeDetails();
        }
        protected void gvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //gvDetails.EditIndex = -1;
            //BindEmployeeDetails();
        }
        protected void gvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int userid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Values["UserId"].ToString());
            //string username = gvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();
            //con.Open();
            //SqlCommand cmd = new SqlCommand("delete from Employee_Details where UserId=" + userid, con);
            //int result = cmd.ExecuteNonQuery();
            //con.Close();
            //if (result == 1)
            //{
            //    BindEmployeeDetails();
            //    lblresult.ForeColor = Color.Red;
            //    lblresult.Text = username + " details deleted successfully";
            //}
        }
        protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("xyx"))
            {
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = gvDetails.Rows[index];
                hdnPartTypeID.Value = ((HiddenField)(row.Cells[3].FindControl("hdnPartType"))).Value;
                ddlProduct.Text = ((HiddenField)(row.Cells[3].FindControl("hdnSKUTypeID"))).Value;
                txtPartName.Text = row.Cells[1].Text;
                chckIsActive.Checked = ((CheckBox)(row.Cells[2].FindControl("IsActive_chck"))).Checked;
                btnSave.Visible = false;
                btnUpdate.Visible = true;
                chkNewRecord.Visible = true;
                lblHeader.Text = "Update Product Parts";
                lblChkNewRecord.Visible = true;
                lblMessage.Text = "";
                //chckIsActive.Checked = 
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcProductMaster.SKUTypeId = Convert.ToInt32(ddlProduct.SelectedValue);// txtCareInstructions.Text.Trim();
                objcProductMaster.PartName = txtPartName.Text.Trim();

                int result = objcProductMaster.SaveProductParts(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "The Record is added successfully.";
                    ddlProduct.SelectedIndex = 0;
                    txtPartName.Text = "";
                    chckIsActive.Checked = false;
                }
                else 
                {
                    lblMessage.Text = "Error Message.";
                }
                fillData();
                controlRefresh();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcProductMaster.SKUTypeId = Convert.ToInt32(ddlProduct.SelectedValue);
                objcProductMaster.PartName = txtPartName.Text.Trim();
                objcProductMaster.IsActive = chckIsActive.Checked;
                objcProductMaster.PartTypeID = Convert.ToInt32(hdnPartTypeID.Value);

                int result = objcProductMaster.UpdateProductParts(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "The Record is updated successfully.";
                    btnUpdate.Visible = false;
                    btnSave.Visible = true;
                    lblHeader.Text = "";
                    chkNewRecord.Visible = false;
                    ddlProduct.SelectedIndex = 0;
                    txtPartName.Text = "";
                    chckIsActive.Checked = false;
                }
                else
                {
                    lblMessage.Text = "Error Message.";
                }
                fillData();
                controlRefresh();
            }
        }

        protected void chkNewRecord_CheckedChanged(object sender, EventArgs e)
        {
            ddlProduct.SelectedIndex = 0;
            txtPartName.Text = "";
            chckIsActive.Checked = true;
            lblMessage.Text = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            chkNewRecord.Visible = false;
            lblChkNewRecord.Visible = false;
            lblHeader.Text = "Add Product Parts";
            fillData();
            controlRefresh();
        }

        public void controlRefresh()
        {
            //chkNewRecord.Checked = false;
            chckIsActive.Checked = false;
        }
    }
}