using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cOrderSkuType:DataBase
    {
        public int OrderSkuTypeId { get; set; }
        public int SkuTypeId { get; set; }
        public int OrderId { get; set; }
        public int UserId { get; set; }
        public string UserType { get; set; }
        public DateTime Orderdttm { get; set; }
        public bool isCancelled { get; set; }

        public int OrderSkyTypeStatusId { get; set; }
        public int OrderStatusId { get; set; }
        public DateTime OrderStatusUpdatedttm{ get; set; }

        public int OrderDetailID { get; set; }
        //public int OrderSkuTypeId { get; set; }
        public int BackYoke { get; set; }
        public int Collar { get; set; }
        public int Front { get; set; }
        public int Sleeves { get; set; }
        public int Cuffs { get; set; }
        public int Planket { get; set; }
        public int LeftPocket { get; set; }
        public int RightPocket { get; set; }
        public int Button { get; set; }
        public int TopButton { get; set; }
        public int Back { get; set; }
        public int BottomCut { get; set; }
        public int collarShiffness { get; set; }
        public int MonogramText { get; set; }
        public int MonogramColor { get; set; }
        public int Quantity { get; set; }
        public int Price { get; set; }

        public DataSet GetOrderInformation(int UserId)
        {
            //return FetchData("pFetchUserInformation " + UserId);
            SqlCommand objcmd = new SqlCommand("pFetchOrderInformation");
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

        public int SaveStatusMap(cOrderSkuType objcOrderSkuType)
        {
            
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateStatusMap"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@OrderSkuTypeStatusId", SqlDbType.Int).Value = objcOrderSkuType.OrderSkyTypeStatusId;
                    objCmd.Parameters.Add("@OrderSkuTypeId", SqlDbType.Int).Value = objcOrderSkuType.OrderSkuTypeId;
                    objCmd.Parameters.Add("@OrderStatusId", SqlDbType.Int).Value = objcOrderSkuType.OrderStatusId;
              


                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetStatusTypeList()
        {
            try
            {
                return FetchData("pFetchStatus");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetAllOrderInformation()
        {
            //return FetchData("pFetchUserInformation " + UserId);
            SqlCommand objcmd = new SqlCommand("pFetchOrderAllInformation");
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                //objcmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = 1;
                return ReturnDataSet(objcmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetSku_AlternateImage_Description_Price(int SkuID)
        {
            try
            {
                return FetchData("pFetchSKU_AlternateImage_Desc_Price " + SkuID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       
    }
}
