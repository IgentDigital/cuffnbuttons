using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cUser : DataBase
    {

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailID { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string UserType { get; set; }


        public string BillAddLine1 { get; set; }
        public string BillAddLine2 { get; set; }
        public string BillCity { get; set; }
        public string BillState { get; set; }
        public string BillCountry { get; set; }
        public string BillZip { get; set; }
        public string BillMobile { get; set; }
        public string ShipAddLine1 { get; set; }
        public string ShipAddLine2 { get; set; }
        public string ShipCity { get; set; }
        public string ShipState { get; set; }
        public string ShipCountry { get; set; }
        public string ShipZip { get; set; }
        public string ShipMobile { get; set; }

        public DataTable GetAdminUserList()
        {
            try
            {
                return FetchData("pFetchListAdmin");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int SaveUserType(cUser objCUser)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertUser"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = objCUser.FirstName;
                    objCmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = objCUser.LastName;
                    objCmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = objCUser.EmailID;
                    objCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = objCUser.Password;
                    objCmd.Parameters.Add("@UserType", SqlDbType.VarChar).Value = objCUser.UserType;


                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet GetUserInformation(int UserId)
        {
            //return FetchData("pFetchUserInformation " + UserId);
            SqlCommand objcmd = new SqlCommand("pFetchUserInformation");
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                objcmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = UserId;
                return ReturnDataSet(objcmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }            
        }

        public Boolean UserExist(string emailId)
        {
            SqlCommand objcmd = new SqlCommand("select dbo.UsrExist(@emailId)");
            objcmd.Parameters.Add("@emailId", SqlDbType.VarChar).Value = emailId;
            objcmd.CommandType = CommandType.Text;
            int a = UserExist(objcmd);
            if (a >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
           
        }

        public DataTable GetUserList()
        {
            try
            {
                return FetchData("pFetchUserList");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

       // public DataSet ValidateLogin(string EmailID, string Password)
        public DataSet ValidateLogin(cUser objcUser)
        {
            SqlCommand objcmd = new SqlCommand("pFetchUserList");
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                objcmd.Parameters.Add("@EmailId", SqlDbType.VarChar).Value = objcUser.EmailID;
                objcmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = objcUser.Password;

                //objcmd.Parameters["@ERROR"].Direction = ParameterDirection.Output;
                return ReturnDataSet(objcmd);
                //objcmd.ExecuteNonQuery();
                //DataSet d
                //string strMessage = (string)cmd.Parameters["@ERROR"].Value;
                //con.Close();
                //return strMessage;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet Duplicate_user(string EmailID)
        {
            SqlCommand objcmd = new SqlCommand("pDuplicateUser");
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                objcmd.Parameters.Add("@EmailId", SqlDbType.VarChar).Value = EmailID;
                //objcmd.Parameters["@ERROR"].Direction = ParameterDirection.Output;
                return ReturnDataSet(objcmd);
                //objcmd.ExecuteNonQuery();
                //DataSet d
                //string strMessage = (string)cmd.Parameters["@ERROR"].Value;
                //con.Close();
                //return strMessage;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //public int SaveUser(string FirstName, string LastName, string EmailID, string Password, string Gender, string DateOfBirth, string City, string Country )
        public int SaveUser(cUser objCUser)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertUser"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = objCUser.FirstName;
                    objCmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = objCUser.LastName;
                    objCmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = objCUser.EmailID;
                    objCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = objCUser.Password;
                    objCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = objCUser.Gender;
                    objCmd.Parameters.Add("@BirthDate", SqlDbType.VarChar).Value = objCUser.DateOfBirth;
                    objCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = objCUser.City;
                    objCmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = objCUser.Country;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int InsertUserAddressDetail(cUser objCUser)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertUserAddressDetail"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = objCUser.UserId;
                    //objCmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = objCUser.FirstName;
                    //objCmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = objCUser.LastName;
                    //objCmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = objCUser.EmailID;
                    //objCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = objCUser.Gender;
                    //objCmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = objCUser.DateOfBirth;
                    //objCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = objCUser.City;
                    objCmd.Parameters.Add("@BillAddLine1", SqlDbType.VarChar).Value = objCUser.BillAddLine1;
                    objCmd.Parameters.Add("@BillAddLine2", SqlDbType.VarChar).Value = objCUser.BillAddLine2;
                    objCmd.Parameters.Add("@BillCity", SqlDbType.VarChar).Value = objCUser.BillCity;
                    objCmd.Parameters.Add("@BillState", SqlDbType.VarChar).Value = objCUser.BillState;
                    objCmd.Parameters.Add("@BillCountry", SqlDbType.VarChar).Value = objCUser.BillCountry;
                    objCmd.Parameters.Add("@BillZip", SqlDbType.VarChar).Value = objCUser.BillZip;
                    objCmd.Parameters.Add("@BillMobile", SqlDbType.VarChar).Value = objCUser.BillMobile;
                    objCmd.Parameters.Add("@ShipAddLine1", SqlDbType.VarChar).Value = objCUser.ShipAddLine1;
                    objCmd.Parameters.Add("@ShipAddLine2", SqlDbType.VarChar).Value = objCUser.ShipAddLine2;
                    objCmd.Parameters.Add("@ShipCity", SqlDbType.VarChar).Value = objCUser.ShipCity;
                    objCmd.Parameters.Add("@ShipState", SqlDbType.VarChar).Value = objCUser.ShipState;
                    objCmd.Parameters.Add("@ShipCountry", SqlDbType.VarChar).Value = objCUser.ShipCountry;
                    objCmd.Parameters.Add("@ShipZip", SqlDbType.VarChar).Value = objCUser.ShipZip;
                    objCmd.Parameters.Add("@ShipMobile", SqlDbType.VarChar).Value = objCUser.ShipMobile;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateUserInformation(cUser objCUser)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateUserInformation"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = objCUser.UserId;
                    objCmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = objCUser.FirstName;
                    objCmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = objCUser.LastName;
                    objCmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = objCUser.EmailID;
                    objCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = objCUser.Gender;
                    objCmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = objCUser.DateOfBirth;
                    objCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = objCUser.City;
                    //objCmd.Parameters.Add("@BillAddLine1", SqlDbType.VarChar).Value = objCUser.BillAddLine1;
                    //objCmd.Parameters.Add("@BillAddLine2", SqlDbType.VarChar).Value = objCUser.BillAddLine2;
                    //objCmd.Parameters.Add("@BillCity", SqlDbType.VarChar).Value = objCUser.BillCity;
                    //objCmd.Parameters.Add("@BillState", SqlDbType.VarChar).Value = objCUser.BillState;
                    //objCmd.Parameters.Add("@BillCountry", SqlDbType.VarChar).Value = objCUser.BillCountry;
                    //objCmd.Parameters.Add("@BillZip", SqlDbType.VarChar).Value = objCUser.BillZip;
                    //objCmd.Parameters.Add("@BillMobile", SqlDbType.VarChar).Value = objCUser.BillMobile;
                    //objCmd.Parameters.Add("@ShipAddLine1", SqlDbType.VarChar).Value = objCUser.ShipAddLine1;
                    //objCmd.Parameters.Add("@ShipAddLine2", SqlDbType.VarChar).Value = objCUser.ShipAddLine2;
                    //objCmd.Parameters.Add("@ShipCity", SqlDbType.VarChar).Value = objCUser.ShipCity;
                    //objCmd.Parameters.Add("@ShipState", SqlDbType.VarChar).Value = objCUser.ShipState;
                    //objCmd.Parameters.Add("@ShipCountry", SqlDbType.VarChar).Value =objCUser.ShipCountry;
                    //objCmd.Parameters.Add("@ShipZip", SqlDbType.VarChar).Value = objCUser.ShipZip;
                    //objCmd.Parameters.Add("@ShipMobile", SqlDbType.VarChar).Value =objCUser.ShipMobile;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
