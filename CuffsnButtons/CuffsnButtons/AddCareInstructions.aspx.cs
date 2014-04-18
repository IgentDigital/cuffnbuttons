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
    public partial class AddCareInstructions : System.Web.UI.Page
    {
        cProductMaster objcProductMaster = new cProductMaster();
        //cUser objUserSession = new cUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //objUserSession = (cUser)Session["UserInfo"];

                //if (objUserSession != null  && objUserSession.UserType.Trim().ToUpper() == "ADMIN)
                //{
                //    //hdnUserId.Value = Convert.ToString(objUserSession.UserId);
                //    lblUserWellcomeName.Text = "WELCOME, " + objUserSession.FirstName + " " + objUserSession.LastName + "! <a href='Logout.aspx'>logout</a>";
                //    string jv_scrpt = string.Format("javascript:lookup7({0});lookup8({0});lookup9({0});", objUserSession.UserId);
                //    ScriptManager.RegisterStartupScript(this, GetType(), "alert", jv_scrpt, true);
                //}
                //else
                //{
                //    Response.Redirect("SignIn.aspx");
                //}
                //lblMessage.Text = "";
                BindEmployeeDetails();
                btnSave.Visible = true;
                btnUpdate.Visible = false;
                chkNewRecord.Visible = false;
                lblChkNewRecord.Visible = false;
                lblHeader.Text = "Add Care Instructions";
                rfvCareInstruction.ErrorMessage = "Required field.";
            }
        }

        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindEmployeeDetails();
        }

        protected void BindEmployeeDetails()
        {
            DataTable dtUserData = objcProductMaster.GetCareInstructions();

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
                hdnCareInstructionID.Value = ((HiddenField)(row.Cells[3].FindControl("hdnCareInstruction"))).Value;
                txtCareInstructions.Text = row.Cells[0].Text;
                txtImageURL.Text = row.Cells[1].Text.Replace("&nbsp;", "");
                chckIsActive.Checked = ((CheckBox)(row.Cells[2].FindControl("IsActive_chck"))).Checked;
                btnSave.Visible = false;
                btnUpdate.Visible = true;
                chkNewRecord.Visible = true;
                lblHeader.Text = "Update Care Instructions";
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
                objcProductMaster.CareInstruction = txtCareInstructions.Text.Trim();
                
                String filePath=string.Empty;
                if (this.UploadImgURL.HasFile)
                {
                    if (CheckFileType(UploadImgURL.FileName))
                    {
                        filePath = "~/Images/" + UploadImgURL.FileName;
                        UploadImgURL.SaveAs(MapPath(filePath));
                        txtImageURL.Text = filePath;
                        objcProductMaster.CareInstructionIconURL = filePath;
                    }
                }
                else
                {
                    objcProductMaster.CareInstructionIconURL = "";
                }
                
                int result = objcProductMaster.SaveCareInstructions(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "The Record is added successfully.";
                    txtCareInstructions.Text = "";
                    txtImageURL.Text = "";
                    chckIsActive.Checked = false;
                }
                else
                {
                    lblMessage.Text = "Error Message";
                }
                BindEmployeeDetails();
                controlRefresh();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcProductMaster.CareInstruction = txtCareInstructions.Text.Trim();
                //objcProductMaster.CareInstructionIconURL = txtImageURL.Text.Trim();
                objcProductMaster.IsActive = chckIsActive.Checked;
                objcProductMaster.CareInstructionID = Convert.ToInt32(hdnCareInstructionID.Value);

                String filePath = string.Empty;
                if (this.UploadImgURL.HasFile)
                {
                    if (CheckFileType(UploadImgURL.FileName))
                    {
                        filePath = "~/Images/" + UploadImgURL.FileName;
                        UploadImgURL.SaveAs(MapPath(filePath));
                        txtImageURL.Text = filePath;
                        objcProductMaster.CareInstructionIconURL = filePath;
                    }
                }
                else
                {
                    objcProductMaster.CareInstructionIconURL = txtImageURL.Text;
                }

                int result = objcProductMaster.UpdateCareInstructions(objcProductMaster);
                if (result > 0)
                {
                    lblMessage.Text = "The Record is updated successfully.";
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;
                    txtCareInstructions.Text = "";
                    txtImageURL.Text = "";
                    chckIsActive.Checked = false;
                    chkNewRecord.Visible = false;
                    lblHeader.Text = "Add Care Instructions";
                }
                else 
                {
                    lblMessage.Text = "Error Message.";
                }
                BindEmployeeDetails();
                controlRefresh();
            }
        }

        protected void chkNewRecord_CheckedChanged(object sender, EventArgs e)
        {
            txtCareInstructions.Text = "";
            txtImageURL.Text = "";
            lblMessage.Text = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            chkNewRecord.Visible = false;
            lblChkNewRecord.Visible = false;
            lblHeader.Text = "Add Care Instructions";
            BindEmployeeDetails();
            controlRefresh();
        }

        public void controlRefresh()
        {
            //chkNewRecord.Checked = false;
            chckIsActive.Checked = false;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
           
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
    }
}