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
    public partial class SignIn : System.Web.UI.Page
    {
        cUser objcUserController = new cUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rfvLoginEmailId.ErrorMessage = rfvLoginPassword.ErrorMessage = rfvCity.ErrorMessage = rfvConfirmPassword.ErrorMessage = rfvEmail.ErrorMessage = rfvFirstName.ErrorMessage = rfvLastName.ErrorMessage = rfvPassword.ErrorMessage = "Required field.";
                revEmail.ErrorMessage = "Invalid Email ID.";
                cvConfirmPassword.ErrorMessage = "<br/> Password and Confirm password must be same.";

                //CustomValidator1.ValidationGroup = 
                btnSave.ValidationGroup = cvConfirmPassword.ValidationGroup = revEmail.ValidationGroup = rfvCity.ValidationGroup = rfvConfirmPassword.ValidationGroup = rfvEmail.ValidationGroup = rfvFirstName.ValidationGroup = rfvLastName.ValidationGroup = rfvPassword.ValidationGroup = "Registration_validator";
                btnLogin.ValidationGroup = rfvLoginEmailId.ValidationGroup = rfvLoginPassword.ValidationGroup = "Registration_Login";
                rfvCity.ForeColor = rfvConfirmPassword.ForeColor = rfvEmail.ForeColor = rfvFirstName.ForeColor = rfvLastName.ForeColor = rfvLoginEmailId.ForeColor = rfvLoginPassword.ForeColor = rfvPassword.ForeColor = System.Drawing.Color.Red;
                revEmail.ForeColor = System.Drawing.Color.Red;

                pnlRegister.Visible = false;
                pnlRegister_Not.Visible = true;
                rfvLoginEmailId.ErrorMessage = rfvLoginPassword.ErrorMessage = "Required Field.";
                //btnLogin.ValidationGroup = rfvLoginEmailId.ValidationGroup = rfvLoginPassword.ValidationGroup = "Registration_validator";
            }
        }


        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {
                if (Page.IsValid)
                {
                    objcUserController.Password = txtLoginPassword.Text.Trim();
                    objcUserController.EmailID = txtLoginEmailId.Text.Trim();
                    DataSet dtUserData = objcUserController.ValidateLogin(objcUserController);

                    if (dtUserData.Tables[0].Rows.Count > 0)
                    {
                        cUser objcUserSession = new cUser();
                        //List<String> list = new List<String>();
                        // UserId, FirstName, LastName, EmailID, [Password], Gender, BirthDate, City, Country
                        objcUserSession.UserId = Convert.ToInt32(dtUserData.Tables[0].Rows[0][0].ToString());
                        objcUserSession.FirstName = dtUserData.Tables[0].Rows[0][1].ToString();
                        objcUserSession.LastName = dtUserData.Tables[0].Rows[0][2].ToString();
                        objcUserSession.EmailID = dtUserData.Tables[0].Rows[0][3].ToString();
                        objcUserSession.Password = dtUserData.Tables[0].Rows[0][4].ToString();
                        objcUserSession.Gender = dtUserData.Tables[0].Rows[0][5].ToString();
                        objcUserSession.DateOfBirth = dtUserData.Tables[0].Rows[0][6].ToString();
                        objcUserSession.City = dtUserData.Tables[0].Rows[0][7].ToString();
                        objcUserSession.Country = dtUserData.Tables[0].Rows[0][8].ToString();

                        objcUserSession.UserType = dtUserData.Tables[0].Rows[0][9].ToString();


                        Session["UserInfo"] = objcUserSession;
                        if (string.IsNullOrEmpty(objcUserSession.UserType))
                        {
                            Response.Redirect("~/Default.aspx");
                        }
                        else if (objcUserSession.UserType.Trim().ToUpper() == "ADMIN")
                        {
                            Response.Redirect("~/ProductMaster.aspx");
                        }

                    }
                    else
                    {
                        bool abc = objcUserController.UserExist(objcUserController.EmailID);
                        if (abc)
                        {
                            lblLoginMessage.Text = "Invalid Password.";
                        }
                        else
                        {
                            lblLoginMessage.Text = "User Does not exist.";
                        }
                    }
                }
            }
        }

        protected void btnCall_Click(object sender, ImageClickEventArgs e)
        {
            pnlRegister.Visible = true;
            pnlRegister_Not.Visible = false;
        }

        //protected void btnSave_Click(object sender, ImageClickEventArgs e)
        //{
        //    ////dynamic abc = Membership.CreateUser("Amit", "amitkumar", "abc@abc.com");
        //    ////Roles.AddUserToRole("Amit", "Admin");
        //    //dynamic get_role = Roles.GetAllRoles();
        //    //string abc_str ="";
        //    //foreach (string itm in get_role)
        //    //{
        //    //    abc_str = abc_str + itm;
        //    //}



        //    if (Page.IsValid)
        //    {
        //        objcUserController.FirstName = txtfirstName.Text.Trim();
        //        objcUserController.LastName = txtLastName.Text.Trim();
        //        objcUserController.Password = txtPassword.Text.Trim();
        //        objcUserController.EmailID = txtEmail.Text.Trim();
        //        objcUserController.City = txtCity.Text.Trim();
        //        objcUserController.Country = ddlCountry.SelectedItem.Text.Trim();
        //        DataSet dtUserData = objcUserController.Duplicate_user(txtEmail.Text.Trim()); //objcUserController.Duplicate_user(txtEmail.Text.Trim());
        //        if (dtUserData.Tables[0].Rows.Count > 0)
        //        {
        //            lblSignMessage.Text = "User already exist."; ;
        //        }
        //        else
        //        {
        //            int Result = objcUserController.SaveUser(objcUserController);
        //            if (Result > 0)
        //            {
        //                lblSignMessage.Text = "Your account created successfully.<br/> Now login with your initials";
        //                txtCity.Text = string.Empty;
        //                txtEmail.Text = string.Empty;
        //                txtfirstName.Text = string.Empty;
        //                txtLastName.Text = string.Empty;

        //                //Response.Redirect("~/accountinfo.aspx");
        //            }
        //            else
        //            {
        //                lblSignMessage.Text = "ErrorMessage.";
        //            }
        //        }
        //    }


        //}
        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            ////dynamic abc = Membership.CreateUser("Amit", "amitkumar", "abc@abc.com");
            ////Roles.AddUserToRole("Amit", "Admin");
            //dynamic get_role = Roles.GetAllRoles();
            //string abc_str ="";
            //foreach (string itm in get_role)
            //{
            //    abc_str = abc_str + itm;
            //}



            if (Page.IsValid)
            {
                objcUserController.FirstName = txtfirstName.Text.Trim();
                objcUserController.LastName = txtLastName.Text.Trim();
                objcUserController.Password = txtPassword.Text.Trim();
                objcUserController.EmailID = txtEmail.Text.Trim();
                objcUserController.City = txtCity.Text.Trim();
                objcUserController.Country = ddlCountry.SelectedItem.Text.Trim();
                DataSet dtUserDataInfo = objcUserController.Duplicate_user(txtEmail.Text.Trim()); //objcUserController.Duplicate_user(txtEmail.Text.Trim());
                if (dtUserDataInfo.Tables[0].Rows.Count > 0)
                {
                    lblSignMessage.Text = "User already exist."; ;
                }
                else
                {
                    int Result = objcUserController.SaveUser(objcUserController);
                    if (Result > 0)
                    {
                        DataSet dtUserData = objcUserController.ValidateLogin(objcUserController);

                        if (dtUserData.Tables[0].Rows.Count > 0)
                        {
                            cUser objcUserSession = new cUser();
                            //List<String> list = new List<String>();
                            // UserId, FirstName, LastName, EmailID, [Password], Gender, BirthDate, City, Country
                            objcUserSession.UserId = Convert.ToInt32(dtUserData.Tables[0].Rows[0][0].ToString());
                            objcUserSession.FirstName = dtUserData.Tables[0].Rows[0][1].ToString();
                            objcUserSession.LastName = dtUserData.Tables[0].Rows[0][2].ToString();
                            objcUserSession.EmailID = dtUserData.Tables[0].Rows[0][3].ToString();
                            objcUserSession.Password = dtUserData.Tables[0].Rows[0][4].ToString();
                            objcUserSession.Gender = dtUserData.Tables[0].Rows[0][5].ToString();
                            objcUserSession.DateOfBirth = dtUserData.Tables[0].Rows[0][6].ToString();
                            objcUserSession.City = dtUserData.Tables[0].Rows[0][7].ToString();
                            objcUserSession.Country = dtUserData.Tables[0].Rows[0][8].ToString();

                            objcUserSession.UserType = dtUserData.Tables[0].Rows[0][9].ToString();


                            Session["UserInfo"] = objcUserSession;
                            if (string.IsNullOrEmpty(objcUserSession.UserType))
                            {
                                Response.Redirect("~/Default.aspx");
                            }
                            else if (objcUserSession.UserType.Trim().ToUpper() == "ADMIN")
                            {
                                Response.Redirect("~/ProductMaster.aspx");
                            }
                        }

                        //lblSignMessage.Text = "Your account created successfully.<br/> Now login with your initials";
                        //txtCity.Text = string.Empty;
                        //txtEmail.Text = string.Empty;
                        //txtfirstName.Text = string.Empty;
                        //txtLastName.Text = string.Empty;

                        //Response.Redirect("~/accountinfo.aspx");
                    }
                    else
                    {
                        lblSignMessage.Text = "ErrorMessage.";
                    }
                }
            }


        }
    }
}