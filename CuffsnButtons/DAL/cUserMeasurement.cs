using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{


    public class cUserMeasurement : DataBase
    {
        public int CustomerMeasurementID { get; set; }
        public int UserId { get; set; }
        public string Profile_Name { get; set; }
        public decimal weight { get; set; }
        public decimal Height { get; set; }
        public decimal Hip { get; set; }
        public decimal chest { get; set; }
        public decimal shoulder { get; set; }
        public decimal mid_section { get; set; }
        public decimal Shirt_Length { get; set; }
        public decimal Long_Sleeve_Lenght { get; set; }
        public decimal Short_Sleeve_Lenght { get; set; }
        public decimal Arm { get; set; }
        public decimal Cuff { get; set; }
        public decimal Wrist { get; set; }
        public decimal Stomach { get; set; }
        public decimal Collar { get; set; }
        public decimal waist { get; set; }
        public string Fit { get; set; }
        public string Size { get; set; }
        public int Parameter { get; set; }
        public bool  IsActive { get; set; }

        public String GetStandardSize(cUserMeasurement objcUserMeasurement,int cmd_t)
        {
           
            SqlCommand objcmd = new SqlCommand();
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                objcmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                if (cmd_t == 1)
                {
                    objcmd.CommandText = "pFetchStandardSize";
                    return FetchData_WithArgument(objcmd, 1);
                }
                else if (cmd_t == 2)
                {
                    objcmd.CommandText = "pFetchCustomerMeasurements";
                    return FetchData_WithArgument(objcmd, 2);
                }
                else if (cmd_t == 3)
                {
                    objcmd.CommandText = "pFetchBodyMeasurements";
                    return FetchData_WithArgument(objcmd, 3);
                }
                else { return ""; }
            }
            catch (Exception ex)
            {
                throw ex;
            }            
        }

        public int SaveMeasurements(cUserMeasurement objcUserMeasurement)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertCustomerMeasurements"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                    objCmd.Parameters.Add("@chest", SqlDbType.Decimal).Value = objcUserMeasurement.chest;
                    objCmd.Parameters.Add("@shoulder", SqlDbType.Decimal).Value = objcUserMeasurement.shoulder;
                    objCmd.Parameters.Add("@mid_section", SqlDbType.Decimal).Value = objcUserMeasurement.mid_section;
                    objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                    objCmd.Parameters.Add("@Long_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Cuff", SqlDbType.Decimal).Value = objcUserMeasurement.Cuff;
                    objCmd.Parameters.Add("@Stomach", SqlDbType.Decimal).Value = objcUserMeasurement.Stomach;
                    objCmd.Parameters.Add("@Neck", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                    objCmd.Parameters.Add("@ProfileName", SqlDbType.VarChar).Value = objcUserMeasurement.Profile_Name;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

         public int UpdateMeasurements(cUserMeasurement objcUserMeasurement)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateCustomerMeasurement_Shirt"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@Id", SqlDbType.BigInt).Value = objcUserMeasurement.CustomerMeasurementID;
                    objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                    objCmd.Parameters.Add("@chest", SqlDbType.Decimal).Value = objcUserMeasurement.chest;
                    objCmd.Parameters.Add("@shoulder", SqlDbType.Decimal).Value = objcUserMeasurement.shoulder;
                    objCmd.Parameters.Add("@Hip", SqlDbType.Decimal).Value = objcUserMeasurement.mid_section;
                    objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                    objCmd.Parameters.Add("@Long_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Cuff_OR_Wirst", SqlDbType.Decimal).Value = objcUserMeasurement.Cuff;
                    objCmd.Parameters.Add("@Waist", SqlDbType.Decimal).Value = objcUserMeasurement.Stomach;
                    objCmd.Parameters.Add("@Collar_OR_Neck", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                    objCmd.Parameters.Add("@Fit", SqlDbType.Decimal).Value = 1.0;
                    objCmd.Parameters.Add("@Profile_Name", SqlDbType.VarChar).Value  = objcUserMeasurement.Profile_Name;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = 1;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


         public int UpdateBodyMeasurements(cUserMeasurement objcUserMeasurement)
         {
             try
             {
                 using (SqlCommand objCmd = new SqlCommand("pUpdateBodyMeasurements"))
                 {
                     objCmd.CommandType = CommandType.StoredProcedure;
                     //@Profile_Name
                     objCmd.Parameters.Add("@ID", SqlDbType.BigInt).Value = objcUserMeasurement.CustomerMeasurementID;
                     objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                     objCmd.Parameters.Add("@Profile_Name", SqlDbType.VarChar).Value = objcUserMeasurement.Profile_Name;
                     objCmd.Parameters.Add("@Height", SqlDbType.Decimal).Value = objcUserMeasurement.Height;
                     objCmd.Parameters.Add("@Weight", SqlDbType.Decimal).Value = objcUserMeasurement.weight;
                     objCmd.Parameters.Add("@Collar", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                     objCmd.Parameters.Add("@Shoulder", SqlDbType.Decimal).Value = objcUserMeasurement.shoulder;
                     objCmd.Parameters.Add("@Chest", SqlDbType.Decimal).Value = objcUserMeasurement.chest;
                     objCmd.Parameters.Add("@Stomach", SqlDbType.Decimal).Value = objcUserMeasurement.Stomach;
                     objCmd.Parameters.Add("@Hip", SqlDbType.Decimal).Value = objcUserMeasurement.Hip;
                     objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                     objCmd.Parameters.Add("@Long_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                     objCmd.Parameters.Add("@Short_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Short_Sleeve_Lenght;
                     objCmd.Parameters.Add("@Arm", SqlDbType.Decimal).Value = objcUserMeasurement.Arm;
                     objCmd.Parameters.Add("@Wrist", SqlDbType.Decimal).Value = objcUserMeasurement.Wrist;
                     objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcUserMeasurement.Fit;
                     objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcUserMeasurement.IsActive;



                     return RunExecuteNoneQuery(objCmd);
                 }
             }
             catch (Exception ex)
             {
                 throw ex;
             }
         }

        public int SaveBodyMeasurements(cUserMeasurement objcUserMeasurement)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertBodyMeasurements"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    //@Profile_Name
                    objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                    objCmd.Parameters.Add("@Profile_Name", SqlDbType.VarChar).Value = objcUserMeasurement.Profile_Name;
                    objCmd.Parameters.Add("@Height", SqlDbType.Decimal).Value = objcUserMeasurement.Height;
                    objCmd.Parameters.Add("@Weight", SqlDbType.Decimal).Value = objcUserMeasurement.weight;
                    objCmd.Parameters.Add("@Collar", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                    objCmd.Parameters.Add("@Shoulder", SqlDbType.Decimal).Value = objcUserMeasurement.shoulder;
                    objCmd.Parameters.Add("@Chest", SqlDbType.Decimal).Value = objcUserMeasurement.chest;
                    objCmd.Parameters.Add("@Stomach", SqlDbType.Decimal).Value = objcUserMeasurement.Stomach;
                    objCmd.Parameters.Add("@Hip", SqlDbType.Decimal).Value = objcUserMeasurement.Hip;
                    objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                    objCmd.Parameters.Add("@Long_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Short_Sleeve_Lenght", SqlDbType.Decimal).Value = objcUserMeasurement.Short_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Arm", SqlDbType.Decimal).Value = objcUserMeasurement.Arm;
                    objCmd.Parameters.Add("@Wrist", SqlDbType.Decimal).Value = objcUserMeasurement.Wrist;
                    objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcUserMeasurement.Fit;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcUserMeasurement.IsActive;
                    


                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int SaveStandardSize(cUserMeasurement objcUserMeasurement)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertStandardSize"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                    objCmd.Parameters.Add("@ProfileName", SqlDbType.VarChar).Value = objcUserMeasurement.Profile_Name;
                    objCmd.Parameters.Add("@Size", SqlDbType.Decimal).Value = objcUserMeasurement.Size;
                    objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcUserMeasurement.Fit;
                    objCmd.Parameters.Add("@Collar", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                    objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                    objCmd.Parameters.Add("@Long_Sleeve_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Short_Sleeve_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Short_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Parameter", SqlDbType.TinyInt).Value = objcUserMeasurement.Parameter;
                    

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateStandardSize(cUserMeasurement objcUserMeasurement)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateStandardSize"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@ID", SqlDbType.BigInt).Value = objcUserMeasurement.CustomerMeasurementID;
                    objCmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = objcUserMeasurement.UserId;
                    objCmd.Parameters.Add("@ProfileName", SqlDbType.VarChar).Value = objcUserMeasurement.Profile_Name;
                    objCmd.Parameters.Add("@Size", SqlDbType.Decimal).Value = objcUserMeasurement.Size;
                    objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcUserMeasurement.Fit;
                    objCmd.Parameters.Add("@Collar", SqlDbType.Decimal).Value = objcUserMeasurement.Collar;
                    objCmd.Parameters.Add("@Shirt_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Shirt_Length;
                    objCmd.Parameters.Add("@Long_Sleeve_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Long_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Short_Sleeve_Length", SqlDbType.Decimal).Value = objcUserMeasurement.Short_Sleeve_Lenght;
                    objCmd.Parameters.Add("@Parameter", SqlDbType.TinyInt).Value = objcUserMeasurement.Parameter;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcUserMeasurement.IsActive;


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
