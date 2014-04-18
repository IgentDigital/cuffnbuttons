using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cOrder : DataBase
    {
        public int OrderId { get; set; }
        public int UserId { get; set; }
        public string UserType { get; set; }
        public DateTime Orderdttm { get; set; }
        public bool isCancelled { get; set; }



    }
}
