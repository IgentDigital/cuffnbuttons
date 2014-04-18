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
    public partial class AccountInfo : System.Web.UI.Page
    {
        cUser objcUser = new cUser();
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                objcUser = (cUser)Session["UserInfo"];

                if (objcUser != null)
                {
                    lblMessage.Text = "";
                    fillData();
                }
                else
                {
                    Response.Redirect("~/Signin.aspx");
                }

            }
        }

        protected void fillData()
        {
            cUser objUserSession = new cUser();
            objUserSession = (cUser)Session["UserInfo"];
            if (objUserSession != null)
            {
                //var objUserSession
                DataSet dsUserInfo = objcUser.GetUserInformation(objUserSession.UserId);

                //DataTable dtUserInfo = dsUserInfo.Tables[0];
                DataTable dtShippingAddress = dsUserInfo.Tables[0];
                DataTable dtBillingAddress = dsUserInfo.Tables[1];

                lblUserWellcomeName.Text = "WELCOME, " + objUserSession.FirstName + " " + objUserSession.LastName + "! <a href='Logout.aspx'>logout</a>";
                txtFirstName.Text = objUserSession.FirstName;
                txtLastName.Text = objUserSession.LastName;
                txtEmailID.Text = objUserSession.EmailID;
                //rdoGender.SelectedItem.Value=
                //txtGender.Text = objUserSession.Gender;
                if (objUserSession.Gender == "Male")
                {
                    rdoGender.SelectedIndex = 0;
                }
                else if (objUserSession.Gender == "Female")
                {
                    rdoGender.SelectedIndex = 1;
                }
                txtDateOfBirth.Text = objUserSession.DateOfBirth;
                txtCity.Text = objUserSession.City;

                if (dtShippingAddress.Rows.Count > 0)
                {
                    txtShipAddLine1.Text = dtShippingAddress.Rows[0]["AddressLine1"].ToString();
                    txtShipAddLine2.Text = dtShippingAddress.Rows[0]["AddressLine2"].ToString();
                    txtShipCity.Text = dtShippingAddress.Rows[0]["City"].ToString();
                    txtShipState.Text = dtShippingAddress.Rows[0]["State"].ToString();
                    ddlShipCountry.SelectedItem.Text = dtShippingAddress.Rows[0]["Country"].ToString();
                    txtShipZip.Text = dtShippingAddress.Rows[0]["Zip"].ToString();
                    txtShipMobile.Text = dtShippingAddress.Rows[0]["Mobile"].ToString();

                }
                if (dtBillingAddress.Rows.Count > 0)
                {
                    txtBillAddLine1.Text = dtBillingAddress.Rows[0]["AddressLine1"].ToString();
                    txtBillAddLine2.Text = dtBillingAddress.Rows[0]["AddressLine2"].ToString();
                    txtBillCity.Text = dtBillingAddress.Rows[0]["City"].ToString();
                    txtBillState.Text = dtBillingAddress.Rows[0]["State"].ToString();
                    ddlBillCountry.SelectedItem.Text = dtBillingAddress.Rows[0]["Country"].ToString();
                    txtBillZip.Text = dtBillingAddress.Rows[0]["Zip"].ToString();
                    txtBillMobile.Text = dtBillingAddress.Rows[0]["Mobile"].ToString();
                }

                txtEmailID.Enabled = false;
            }
        }

        protected void chkBillAddress_CheckedChanged(object sender, EventArgs e)
        {
            if (chkBillAddress.Checked.Equals(true))
            {
                txtBillAddLine1.Text = txtShipAddLine1.Text.Trim();
                txtBillAddLine2.Text = txtShipAddLine2.Text.Trim();
                txtBillCity.Text = txtShipCity.Text.Trim();
                txtBillState.Text = txtShipState.Text.Trim();
                ddlBillCountry.SelectedValue = ddlShipCountry.SelectedValue;
                txtBillZip.Text = txtShipZip.Text.Trim();
                txtBillMobile.Text = txtShipMobile.Text.Trim();
            }
            else if (chkBillAddress.Checked.Equals(false))
            {
                txtBillAddLine1.Text = "";
                txtBillAddLine2.Text = "";
                txtBillCity.Text = "";
                txtBillState.Text = "";
                ddlBillCountry.SelectedIndex = 0;
                txtBillZip.Text = "";
                txtBillMobile.Text = "";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cUser objUserSession = new cUser();
            objUserSession = (cUser)Session["UserInfo"];
            if (Page.IsValid)
            {
                if (objUserSession != null)
                {
                    objcUser.UserId = objUserSession.UserId;
                    objcUser.FirstName = txtFirstName.Text.Trim();
                    objcUser.LastName = txtLastName.Text.Trim();
                    objcUser.EmailID = txtEmailID.Text.Trim();
                    //objcUser.Gender = txtGender.Text.Trim();
                    objcUser.Gender = rdoGender.SelectedValue;
                    objcUser.DateOfBirth = txtDateOfBirth.Text.Trim();
                    objcUser.City = txtCity.Text.Trim();

                    objcUser.ShipAddLine1 = txtShipAddLine1.Text.Trim();
                    objcUser.ShipAddLine2 = txtShipAddLine2.Text.Trim();
                    objcUser.ShipCity = txtShipCity.Text.Trim();
                    objcUser.ShipState = txtShipState.Text.Trim();
                    objcUser.ShipCountry = ddlShipCountry.SelectedItem.Text;
                    objcUser.ShipZip = txtShipZip.Text.Trim();
                    objcUser.ShipMobile = txtShipMobile.Text.Trim();

                    objcUser.BillAddLine1 = txtBillAddLine1.Text.Trim();
                    objcUser.BillAddLine2 = txtBillAddLine2.Text.Trim();
                    objcUser.BillCity = txtBillCity.Text.Trim();
                    objcUser.BillState = txtBillState.Text.Trim();
                    objcUser.BillCountry = ddlBillCountry.SelectedItem.Text;
                    objcUser.BillZip = txtBillZip.Text.Trim();
                    objcUser.BillMobile = txtBillMobile.Text.Trim();

                    int resultUserInfo = objcUser.UpdateUserInformation(objcUser);
                    int resultAddDtl = objcUser.InsertUserAddressDetail(objcUser);
                    if (resultUserInfo > 0 && resultAddDtl > 0)
                    {
                        lblMessage.Text = "Record updated successfully";
                        objUserSession.FirstName = objcUser.FirstName;
                        objUserSession.LastName = objcUser.LastName;
                        objUserSession.Gender = objcUser.Gender;
                        objUserSession.DateOfBirth = objcUser.DateOfBirth;
                        objUserSession.City = objcUser.City;
                        objUserSession.EmailID = objcUser.EmailID;
                        objUserSession.UserId = objcUser.UserId;

                        Session["UserInfo"] = objUserSession;
                    }
                    else
                    {
                        //lblMessage.Text = "Error";
                        if (resultUserInfo > 0 && resultAddDtl <= 0)
                        {
                            lblMessage.Text = "ERROR in adding address information";
                            objUserSession.FirstName = objcUser.FirstName;
                            objUserSession.LastName = objcUser.LastName;
                            objUserSession.Gender = objcUser.Gender;
                            objUserSession.DateOfBirth = objcUser.DateOfBirth;
                            objUserSession.City = objcUser.City;
                            objUserSession.EmailID = objcUser.EmailID;
                            objUserSession.UserId = objcUser.UserId;

                            Session["UserInfo"] = objUserSession; 
                        }
                        else if (resultUserInfo <= 0 && resultAddDtl > 0)
                        {
                            lblMessage.Text = "ERROR in adding User information"; 
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/signin.aspx");
                }
            }
        }
    }
}