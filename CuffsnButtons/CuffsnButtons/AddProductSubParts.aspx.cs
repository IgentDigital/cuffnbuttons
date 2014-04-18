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
    public partial class AddProductSubParts : System.Web.UI.Page
    {
        cProductMaster objcProductMaster = new cProductMaster();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
                BindEmployeeDetails();
                btnSave.Visible = true;
                btnUpdate.Visible = false;
                chkNewRecord.Visible = false;
                lblChkNewRecord.Visible = false;
                lblHeader.Text = "Add Product Sub Parts";
                fillProductList();
                fillProductPartList(1);
                //rqfvInputFile.ErrorMessage = 
                rfvSubpart.ErrorMessage = "Required Field.";//Resources.Resource1.rfv_message;
                rfvPartName.ErrorMessage = rfvProductName.ErrorMessage = "Required Field.";// Resources.Resource1.rfv_message;
            }
        }


        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindEmployeeDetails();
        }

        protected void fillProductList()
        {
            ddlProductName.DataSource = objcProductMaster.GetProductList();
            ddlProductName.DataTextField = "SKUType";
            ddlProductName.DataValueField = "SKUTypeID";
            ddlProductName.DataBind();
            ddlProductName.Items.Insert(0, new ListItem("<--Select Product Name-->", "0"));
        }

        protected void fillProductPartList(int ProductID)
        {
            ddlPartName.DataSource = objcProductMaster.GetProductxParts(ProductID); //objcProductMaster.GetProductxParts(Convert.ToInt32(ddlProductName.SelectedValue));
            ddlPartName.DataTextField = "PartName";
            ddlPartName.DataValueField = "PartTypeID";
            ddlPartName.DataBind();

            ddlPartName.Items.Insert(0, new ListItem("<--Select Part Name-->", "0"));
        }

        protected void BindEmployeeDetails()
        {
            DataTable dtUserData = objcProductMaster.GetSKUSubPart();

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
                HiddenField ProductId = (HiddenField)(row.Cells[3].FindControl("hdnProductID"));
                ddlProductName.Text = ProductId.Value;
                fillProductPartList(Convert.ToInt32(ProductId.Value));
                ddlPartName.Text = ((HiddenField)(row.Cells[3].FindControl("hdnPartTyprID"))).Value; //((HiddenField)(row.Cells[4].FindControl("PartTyprID"))).Value;                
                hdnSubPartTypeID.Value = ((HiddenField)(row.Cells[4].FindControl("hdnSubPartType"))).Value;
                txtSubPartName.Text = row.Cells[2].Text;
                txtImageURL.Text = row.Cells[3].Text.Replace("&nbsp;", "");                
                chckIsActive.Checked = ((CheckBox)(row.Cells[4].FindControl("IsActive_chck"))).Checked;
                btnSave.Visible = false;
                btnUpdate.Visible = true;
                chkNewRecord.Visible = true;
                lblHeader.Text = "Update Product Sub Parts";
                lblChkNewRecord.Visible = true;
                lblMessage.Text = "";
                //chckIsActive.Checked = 
            }
            //if (e.CommandName.Equals("AddNew"))
            //{
            //    TextBox txtUsrname = (TextBox)gvDetails.FooterRow.FindControl("txtftrusrname");
            //    TextBox txtCity = (TextBox)gvDetails.FooterRow.FindControl("txtftrcity");
            //    TextBox txtDesgnation = (TextBox)gvDetails.FooterRow.FindControl("txtftrDesignation");
            //    con.Open();
            //    SqlCommand cmd =
            //    new SqlCommand(
            //    "insert into Employee_Details(UserName,City,Designation) values('" + txtUsrname.Text + "','" +
            //    txtCity.Text + "','" + txtDesgnation.Text + "')", con);
            //    int result = cmd.ExecuteNonQuery();
            //    con.Close();
            //    if (result == 1)
            //    {
            //        BindEmployeeDetails();
            //        lblresult.ForeColor = Color.Green;
            //        lblresult.Text = txtUsrname.Text + " Details inserted successfully";
            //    }
            //    else
            //    {
            //        lblresult.ForeColor = Color.Red;
            //        lblresult.Text = txtUsrname.Text + " Details not inserted";
            //    }
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcProductMaster.PartTyprID = Convert.ToInt32(ddlPartName.SelectedValue);
                objcProductMaster.SubPartName = txtSubPartName.Text.Trim();

                String filePath = string.Empty;
                if (this.UploadImgURL.HasFile)
                {
                    if (CheckFileType(UploadImgURL.FileName))
                    {
                        filePath = "~/Images/ProductSubPart/" + UploadImgURL.FileName;
                        UploadImgURL.SaveAs(MapPath(filePath));
                        txtImageURL.Text = filePath;
                        //objcProductMaster.CareInstructionIconURL = filePath;
                        objcProductMaster.IconURL = filePath;
                    }
                }
                else 
                {
                    objcProductMaster.IconURL = "";
                }

                int result = objcProductMaster.SaveProductSubParts(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "Record added succesfully"; //Resources.Resource1.RecordAdded;
                    ddlProductName.SelectedIndex = 0;
                    ddlPartName.Items.Clear();
                    txtSubPartName.Text = "";
                    chckIsActive.Checked = false;
                }
                else
                {
                    lblMessage.Text = "Error";// Resources.Resource1.RecordFailure;
                }
                BindEmployeeDetails();
                controlRefresh();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcProductMaster.PartTyprID = Convert.ToInt32(ddlPartName.SelectedValue);
                objcProductMaster.SubPartName = txtSubPartName.Text.Trim();
                String filePath = string.Empty;
                if (this.UploadImgURL.HasFile) 
                {
                    if (CheckFileType(UploadImgURL.FileName))
                    {
                        filePath = "~/Images/ProductSubPart/" + UploadImgURL.FileName;
                        UploadImgURL.SaveAs(MapPath(filePath));
                        txtImageURL.Text = filePath;
                        //objcProductMaster.CareInstructionIconURL = filePath;
                        objcProductMaster.IconURL = filePath;
                    }
                }
                else
                {
                    objcProductMaster.IconURL = txtImageURL.Text;
                }
                objcProductMaster.IsActive = chckIsActive.Checked;
                objcProductMaster.SubPartTypeID = Convert.ToInt32(hdnSubPartTypeID.Value);

                int result = objcProductMaster.UpdateProductSubParts(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "Record updated succesfully"; //Resources.Resource1.RecordUpdated;
                    ddlProductName.SelectedIndex = 0;
                    ddlPartName.Items.Clear();
                    txtSubPartName.Text = "";
                    chckIsActive.Checked = false;
                    btnSave.Visible = true;
                    chkNewRecord.Visible = false;
                    btnUpdate.Visible = false;
                }
                else
                {
                    lblMessage.Text = "Error"; //Resources.Resource1.RecordFailure;
                }
                BindEmployeeDetails();
                controlRefresh();
            }
        }

        protected void chkNewRecord_CheckedChanged(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            chkNewRecord.Visible = false;
            lblChkNewRecord.Visible = false;
            lblHeader.Text = "Add Product Sub Parts";
            ddlProductName.SelectedIndex = 0;
            ddlPartName.Items.Clear();
            txtSubPartName.Text = "";
            BindEmployeeDetails();
            controlRefresh();
        }

        public void controlRefresh()
        {
            //chkNewRecord.Checked = false;
            txtSubPartName.Text = "";
            txtImageURL.Text = "";
            chckIsActive.Checked = false;
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            lblChkNewRecord.Visible = false;
            lblHeader.Text = "Add Product Sub Parts";
        }
        bool CheckFileType(string fileName)
        {
            string ext = System.IO.Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void ddlProductName_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlPartName.Items.Clear();
            if (ddlProductName.SelectedIndex > 0)
            {
                fillProductPartList(Convert.ToInt32(ddlProductName.SelectedValue));
            }
        }
    }
}