using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cProduct : DataBase
    {
        public int SKUID { get; set; }
        
        public cProduct()
        { }

        public DataSet FetchProductDetail()
        {  
            try
            {
                using (SqlCommand objCmd = new SqlCommand("pFetchProductDetail"))
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.Add("@pSKUID", SqlDbType.Int).Value = SKUID;
                    return ReturnDataSet(objCmd);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
         }
            

    }
}
