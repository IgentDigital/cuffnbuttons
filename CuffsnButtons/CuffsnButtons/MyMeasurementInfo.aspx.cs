using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Web.Services;
using System.Data.SqlClient;

namespace CuffsnButtons
{
    public partial class MyMeasurementInfo : System.Web.UI.Page
    {
        cUser objUserSession = new cUser();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                objUserSession = (cUser)Session["UserInfo"];
                
                if (objUserSession != null)
                {
                    hdnUserId.Value = Convert.ToString(objUserSession.UserId);
                    lblUserWellcomeName.Text = "WELCOME, " + objUserSession.FirstName + " " + objUserSession.LastName + "! <a href='Logout.aspx'>logout</a>";
                    string jv_scrpt = string.Format("javascript:lookup7({0});lookup8({0});lookup9({0});", objUserSession.UserId);
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", jv_scrpt, true);
                }
                else
                {
                    Response.Redirect("SignIn.aspx");
                }
            }
        }

        [WebMethod]
        public static string GetFunction_update(string txtProfileName, string txtLength, string txtChest, string txtWaist, string txtHip, string txtSleeves, string txtShoulder, string txtNeck, string txtCuff_Wrist, int hdnUserId, int stdId)
        {
            string abc = "";
            cUserMeasurement objcUserMeasurement = new cUserMeasurement();
            objcUserMeasurement.UserId = hdnUserId;
            objcUserMeasurement.CustomerMeasurementID = stdId;
            objcUserMeasurement.Profile_Name = txtProfileName.Trim();
            if (!string.IsNullOrEmpty(txtLength.Trim()))
            {
                objcUserMeasurement.Shirt_Length = Convert.ToDecimal(txtLength.Trim());
            }
            if (!string.IsNullOrEmpty(txtChest.Trim()))
            {
                objcUserMeasurement.chest = Convert.ToDecimal(txtChest.Trim());
            }
            if (!string.IsNullOrEmpty(txtWaist.Trim()))
            {
                objcUserMeasurement.Stomach = Convert.ToDecimal(txtWaist.Trim());
            }
            if (!string.IsNullOrEmpty(txtHip.Trim()))
            {
                objcUserMeasurement.mid_section = Convert.ToDecimal(txtHip.Trim());
            }
            if (!string.IsNullOrEmpty(txtSleeves.Trim()))
            {
                objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(txtSleeves.Trim());
            }
            if (!string.IsNullOrEmpty(txtShoulder.Trim()))
            {
                objcUserMeasurement.shoulder = Convert.ToDecimal(txtShoulder.Trim());
            }
            if (!string.IsNullOrEmpty(txtCuff_Wrist.Trim()))
            {
                objcUserMeasurement.Cuff = Convert.ToDecimal(txtCuff_Wrist.Trim());
            }
            if (!string.IsNullOrEmpty(txtNeck.Trim()))
            {
                objcUserMeasurement.Collar = Convert.ToDecimal(txtNeck.Trim());
            }

            int result = objcUserMeasurement.UpdateMeasurements(objcUserMeasurement);
            if (result > 0)
            {
                abc = "The Record is updated successfully.";
            }
            else
            {
                abc = "ErrorMessage.";
            }

            try
            {
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

        [WebMethod]
        public static string GetFunction(string txtProfileName, string txtLength, string txtChest, string txtWaist, string txtHip, string txtSleeves, string txtShoulder, string txtNeck, string txtCuff_Wrist, int hdnUserId)
        {
            string abc = "";
            cUserMeasurement objcUserMeasurement = new cUserMeasurement();
            objcUserMeasurement.UserId = hdnUserId;
            objcUserMeasurement.Profile_Name = txtProfileName.Trim();
            if (!string.IsNullOrEmpty(txtLength.Trim()))
            {
                objcUserMeasurement.Shirt_Length = Convert.ToDecimal(txtLength.Trim());
            }
            if (!string.IsNullOrEmpty(txtChest.Trim()))
            {
                objcUserMeasurement.chest = Convert.ToDecimal(txtChest.Trim());
            }
            if (!string.IsNullOrEmpty(txtWaist.Trim()))
            {
                objcUserMeasurement.Stomach = Convert.ToDecimal(txtWaist.Trim());
            }
            if (!string.IsNullOrEmpty(txtHip.Trim()))
            {
                objcUserMeasurement.mid_section = Convert.ToDecimal(txtHip.Trim());
            }
            if (!string.IsNullOrEmpty(txtSleeves.Trim()))
            {
                objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(txtSleeves.Trim());
            }
            if (!string.IsNullOrEmpty(txtShoulder.Trim()))
            {
                objcUserMeasurement.shoulder = Convert.ToDecimal(txtShoulder.Trim());
            }
            if (!string.IsNullOrEmpty(txtCuff_Wrist.Trim()))
            {
                objcUserMeasurement.Cuff = Convert.ToDecimal(txtCuff_Wrist.Trim());
            }
            if (!string.IsNullOrEmpty(txtNeck.Trim()))
            {
                objcUserMeasurement.Collar = Convert.ToDecimal(txtNeck.Trim());
            }

            int result = objcUserMeasurement.SaveMeasurements(objcUserMeasurement);
            if (result > 0)
            {
                abc = "The Record is added successfully.";
            }
            else
            {
                abc = "Error Message.";
            }
 
            try
            {
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }


        [WebMethod]
        public static string GetFunction1(string txtLength, string txtChest, string txtWaist, string txtHip, string txtSleeves, string txtShoulder)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();

                if (!string.IsNullOrEmpty(txtLength.Trim()))
                {
                    objcUserMeasurement.Shirt_Length = Convert.ToDecimal(txtLength.Trim());
                }
                if (!string.IsNullOrEmpty(txtChest.Trim()))
                {
                    objcUserMeasurement.chest = Convert.ToDecimal(txtChest.Trim());
                }
                if (!string.IsNullOrEmpty(txtWaist.Trim()))
                {
                    objcUserMeasurement.Stomach = Convert.ToDecimal(txtWaist.Trim());
                }
                if (!string.IsNullOrEmpty(txtHip.Trim()))
                {
                    objcUserMeasurement.mid_section = Convert.ToDecimal(txtHip.Trim());
                }
                if (!string.IsNullOrEmpty(txtSleeves.Trim()))
                {
                    objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(txtSleeves.Trim());
                }
                if (!string.IsNullOrEmpty(txtShoulder.Trim()))
                {
                    objcUserMeasurement.shoulder = Convert.ToDecimal(txtShoulder.Trim());
                }
                
                int result = objcUserMeasurement.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is added successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

        [WebMethod]
        public static string GetFunction2_update(string ProfileName, string Hfeet, string Hinches, string weight, string collar, string shoulder, string Hip, string ShirtLength, string LongSleeves, string ShortSleeves, string Arm, string Wrist, string Fit, string Chest, string Stomach, int hdnUserId, int hdnStandardSizeId) 
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.CustomerMeasurementID = hdnStandardSizeId;
                objcUserMeasurement.UserId = hdnUserId;
                objcUserMeasurement.Profile_Name = ProfileName;
                objcUserMeasurement.Height = Convert.ToDecimal(Hfeet + "." + Hinches);
                objcUserMeasurement.weight = Convert.ToDecimal(weight);
                objcUserMeasurement.Collar = Convert.ToDecimal(collar);
                objcUserMeasurement.shoulder = Convert.ToDecimal(shoulder);
                objcUserMeasurement.chest = Convert.ToDecimal(Chest);
                objcUserMeasurement.Stomach = Convert.ToDecimal(Stomach);
                objcUserMeasurement.Hip = Convert.ToDecimal(Hip);
                objcUserMeasurement.Shirt_Length = Convert.ToDecimal(ShirtLength);
                objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(LongSleeves);
                objcUserMeasurement.Short_Sleeve_Lenght = Convert.ToDecimal(ShortSleeves);
                objcUserMeasurement.Arm = Convert.ToDecimal(Arm);
                objcUserMeasurement.Wrist = Convert.ToDecimal(Wrist);
                objcUserMeasurement.Fit = Fit;
                objcUserMeasurement.IsActive = true;
                int result = objcUserMeasurement.UpdateBodyMeasurements(objcUserMeasurement);//.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is updated successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
            //return "";
        }
        


        [WebMethod]
        public static string GetFunction2(string ProfileName, string Hfeet, string Hinches, string weight, string collar, string shoulder, string Hip, string ShirtLength, string LongSleeves, string ShortSleeves, string Arm, string Wrist, string Fit, string Chest, string Stomach, int hdnUserId) 
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = hdnUserId;
                objcUserMeasurement.Profile_Name = ProfileName;
                objcUserMeasurement.Height = Convert.ToDecimal(Hfeet + "." + Hinches);
                objcUserMeasurement.weight = Convert.ToDecimal(weight);
                objcUserMeasurement.Collar = Convert.ToDecimal(collar);
                objcUserMeasurement.shoulder = Convert.ToDecimal(shoulder);
                objcUserMeasurement.chest = Convert.ToDecimal(Chest);
                objcUserMeasurement.Stomach = Convert.ToDecimal(Stomach);
                objcUserMeasurement.Hip = Convert.ToDecimal(Hip);
                objcUserMeasurement.Shirt_Length = Convert.ToDecimal(ShirtLength);
                objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(LongSleeves);
                objcUserMeasurement.Short_Sleeve_Lenght = Convert.ToDecimal(ShortSleeves);
                objcUserMeasurement.Arm = Convert.ToDecimal(Arm);
                objcUserMeasurement.Wrist = Convert.ToDecimal(Wrist);
                objcUserMeasurement.Fit =Fit;
                objcUserMeasurement.IsActive = true;
                int result = objcUserMeasurement.SaveBodyMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is added successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

        [WebMethod]
        public static string GetFunction3_update(string txtStandardSizeName, string ddlCollar, string ddlShirtLength, string ddlLongSleeves, string ddlShortSleeves, string Parameter, int userId, int stndrSizeId, int Size,int Fit)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.CustomerMeasurementID = stndrSizeId;
                objcUserMeasurement.UserId = userId;
                objcUserMeasurement.Size = Convert.ToString(Size);
                objcUserMeasurement.Fit = Convert.ToString(Fit);
                if (!string.IsNullOrEmpty(txtStandardSizeName.Trim()))
                {
                    objcUserMeasurement.Profile_Name = txtStandardSizeName.Trim();
                }
                if (!string.IsNullOrEmpty(ddlCollar.Trim()))
                {
                    objcUserMeasurement.Collar = Convert.ToDecimal(ddlCollar.Trim());
                }
                if (!string.IsNullOrEmpty(ddlShirtLength.Trim()))
                {
                    objcUserMeasurement.Shirt_Length = Convert.ToDecimal(ddlShirtLength.Trim());
                }
                if (!string.IsNullOrEmpty(ddlLongSleeves.Trim()))
                {
                    objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(ddlLongSleeves.Trim());
                }
                if (!string.IsNullOrEmpty(ddlShortSleeves.Trim()))
                {
                    objcUserMeasurement.Short_Sleeve_Lenght = Convert.ToDecimal(ddlShortSleeves.Trim());
                }
                if (!string.IsNullOrEmpty(Parameter.Trim()))
                {
                    objcUserMeasurement.Parameter = Convert.ToInt32(Parameter);
                }
                objcUserMeasurement.IsActive = true;

                int result = objcUserMeasurement.UpdateStandardSize(objcUserMeasurement);//.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is updated successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }


        [WebMethod]
        public static string GetFunction3(string txtStandardSizeName, string ddlCollar, string ddlShirtLength, string ddlLongSleeves, string ddlShortSleeves, string Parameter,string hdnUserId,string Size,string Fit)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = Convert.ToInt32(hdnUserId);
                objcUserMeasurement.Fit = Fit;
                objcUserMeasurement.Size = Size;
                if (!string.IsNullOrEmpty(txtStandardSizeName.Trim()))
                {
                    objcUserMeasurement.Profile_Name = txtStandardSizeName.Trim();
                }
                if (!string.IsNullOrEmpty(ddlCollar.Trim()))
                {
                    objcUserMeasurement.Collar =Convert.ToDecimal(ddlCollar.Trim());
                }
                if (!string.IsNullOrEmpty(ddlShirtLength.Trim()))
                {
                    objcUserMeasurement.Shirt_Length = Convert.ToDecimal(ddlShirtLength.Trim());
                }
                if (!string.IsNullOrEmpty(ddlLongSleeves.Trim()))
                {
                    objcUserMeasurement.Long_Sleeve_Lenght = Convert.ToDecimal(ddlLongSleeves.Trim());
                }
                if (!string.IsNullOrEmpty(ddlShortSleeves.Trim()))
                {
                    objcUserMeasurement.Short_Sleeve_Lenght = Convert.ToDecimal(ddlShortSleeves.Trim());
                }
                if (!string.IsNullOrEmpty(Parameter.Trim()))
                {
                    objcUserMeasurement.Parameter = Convert.ToInt32(Parameter);
                }

                int result = objcUserMeasurement.SaveStandardSize(objcUserMeasurement);//.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is added successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

        [WebMethod]
        public static string show_standardsize(int txtProfileName)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = txtProfileName;
                abc = objcUserMeasurement.GetStandardSize(objcUserMeasurement,1);
            }
            catch (Exception ex)
            { 
            }
            return abc;
        }

        [WebMethod]
        public static string show_cust_measurement(int txtProfileName)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = txtProfileName;
                abc = objcUserMeasurement.GetStandardSize(objcUserMeasurement,2);
            }
            catch (Exception ex)
            { 
            }
            return abc;
        }

        [WebMethod]
        public static string show_Body_measurement(int txtProfileName)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = txtProfileName;
                abc = objcUserMeasurement.GetStandardSize(objcUserMeasurement, 3);
            }
            catch (Exception ex)
            {
            }
            return abc;
        }
        

        [WebMethod]
        public static string GetFunction4_update(string txtStandardSizeName, string ddlSize, string ddlFit, string Parameter, int StdID, int hdnUserId)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.CustomerMeasurementID = StdID;
                objcUserMeasurement.UserId = hdnUserId;
                //objcUserMeasurement.UserId = 1;
                if (!string.IsNullOrEmpty(txtStandardSizeName.Trim()))
                {
                    objcUserMeasurement.Profile_Name = txtStandardSizeName.Trim();
                }
                if (!string.IsNullOrEmpty(ddlSize.Trim()))
                {
                    objcUserMeasurement.Size = ddlSize.Trim();
                }
                if (!string.IsNullOrEmpty(ddlFit.Trim()))
                {
                    objcUserMeasurement.Fit = ddlFit;
                }
                objcUserMeasurement.Parameter = Convert.ToInt32(Parameter);

                int result = objcUserMeasurement.UpdateStandardSize(objcUserMeasurement);//.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is updated successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

        [WebMethod]
        public static string GetFunction4(string txtStandardSizeName, string ddlSize, string ddlFit, string Parameter, int hdnUserId)
        {
            string abc = "";
            try
            {
                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                objcUserMeasurement.UserId = hdnUserId;
                if (!string.IsNullOrEmpty(txtStandardSizeName.Trim()))
                {
                    objcUserMeasurement.Profile_Name = txtStandardSizeName.Trim();
                }
                if (!string.IsNullOrEmpty(ddlSize.Trim()))
                {
                    objcUserMeasurement.Size = ddlSize.Trim();
                }
                if (!string.IsNullOrEmpty(ddlFit.Trim()))
                {
                    objcUserMeasurement.Fit = ddlFit;
                }
                objcUserMeasurement.Parameter = Convert.ToInt32(Parameter);

                int result = objcUserMeasurement.SaveStandardSize(objcUserMeasurement);//.SaveMeasurements(objcUserMeasurement);
                if (result > 0)
                {
                    abc = "The Record is added successfully.";
                }
                else
                {
                    abc = "Error Message.";
                }
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }
    }
}