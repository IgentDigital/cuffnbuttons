using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class cShowcase : DataBase
    {
        public Int16 SKUTypeID { get; set; }
        public Int16 PatternID { get; set; }
        public Int16 FabricTypeID { get; set; }
        public Int16 ColorID { get; set; }
        public Int16 OccassionID { get; set; }
        public int SKUID { get; set; }
        public Int16 OrderByPrice { get; set; }

        public cShowcase()
        {
            SKUTypeID = 1;
            PatternID = 0;
            FabricTypeID = 0;
            ColorID = 0;
            OccassionID = 0;
            SKUID = 0;
            OrderByPrice = 0;
            //SKUID = 2;
        }

        public DataTable FetchPatterns()
        {
            try
            {
                return FetchData("pFetchPatterns");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable FetchFabrics()
        {
            try
            {
                return FetchData("pFetchFabrics");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable FetchColors()
        {
            try
            {
                return FetchData("pFetchColors");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable FetchOccasions()
        {
            try
            {
                return FetchData("pFetchOccasions");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable FetchProducts()
        {
            try
            {
                return FetchData("pFetchProduct " + SKUTypeID + "," + PatternID + "," + FabricTypeID + "," + ColorID + "," + OccassionID + "," + OrderByPrice);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable FetchProductSubParts()
        {
            try
            {
                return FetchData("pFetchProductSubParts " + SKUTypeID + "," + SKUID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable pFetchProductSubPartImages()
        {
            try
            {
                return FetchData("pFetchProductSubPartImages " + SKUID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        
        public DataTable FetchSKUBasicDetails()
        {
            try
            {
                return FetchData("pFetchSKUBasicDetails " + SKUID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
