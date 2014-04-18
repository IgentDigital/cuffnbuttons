using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;

namespace CuffsnButtons
{
    public partial class AddAdminUser : System.Web.UI.Page
    {
        cUser objcUser = new cUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rfvConfirmPassword.ErrorMessage = rfvEmail.ErrorMessage = rfvFirstName.ErrorMessage = rfvLastName.ErrorMessage = rfvPassword.ErrorMessage = "Required Field.";
                cvConfirmPassword.ErrorMessage = "Password and Confirm Password must be equal.";
                BindEmployeeDetails();
            }
        }

        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindEmployeeDetails();
        }

        protected void BindEmployeeDetails()
        {
            DataTable dtUserData = objcUser.GetAdminUserList();

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
              
            }
        }

        protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }
        protected void gvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
        }
        protected void gvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
          
        }
        protected void gvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
        }
        protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("xyx"))
            {
                int index = Convert.ToInt32(e.CommandArgument);

               
                GridViewRow row = gvDetails.Rows[index];
                hdnUserID.Value = ((HiddenField)(row.Cells[3].FindControl("hdnUser"))).Value;
                txtFirstName.Text = row.Cells[0].Text.Split(' ')[0].ToString();
                txtLastName.Text = row.Cells[0].Text.Split(' ')[1].ToString();
                txtEmail.Text = row.Cells[1].Text;
                txtPassword.Text = txtConfirmPassword.Text = ((HiddenField)(row.Cells[2].FindControl("hdnUserPwd"))).Value;

            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcUser.FirstName = txtFirstName.Text.Trim();
                objcUser.LastName = txtLastName.Text.Trim();
                objcUser.EmailID = txtEmail.Text.Trim();
                objcUser.Password = txtPassword.Text.Trim();
                objcUser.UserType = "Admin";
                DataSet dtUserData = objcUser.Duplicate_user(txtEmail.Text.Trim()); 
                if (dtUserData.Tables[0].Rows.Count > 0)
                {
                    lblMessage.Text = "User already exist."; ;
                }
                else
                {
                    int result = objcUser.SaveUserType(objcUser);
                    if (result > 0)
                    {
                        lblMessage.Text = "Record Added";
                    }
                    else
                    {
                        lblMessage.Text = "Error";
                    }
                }
            }
        }
    }
}