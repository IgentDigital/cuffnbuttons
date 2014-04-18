using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cFabricType : DataBase
    {
        public int FabricTypeID{get;set;}
        public string FabricType{get;set;}
        public string Weave{get;set;}
        public  string Weight{get;set;}
        public Boolean IsActive { get; set; }

        public DataTable GetFiberTypeList()
        {
            try
            {
                return FetchData("pFetchFiberTypeList");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //public int SaveUser(string FirstName, string LastName, string EmailID, string Password, string Gender, string DateOfBirth, string City, string Country )
        public int SaveFiberType(cFabricType objcFabricType)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertFabric"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@FabricType", SqlDbType.VarChar).Value = objcFabricType.FabricType;
                    objCmd.Parameters.Add("@Weave", SqlDbType.VarChar).Value = objcFabricType.Weave;
                    objCmd.Parameters.Add("@Weight", SqlDbType.VarChar).Value = objcFabricType.Weight;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcFabricType.IsActive;
                   

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //public int SaveUser(string FirstName, string LastName, string EmailID, string Password, string Gender, string DateOfBirth, string City, string Country )
        public int UpdateFibertype(cFabricType objcFabricType)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateFabric"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@FabricType", SqlDbType.VarChar).Value = objcFabricType.FabricType;
                    objCmd.Parameters.Add("@Weave", SqlDbType.VarChar).Value = objcFabricType.Weave;
                    objCmd.Parameters.Add("@Weight", SqlDbType.VarChar).Value = objcFabricType.Weight;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcFabricType.IsActive;
                    objCmd.Parameters.Add("@FabricTypeId", SqlDbType.TinyInt).Value = objcFabricType.FabricTypeID;


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
