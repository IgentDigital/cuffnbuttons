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
    public partial class MyOrderHistory : System.Web.UI.Page
    {
        cOrderSkuType objcOrderSkuType = new cOrderSkuType();
        cUser objUserSession = new cUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                objUserSession = (cUser)Session["UserInfo"];

                if (objUserSession != null)
                {
                    //hdnUserId.Value = Convert.ToString(objUserSession.UserId);
                    lblUserWellcomeName.Text = "WELCOME, " + objUserSession.FirstName + " " + objUserSession.LastName + "! <a href='Logout.aspx'>logout</a>";
                    BindEmployeeDetails();
                }
                else
                {
                    Response.Redirect("SignIn.aspx");
                }
               
            }
        }

        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindEmployeeDetails();
        }

        protected void BindEmployeeDetails()
        {
            objUserSession = (cUser)Session["UserInfo"];
            DataSet dtUserData = objcOrderSkuType.GetOrderInformation(objUserSession.UserId);

            if (dtUserData.Tables.Count > 0)
            {
                if (dtUserData.Tables[0].Rows.Count > 0)
                {
                    gvDetails.DataSource = dtUserData.Tables[0].DefaultView;
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
            else
            { 
            
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
                //hdnUserID.Value = ((HiddenField)(row.Cells[3].FindControl("hdnUser"))).Value;
                //txtFirstName.Text = row.Cells[0].Text.Split(' ')[0].ToString();
                //txtLastName.Text = row.Cells[0].Text.Split(' ')[1].ToString();
                //txtEmail.Text = row.Cells[1].Text;
                //txtPassword.Text = txtConfirmPassword.Text = ((HiddenField)(row.Cells[2].FindControl("hdnUserPwd"))).Value;

            }

        }
    }
}