using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cSKU : DataBase
    {

        //***SKU Variable
        public int SKUId { get; set; }
        public string SKUCode { get; set; }
        public string SKUName { get; set; }
        public string SKUOCType_Code { get; set; }
        public string SKUDescription { get; set; }
        public int FabricTypeId { get; set; }
        public int SKUTypeId { get; set; }
        public int ColorId { get; set; }
        public int Quantity { get; set; }
        public string Fit { get; set; }
        public string Styling { get; set; }
        public string Finish { get; set; }
        public string Construction { get; set; }
        public int DayRequiredToDeliver { get; set; }
        public decimal Price { get; set; }
        public Boolean IsActive { get; set; }
        public int PatternType { get; set; }
        public int ExpectedDeliveryDays { get; set; }
        public string ShowcaseLargeImageURL { get; set; }
        public string FabricImageURL { get; set; }
        public string ImageURL { get; set; }
        public string LargeImageURL { get; set; }
        public string ShowcaseImageURL { get; set; }

        //***SKU IMAGE MAPPING
        public int SKU_IMG_Id { get; set; }
        public string SKU_IMG_ImageURL { get; set; }
        public string SKU_IMG_LargeImageURL { get; set; }

        //***SKU care instruction Mapping
        public int SKU_CIM_Id { get; set; }
        public int SKU_CIM_CareInstructionID { get; set; }

        //***SKU Occasion Mapping
        public int SKU_OM_Id { get; set; }
        public int SKU_OM_OccasionID { get; set; }


        //***SKU Product Parts Mapping
        //public int SKU_Pdt_SKUid { get; set; }
        //public int SKU_Pdt_SubPartTypeID { get; set; }
        //public string SKU_Pdt_ImageURL { get; set; }
        //public decimal SKU_Pdt_ExtraCharges { get; set; }

        //***SKU Product Parts Mapping
        public int SKU_Pdt_SKUid { get; set; }
        public int SKU_Pdt_SubPartTypeID { get; set; }
        public int SKU_Pdt_SubPartTypeID_Old { get; set; }
        public string SKU_Pdt_ImageURL { get; set; }
        public decimal SKU_Pdt_ExtraCharges { get; set; }
        public Boolean SKU_Pdt_IsDefault { get; set; }
        public string TableColumn { get; set; }
        public string TableColumnOld { get; set; }
        public int PreStichedShirtID { get; set; }

        //public DataTable FetchSKU(int SKUID)
        //{
        //    try
        //    {
        //        return FetchData("pFetchSKU " + SKUID);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        public DataTable GetLatestSKUID()
        {
            try
            {
                return FetchData("pFetchSKUIDCreated");
            }
            catch (Exception ex)
            {
                throw ex;
            } 
        }

        public DataSet FetchSKU(int SKUID)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pFetchSKU"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = SKUID;
                    return ReturnDataSet(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int SaveProductDetails(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKU"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUCode", SqlDbType.VarChar).Value = objcSKU.SKUCode;
                    objCmd.Parameters.Add("@SKUName", SqlDbType.VarChar).Value = objcSKU.SKUName;
                    objCmd.Parameters.Add("@SKUDescription", SqlDbType.VarChar).Value = objcSKU.SKUDescription;
                    objCmd.Parameters.Add("@FabricTypeID", SqlDbType.TinyInt).Value = objcSKU.FabricTypeId;
                    objCmd.Parameters.Add("@SKUTypeID", SqlDbType.TinyInt).Value = objcSKU.SKUTypeId;
                    objCmd.Parameters.Add("@ColorID", SqlDbType.TinyInt).Value = objcSKU.ColorId;
                    objCmd.Parameters.Add("@PatternID", SqlDbType.TinyInt).Value = objcSKU.PatternType;
                    objCmd.Parameters.Add("@Quantity", SqlDbType.SmallInt).Value = objcSKU.Quantity;
                    objCmd.Parameters.Add("@ShowcaseImageURL", SqlDbType.VarChar).Value = objcSKU.ShowcaseImageURL;
                    objCmd.Parameters.Add("@Price", SqlDbType.Decimal).Value = objcSKU.Price;
                    objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcSKU.Fit;
                    objCmd.Parameters.Add("@Styling", SqlDbType.VarChar).Value = objcSKU.Styling;
                    objCmd.Parameters.Add("@Finish", SqlDbType.VarChar).Value = objcSKU.Finish;
                    objCmd.Parameters.Add("@Construction", SqlDbType.VarChar).Value = objcSKU.Construction;
                    objCmd.Parameters.Add("@ExpectedDeliveryDays", SqlDbType.TinyInt).Value = objcSKU.ExpectedDeliveryDays;
                    objCmd.Parameters.Add("@ShowcaseLargeImageURL", SqlDbType.VarChar).Value = objcSKU.ShowcaseLargeImageURL;
                    objCmd.Parameters.Add("@FabricImageURL", SqlDbType.VarChar).Value = objcSKU.FabricImageURL;
                    objCmd.Parameters.Add("@OccasionTypeID", SqlDbType.TinyInt).Value = objcSKU.SKU_OM_OccasionID;
                    objCmd.Parameters.Add("@SKUOCType_Code", SqlDbType.VarChar).Value = objcSKU.SKUOCType_Code;
                    //SqlParameter parameter = objCmd.Parameters.Add("@Identity", SqlDbType.Int, 0, "SKUID");
                    //parameter.Direction = ParameterDirection.Output;
                    //string dd = parameter.Value.ToString();
                    
                    //RunExecuteNoneQuery(objCmd);
                    //string dd1 = parameter.Value.ToString();
                    //objCmd.Connection.Open();
                    //int val = Convert.ToInt32(objCmd.ExecuteScalar());
                    //objCmd.Connection.Open();
                    ////SqlParameter parameter = objCmd.Parameters.Add("@Identity", SqlDbType.Int, 0, "SKUID");
                    ////parameter.Direction = ParameterDirection.Output;
                    //return 1;
                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateProductDetails(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKU"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@SKUCode", SqlDbType.VarChar).Value = objcSKU.SKUCode;
                    objCmd.Parameters.Add("@SKUName", SqlDbType.VarChar).Value = objcSKU.SKUName;
                    objCmd.Parameters.Add("@SKUDescription", SqlDbType.VarChar).Value = objcSKU.SKUDescription;
                    objCmd.Parameters.Add("@FabricTypeID", SqlDbType.TinyInt).Value = objcSKU.FabricTypeId;
                    objCmd.Parameters.Add("@SKUTypeID", SqlDbType.TinyInt).Value = objcSKU.SKUTypeId;
                    objCmd.Parameters.Add("@ColorID", SqlDbType.TinyInt).Value = objcSKU.ColorId;
                    objCmd.Parameters.Add("@PatternID", SqlDbType.TinyInt).Value = objcSKU.PatternType;
                    objCmd.Parameters.Add("@Quantity", SqlDbType.SmallInt).Value = objcSKU.Quantity;
                    objCmd.Parameters.Add("@ShowcaseImageURL", SqlDbType.VarChar).Value = objcSKU.ShowcaseImageURL;
                    objCmd.Parameters.Add("@Price", SqlDbType.Decimal).Value = objcSKU.Price;
                    objCmd.Parameters.Add("@Fit", SqlDbType.VarChar).Value = objcSKU.Fit;
                    objCmd.Parameters.Add("@Styling", SqlDbType.VarChar).Value = objcSKU.Styling;
                    objCmd.Parameters.Add("@Finish", SqlDbType.VarChar).Value = objcSKU.Finish;
                    objCmd.Parameters.Add("@Construction", SqlDbType.VarChar).Value = objcSKU.Construction;
                    objCmd.Parameters.Add("@ExpectedDeliveryDays", SqlDbType.TinyInt).Value = objcSKU.ExpectedDeliveryDays;
                    objCmd.Parameters.Add("@ShowcaseLargeImageURL", SqlDbType.VarChar).Value = objcSKU.ShowcaseLargeImageURL;
                    objCmd.Parameters.Add("@FabricImageURL", SqlDbType.VarChar).Value = objcSKU.FabricImageURL;
                    objCmd.Parameters.Add("@OccasionTypeID", SqlDbType.TinyInt).Value = objcSKU.SKU_OM_OccasionID;
                    objCmd.Parameters.Add("@SKUOCType_Code", SqlDbType.VarChar).Value = objcSKU.SKUOCType_Code;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = objcSKU.IsActive;
                    
                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int SaveAlternateImages(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertAlternateImages"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_IMG_ImageURL;
                    objCmd.Parameters.Add("@LargeImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_IMG_LargeImageURL;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateAlternateImages(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertAlternateImages"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@ID", SqlDbType.Int).Value = objcSKU.SKU_IMG_Id;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_IMG_ImageURL;
                    objCmd.Parameters.Add("@LargeImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_IMG_LargeImageURL;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int SaveProductParts(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUSubPartMapping"))
                {
                    //objCmd.CommandType = CommandType.StoredProcedure;
                    //objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKU_Pdt_SKUid;
                    //objCmd.Parameters.Add("@SubPartTypeID", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_SubPartTypeID;
                    //objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ImageURL;
                    //objCmd.Parameters.Add("@ExtraCharges", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ExtraCharges;
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@SubPartTypeID", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_SubPartTypeID;
                    objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ImageURL;
                    objCmd.Parameters.Add("@ExtraCharges", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ExtraCharges;
                    objCmd.Parameters.Add("@IsDefault", SqlDbType.Bit).Value = objcSKU.SKU_Pdt_IsDefault;
                    objCmd.Parameters.Add("@TableColumn", SqlDbType.VarChar).Value = objcSKU.TableColumn;
                    
                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateProductParts(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUSubPartMapping"))
                {
                    //objCmd.CommandType = CommandType.StoredProcedure;
                    //objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKU_Pdt_SKUid;
                    //objCmd.Parameters.Add("@SubPartTypeID", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_SubPartTypeID;
                    //objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ImageURL;
                    //objCmd.Parameters.Add("@ExtraCharges", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ExtraCharges;
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUSubPartMappingID", SqlDbType.Int).Value = objcSKU.SKU_Pdt_SKUid;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@SubPartTypeID", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_SubPartTypeID;
                    objCmd.Parameters.Add("@ImageURL", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ImageURL;
                    objCmd.Parameters.Add("@ExtraCharges", SqlDbType.VarChar).Value = objcSKU.SKU_Pdt_ExtraCharges;
                    objCmd.Parameters.Add("@IsDefault", SqlDbType.Bit).Value = objcSKU.SKU_Pdt_IsDefault;
                    objCmd.Parameters.Add("@TableColumn", SqlDbType.VarChar).Value = objcSKU.TableColumn;
                    objCmd.Parameters.Add("@TableColumnOld", SqlDbType.VarChar).Value = objcSKU.TableColumnOld;
                    objCmd.Parameters.Add("@SKUSubPartMappingIdOld", SqlDbType.BigInt).Value = objcSKU.SKU_Pdt_SubPartTypeID_Old;
                    //objCmd.Parameters.Add("@PreStichedShirtID", SqlDbType.VarChar).Value = objcSKU.PreStichedShirtID;
                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int SaveCareInstructions(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUCareInstructionMapping"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@CareInstructionsID", SqlDbType.TinyInt).Value = objcSKU.SKU_CIM_CareInstructionID;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcSKU.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateCareInstructions(cSKU objcSKU)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUCareInstructionMapping"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@ID", SqlDbType.Int).Value = objcSKU.SKU_CIM_Id;
                    objCmd.Parameters.Add("@SKUID", SqlDbType.Int).Value = objcSKU.SKUId;
                    objCmd.Parameters.Add("@CareInstructionsID", SqlDbType.TinyInt).Value = objcSKU.SKU_CIM_CareInstructionID;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objcSKU.IsActive;

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
