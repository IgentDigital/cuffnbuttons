using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cProductMaster : DataBase
    {
        public int SKUTypeId { get; set; }
        public string SKUType { get; set; }
        public Boolean IsActive { get; set; }

        public DataTable GetSKUList()
        {
            try
            {
                return FetchData("pFetchSKUList");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //public int SaveUser(string FirstName, string LastName, string EmailID, string Password, string Gender, string DateOfBirth, string City, string Country )
        public int SaveProduct(cProductMaster objCProduct)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertProduct"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUType", SqlDbType.VarChar).Value = objCProduct.SKUType;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objCProduct.IsActive;
                   

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //public int SaveUser(string FirstName, string LastName, string EmailID, string Password, string Gender, string DateOfBirth, string City, string Country )
        public int UpdateProduct(cProductMaster objCProduct)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pUpdateProduct"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUType", SqlDbType.VarChar).Value = objCProduct.SKUType;
                    objCmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = objCProduct.IsActive;
                    objCmd.Parameters.Add("@SKUTypeId", SqlDbType.TinyInt).Value = objCProduct.SKUTypeId;


                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        //ProductParts Master

        public int PartTypeID { get; set; }
        public int SKUTypeID { get; set; }
        public string PartName { get; set; }

        public int SaveProductParts(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUPartType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SKUTypeID", SqlDbType.VarChar).Value = cProd.SKUTypeId;
                    objCmd.Parameters.Add("@PartName", SqlDbType.VarChar).Value = cProd.PartName;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateProductParts(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUPartType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@PartTypeID", SqlDbType.TinyInt).Value = cProd.PartTypeID;
                    objCmd.Parameters.Add("@SKUTypeID", SqlDbType.VarChar).Value = cProd.SKUTypeId;
                    objCmd.Parameters.Add("@PartName", SqlDbType.VarChar).Value = cProd.PartName;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetProductxParts(int ProductID = 0)
        {
            try
            {
                return FetchData("pFetchSKUPartType " + ProductID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetProductList()
        {
            try
            {
                return FetchData("pFetchProductList");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //ProductSubParts

        public int SubPartTypeID { get; set; }
        public string SubPartName { get; set; }
        public string IconURL { get; set; }
        public int PartTyprID { get; set; }

        public DataSet GetSubPartList_PartType(cProductMaster objcProductMaster)
        {
            //return FetchData("pFetchUserInformation " + UserId);
            SqlCommand objcmd = new SqlCommand("pSubPartList_PartType");
            objcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                objcmd.Parameters.Add("@PartTyprID", SqlDbType.BigInt).Value = objcProductMaster.PartTyprID;
                return ReturnDataSet(objcmd);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int SaveProductSubParts(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUSubPart"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SubPartName", SqlDbType.VarChar).Value = cProd.SubPartName;
                    objCmd.Parameters.Add("@IconURL", SqlDbType.VarChar).Value = cProd.IconURL;
                    objCmd.Parameters.Add("@PartTyprID", SqlDbType.SmallInt).Value = cProd.PartTyprID;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateProductSubParts(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertSKUSubPart"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@SubPartTypeID", SqlDbType.TinyInt).Value = cProd.SubPartTypeID;
                    objCmd.Parameters.Add("@SubPartName", SqlDbType.VarChar).Value = cProd.SubPartName;
                    objCmd.Parameters.Add("@IconURL", SqlDbType.VarChar).Value = cProd.IconURL;
                    objCmd.Parameters.Add("@PartTyprID", SqlDbType.SmallInt).Value = cProd.PartTyprID;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetSKUSubPart()
        {
            try
            {
                return FetchData("pFetchSKUSubPart");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //////////////////////////////


        public int ColorID { get; set; }
        public string Color { get; set; }

        public int SaveColorList(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertColorList"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@Color", SqlDbType.VarChar).Value = cProd.Color;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateColorList(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertColorList"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@ColorID", SqlDbType.TinyInt).Value = cProd.ColorID;
                    objCmd.Parameters.Add("@Color", SqlDbType.VarChar).Value = cProd.Color;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetColorList()
        {
            try
            {
                return FetchData("pColorList");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }





        //CareInstructionIcons

        public int CareInstructionID { get; set; }
        public string CareInstruction { get; set; }
        public string CareInstructionIconURL { get; set; }


        public int SaveCareInstructions(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertCareInstructions"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@CareInstruction", SqlDbType.VarChar).Value = cProd.CareInstruction;
                    objCmd.Parameters.Add("@CareInstructionIconURL", SqlDbType.VarChar).Value = cProd.CareInstructionIconURL;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateCareInstructions(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertCareInstructions"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@CareInstructionID", SqlDbType.TinyInt).Value = cProd.CareInstructionID;
                    objCmd.Parameters.Add("@CareInstruction", SqlDbType.VarChar).Value = cProd.CareInstruction;
                    objCmd.Parameters.Add("@CareInstructionIconURL", SqlDbType.VarChar).Value = cProd.CareInstructionIconURL;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetCareInstructions()
        {
            try
            {
                return FetchData("pFetchCareInstructions");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //////////////////////////////
        //OccasionType

        public int OccasionID { get; set; }
        public string OccasionType { get; set; }


        public int SaveOccasionType(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertOccasionType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@OccasionType", SqlDbType.VarChar).Value = cProd.OccasionType;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdateOccasionType(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertOccasionType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@OccasionID", SqlDbType.TinyInt).Value = cProd.OccasionID;
                    objCmd.Parameters.Add("@OccasionType", SqlDbType.VarChar).Value = cProd.OccasionType;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetOccasionType()
        {
            try
            {
                return FetchData("pFetchOccasionType");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable GetSKUSubPart(int PartID)
        {
            try
            {
                return FetchData("pFetchSKUSubPart " + PartID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable GetOccasionBySKUID(int SKUID)
        {
            try
            {
                return FetchData("pFetchOccasionsSKU " + SKUID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //PatternType
        public int PatternTypeID { get; set; }
        public string PatternType { get; set; }


        public int SavePatternType(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertPatternType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@PatternType", SqlDbType.VarChar).Value = cProd.PatternType;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int UpdatePatternType(cProductMaster cProd)
        {
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pInsertPatternType"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@PatternTypeID", SqlDbType.TinyInt).Value = cProd.PatternTypeID;
                    objCmd.Parameters.Add("@PatternType", SqlDbType.VarChar).Value = cProd.PatternType;
                    objCmd.Parameters.Add("@isActive", SqlDbType.Bit).Value = cProd.IsActive;

                    return RunExecuteNoneQuery(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetPatternType()
        {
            try
            {
                return FetchData("pFetchPatternType");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}
