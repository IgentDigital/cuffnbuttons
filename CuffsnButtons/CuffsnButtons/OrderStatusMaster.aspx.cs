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
    public partial class OrderStatusMaster : System.Web.UI.Page
    {
        cOrderSkuType objcOrderSkuType = new cOrderSkuType();
        //cUser objUserSession = new cUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //objUserSession = (cUser)Session["UserInfo"];

                //if (objUserSession != null)
                //{
                    //hdnUserId.Value = Convert.ToString(objUserSession.UserId);
                    //lblUserWellcomeName.Text = "WELCOME, " + objUserSession.FirstName + " " + objUserSession.LastName + "! <a href='Logout.aspx'>logout</a>";
                //gvDetails.PageIndex = 1;
                    BindEmployeeDetails();
                    pnlstatus.Visible = false;
                    ddlStatus.DataSource = objcOrderSkuType.GetStatusTypeList().DefaultView;
                    ddlStatus.DataTextField = "StatusDescription";
                    ddlStatus.DataValueField = "StatusId";
                    ddlStatus.DataBind();
                    ListItem newItem_FbrcTyp = new ListItem();
                    newItem_FbrcTyp.Text = "Select New Status";
                    newItem_FbrcTyp.Value = "";
                    ddlStatus.Items.Insert(0, newItem_FbrcTyp);

                //}
                //else
                //{
                //    Response.Redirect("SignIn.aspx");
                //}

            }
        }

        protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindEmployeeDetails();
        }

        protected void BindEmployeeDetails()
        {
            //objUserSession = (cUser)Session["UserInfo"];
            DataSet dtUserData = objcOrderSkuType.GetAllOrderInformation();

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
                pnlstatus.Visible = true;
                //hdnUserID.Value = ((HiddenField)(row.Cells[3].FindControl("hdnUser"))).Value;
                lblOrderId.Text = "ID:&nbsp;" + row.Cells[0].Text + "&nbsp; <b> [ Item" + row.Cells[1].Text + "] </b>" ;
                foreach (ListItem abc in ddlStatus.Items)
                { 
                    if(abc.Text.Trim().ToUpper() == ((LinkButton)(row.Cells[5].FindControl("lnkUpdate"))).Text.Trim().ToUpper())
                    {
                        ddlStatus.SelectedValue  = abc.Value;
                        break;
                    }
                }
                hdnStkStatusId.Value = ((HiddenField)(row.Cells[5].FindControl("hdnOrderStatusId"))).Value;
                hdnSkuTypeId.Value = ((HiddenField)(row.Cells[5].FindControl("hdnOrderSkuTypeId"))).Value;
                hdnSkuTypeStatusId.Value = ((HiddenField)(row.Cells[5].FindControl("hdnOrderSkuTypeStatusId"))).Value;
                pnlstatus.Enabled = true;
                pnlstatus.Visible = true;
                //ddlStatus.Text = 
                //txtFirstName.Text = row.Cells[0].Text.Split(' ')[0].ToString();
                //txtLastName.Text = row.Cells[0].Text.Split(' ')[1].ToString();
                //txtEmail.Text = row.Cells[1].Text;
                //txtPassword.Text = txtConfirmPassword.Text = ((HiddenField)(row.Cells[2].FindControl("hdnUserPwd"))).Value;

            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int initialPageIndex = gvDetails.PageIndex;
            int PageIndexes = gvDetails.PageCount;
            int PageIndexI = 0;
            for (int j = 0; j < PageIndexes; j++)
            {
                bool flg = false;
                gvDetails.PageIndex = j;
                BindEmployeeDetails();
                for (int i = 0; i < gvDetails.Rows.Count; i++)
                {
                    GridViewRow row = gvDetails.Rows[i];
                    if (txtOrderId.Text.Trim().ToUpper() == row.Cells[1].Text.Trim().ToUpper())
                    {
                        gvDetails.SelectRow(i);
                        gvDetails.SelectedRowStyle.BackColor = System.Drawing.Color.Yellow;
                        flg = true;
                        break;

                    }
                }
                if (flg)
                {
                    break;
                }
                //PageIndexI = PageIndexI + 1;
            }

        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            objcOrderSkuType.OrderSkuTypeId = Convert.ToInt32(hdnSkuTypeId.Value);
            objcOrderSkuType.OrderSkyTypeStatusId = Convert.ToInt32(hdnSkuTypeStatusId.Value);
            objcOrderSkuType.OrderStatusId = Convert.ToInt32(ddlStatus.SelectedItem.Value);
            int result = objcOrderSkuType.SaveStatusMap(objcOrderSkuType);
            if (result > 0)
            {
                lblMessage.Text = "The Record is Updates successfully.";
                pnlstatus.Enabled = false;
                
            }
            else
            {
                lblMessage.Text = "Error Message.";
            }
            BindEmployeeDetails();

//            @OrderSkuTypeStatusId int,
//@OrderSkuTypeId int,
//@OrderStatusId int

        }

        
    }
}