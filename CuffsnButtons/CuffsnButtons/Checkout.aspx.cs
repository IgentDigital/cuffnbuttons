using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;
using System.Web.Services;
using System.Data.SqlClient;

namespace CuffsnButtons
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ShpngCart"] == null)
            { }
            else
            {
                DataTable objDataTable_session = ((DataTable)Session["ShpngCart"]);
                if (objDataTable_session.Rows.Count > 0)
                { pnlbtn.Visible = true; }
                else
                { pnlbtn.Visible = false; }
                lstUrl.Value = "http://" + HttpContext.Current.Request.Url.Authority + "/Customize.aspx";
                //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:alert('12');lookup();", true);
            }
        }

        [WebMethod(EnableSession = true)]
        public static string shoppingCard(int test)
        {
            DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
            System.Text.StringBuilder objStringBuider = new System.Text.StringBuilder();
            string abc = "";
            if (objDataTable_session.Rows.Count > 0)
            { 
            
            int totalPrice = 0;
            int index_val = 0;
            
            objStringBuider.AppendLine(string.Format("<br/><table width='90%' align='center'> <tr><td><font style='font-family:Arial;font-size:17pt;'><b>MY SHOPPING CART</b> </font></td></tr></table><br/><table style='background-color:#F9F9F9' width='90%' valign='top' align='center' style='border:1px solid #fff;' width='100%'><tr><th width='50%' style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;' colspan='2'>PRODUCT</th><th style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>UNIT PRICE</th><th style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>TOTAL PRICE</th><th style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>QTY</th><th width='10%' style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>ACTIONS</th></tr>"));

            totalPrice = 0;
            index_val = 0;
            if (HttpContext.Current.Session["ShpngCart"] == null)
            {
            }
            else
            {
               
                for (int i = 0; i < objDataTable_session.Rows.Count; i++)
                {
                    objStringBuider.AppendLine(string.Format("<tr style='background-color:#F9F9F9'><td width='10%' style='border:0px;' valign='top'><img style='width:100px;height:100px;' src='{0}' /><br/></td><td width='10%' style='border:0px;' valign='top'>{1}</td><td align='center' style='border:0px;' width='10%' valign='top'>Rs.{2}</td><td align='center' style='border:0px;' width='10%' valign='top'>Rs.{3}</td><td style='border:0px;' align='center' width='10%' valign='top'>{4}</td><td align='center' style='border:0px;' width='10%' valign='top'><a href='javascript:del_r({6});'><img src='{5}' alt='Remove'></a></td></tr>", objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(), "http://" + HttpContext.Current.Request.Url.Authority + "/images/close.png", index_val));
                        //<a href='javascript:DesignDetail_r({6});'>Review Full Summary</a>
                    totalPrice = totalPrice + Convert.ToInt32(objDataTable_session.Rows[i]["Price"].ToString());
                    index_val = index_val + 1;
                }
            }
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp;</td></tr>"));
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp;</td></tr>"));
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp;</td></tr>"));
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp:</td></tr>"));
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp;</td></tr>"));
            
            objStringBuider.AppendLine(string.Format("<tr><td colspan='6'>&nbsp;</td></tr></table><table width='90%' align='center'><tr><td colspan='2'><hr/></td></tr>"));
            objStringBuider.AppendLine(string.Format("<tr><td width='50%'>&nbsp</td><td style='text-align:left;background-color:#F9F9F9;' colspan='3' valign='top'><table style='background-color:#f9f9f9' width='100%'><tr><td>Merchandise Total:</td><td>Rs. {0:0}</td></tr><tr><td>Shipping:</td><td>Rs. 0</td></tr><tr style='background-color:#EAEAEA;'><td >Order Total:</td><td>Rs. {0:0}</td></tr></table></td></tr></table>", totalPrice));
            abc = objStringBuider.ToString();
            }
            else
            {
                objStringBuider.AppendLine(string.Format("<br/><table width='90%' align='center'> <tr><td><font style='font-family:Arial;font-size:17pt;'><b>MY SHOPPING CART</b> </font></td></tr><tr><td width='100%' align='center'>No Item Exist in the Shopping Cart..</td></tr></table>"));
                abc = objStringBuider.ToString();
            }
            return (abc);
        }

        [WebMethod(EnableSession = true)]
        public static string DesignCard(int test)
        {
            System.Text.StringBuilder objStringBuider = new System.Text.StringBuilder();
            string abc = "";
            objStringBuider.AppendLine(string.Format("<br/><table style='background-color:#F9F9F9' width='90%' valign='top' align='center' style='border:1px solid #fff;' width='100%'>"));
            if (HttpContext.Current.Session["ShpngCart"] == null)
            {
            }
            else
            {
                DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
                string[] description =  objDataTable_session.Rows[test]["description"].ToString().Split('*');
                objStringBuider.AppendLine(string.Format("<tr><td>BackYoke:</td><td>{0}</td></tr>", description[0]));
                objStringBuider.AppendLine(string.Format("<tr><td>Collar:</td><td>{0}</td></tr>", description[1]));
                objStringBuider.AppendLine(string.Format("<tr><td>Front:</td><td>{0}</td></tr>", description[2]));
                objStringBuider.AppendLine(string.Format("<tr><td>Sleeves:</td><td>{0}</td></tr>", description[3]));
                objStringBuider.AppendLine(string.Format("<tr><td>Cuffs:</td><td>{0}</td></tr>", description[4]));
                objStringBuider.AppendLine(string.Format("<tr><td>Placket:</td><td>{0}</td></tr>", description[5]));
                objStringBuider.AppendLine(string.Format("<tr><td>Right Pocket:</td><td>{0}</td></tr>", description[6]));
                objStringBuider.AppendLine(string.Format("<tr><td>Top Button:</td><td>{0}</td></tr>", description[7]));
                objStringBuider.AppendLine(string.Format("<tr><td>Back:</td><td>{0}</td></tr>", description[8]));
                objStringBuider.AppendLine(string.Format("<tr><td>Botom Cut:</td><td>{0}</td></tr>", description[9]));
                objStringBuider.AppendLine(string.Format("<tr><td>Left Pocket:</td><td>{0}</td></tr>", description[10]));
                objStringBuider.AppendLine(string.Format("<tr><td>Button:</td><td>{0}</td></tr>", description[11]));
            }
            abc = objStringBuider.ToString();
            return (abc);
        }

        [WebMethod(EnableSession = true)]
        public static string DeleteFromCard(int test)
        {
            if (test >= 0)
            {
                DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
                if (objDataTable_session.Rows.Count > 0)
                {
                    objDataTable_session.Rows.RemoveAt(test);
                    HttpContext.Current.Session["ShpngCart"] = objDataTable_session;
                }
               
            }
            return shoppingCard(-1); ;
        }


    }
}