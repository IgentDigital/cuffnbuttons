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
    public partial class Customize : System.Web.UI.Page
    {
        cShowcase objShowcase = new cShowcase();
        PagedDataSource pds = new PagedDataSource();
        int pageindex = 0;
        int SKUID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            pds.PageSize = 12;
            pds.AllowPaging = true;
            if (Request.QueryString.Count > 0)
            {
                SKUID = Convert.ToInt32(Request.QueryString["SKU"].Trim());
            }

            if (!Page.IsPostBack)
            {
                ViewState["pageindex"] = pageindex;
                FillPatterns();
                FillFabrics();
                FillColors();

                if (SKUID > 0)
                {
                    GetProducts();
                    GetProductBasicDetails(SKUID);
                    GetProductSubParts(SKUID);
                    GetProductSubPartImages(SKUID);

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append(@"<script language='javascript'>");
                    sb.Append(@"mainMenuChange('2_style');");
                    sb.Append(@"</script>");
                    System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", sb.ToString(), false);
                }
                else
                {
                    SKUID = 1;
                    GetProducts();
                    GetProductBasicDetails(1);
                    GetProductSubParts(1);
                    GetProductSubPartImages(1);

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append(@"<script language='javascript'>");
                    sb.Append(@"mainMenuChange('1_fabric');");
                    sb.Append(@"</script>");
                    System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", sb.ToString(), false);

                }

            }
            for (int i = 0; i < FabricList.DataKeys.Count; i++)
            {
                if (FabricList.DataKeys[i].ToString() == SKUID.ToString())
                {
                    FabricList.SelectedIndex = i;
                    break;
                }
            }
            pageindex = (int)this.ViewState["pageindex"];
        }

        private void GetProductBasicDetails(int SKUID)
        {
            objShowcase.SKUID = SKUID;
            DataTable dtProductDetail = objShowcase.FetchSKUBasicDetails();
            if (dtProductDetail.Rows.Count > 0)
            {
                lblBasePrice.Text = dtProductDetail.Rows[0]["BasePrice"].ToString();
                lblExpectedDays.Text = dtProductDetail.Rows[0]["ExpectedDeliveryDays"].ToString();
                lblPrice.Text = dtProductDetail.Rows[0]["Price"].ToString();
                hdnFabricName.Value = dtProductDetail.Rows[0]["SKUName"].ToString();
                hdnQuantityLeft.Value = dtProductDetail.Rows[0]["Quantity"].ToString();
            }

        }

        private void FillPatterns()
        {
            DataTable dtPatterns = objShowcase.FetchPatterns();
            ddlPattern.DataSource = dtPatterns;
            ddlPattern.DataTextField = "PatternType";
            ddlPattern.DataValueField = "PatternTypeID";
            ddlPattern.DataBind();
            ddlPattern.Items.Insert(0, new ListItem("All Patterns", "0"));
        }

        private void FillFabrics()
        {
            DataTable dtFabrics = objShowcase.FetchFabrics();
            ddlFabric.DataSource = dtFabrics;
            ddlFabric.DataTextField = "FabricType";
            ddlFabric.DataValueField = "FabricTypeID";
            ddlFabric.DataBind();
            ddlFabric.Items.Insert(0, new ListItem("All Fabrics", "0"));
        }

        private void FillColors()
        {
            DataTable dtColors = objShowcase.FetchColors();
            ddlColor.DataSource = dtColors;
            ddlColor.DataTextField = "Color";
            ddlColor.DataValueField = "ColorID";
            ddlColor.DataBind();
            ddlColor.Items.Insert(0, new ListItem("All Colors", "0"));
        }

        private void GetProducts()
        {
            DataTable dtProducts = objShowcase.FetchProducts();
            dtProducts.DefaultView.RowFilter = "Quantity>0";
            FabricList.DataSource = dtProducts;
            FabricList.DataBind();



        }

        private void GetProductSubParts(int SKUID)
        {
            objShowcase.SKUTypeID = 1;
            objShowcase.SKUID = SKUID;
            DataTable dtProductParts = objShowcase.FetchProductSubParts();
            DataView dv = dtProductParts.DefaultView;

            dv.RowFilter = "PartTypeID=4";
            ProductPartList_Sleeves.DataSource = dv;
            ProductPartList_Sleeves.DataBind();
            dv.RowFilter = "PartTypeID=4 and isDefault=1";
            for (int i = 0; i < ProductPartList_Sleeves.DataKeys.Count; i++)
            {
                if (ProductPartList_Sleeves.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Sleeves.SelectedIndex = i;
                    sd_title_Sleeves.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Sleeves.Text = dv[0]["Description"].ToString();
                    imgSleeves.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }


            dv.RowFilter = "PartTypeID=2";
            ProductPartList_Collar.DataSource = dv;
            ProductPartList_Collar.DataBind();
            dv.RowFilter = "PartTypeID=2 and isDefault=1";
            for (int i = 0; i < ProductPartList_Collar.DataKeys.Count; i++)
            {
                if (ProductPartList_Collar.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Collar.SelectedIndex = i;
                    sd_title_Collar.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Collar.Text = dv[0]["Description"].ToString();
                    imgCollar.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }

            dv.RowFilter = "PartTypeID=5";
            ProductPartList_Cuff.DataSource = dv;
            ProductPartList_Cuff.DataBind();
            dv.RowFilter = "PartTypeID=5 and isDefault=1";
            for (int i = 0; i < ProductPartList_Cuff.DataKeys.Count; i++)
            {
                if (ProductPartList_Cuff.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Cuff.SelectedIndex = i;
                    sd_title_Cuff.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Cuff.Text = dv[0]["Description"].ToString();
                    imgCuffs.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }

            dv.RowFilter = "PartTypeID=6";
            ProductPartList_Placket.DataSource = dv;
            ProductPartList_Placket.DataBind();
            dv.RowFilter = "PartTypeID=6 and isDefault=1";
            for (int i = 0; i < ProductPartList_Placket.DataKeys.Count; i++)
            {
                if (ProductPartList_Placket.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Placket.SelectedIndex = i;
                    sd_title_Placket.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Placket.Text = dv[0]["Description"].ToString();
                    imgPlacket.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }

            dv.RowFilter = "PartTypeID=10";
            ProductPartList_BottomCut.DataSource = dv;
            ProductPartList_BottomCut.DataBind();
            dv.RowFilter = "PartTypeID=10 and isDefault=1";
            for (int i = 0; i < ProductPartList_BottomCut.DataKeys.Count; i++)
            {
                if (ProductPartList_BottomCut.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_BottomCut.SelectedIndex = i;
                    sd_title_BottomCut.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_BottomCut.Text = dv[0]["Description"].ToString();
                    //imgBottom.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();

                    break;
                }
            }

            dv.RowFilter = "PartTypeID=9";
            ProductPartList_Back.DataSource = dv;
            ProductPartList_Back.DataBind();
            dv.RowFilter = "PartTypeID=9 and isDefault=1";
            for (int i = 0; i < ProductPartList_Back.DataKeys.Count; i++)
            {
                if (ProductPartList_Back.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Back.SelectedIndex = i;
                    sd_title_Back.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Back.Text = dv[0]["Description"].ToString();
                    //imgBack.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();

                    break;
                }
            }

            dv.RowFilter = "PartTypeID=8";
            ProductPartList_Pocket.DataSource = dv;
            ProductPartList_Pocket.DataBind();
            dv.RowFilter = "PartTypeID=8 and isDefault=1";
            for (int i = 0; i < ProductPartList_Pocket.DataKeys.Count; i++)
            {
                if (ProductPartList_Pocket.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Pocket.SelectedIndex = i;
                    sd_title_Pocket.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Pocket.Text = dv[0]["Description"].ToString();
                    //imgPocket.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();

                    break;
                }
            }

            dv.RowFilter = "PartTypeID=11";
            ProductPartList_Buttons.DataSource = dv;
            ProductPartList_Buttons.DataBind();
            dv.RowFilter = "PartTypeID=11 and isDefault=1";
            for (int i = 0; i < ProductPartList_Buttons.DataKeys.Count; i++)
            {
                if (ProductPartList_Buttons.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Buttons.SelectedIndex = i;
                    sd_title_Button.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Button.Text = dv[0]["Description"].ToString();
                    imgButton.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }

            dv.RowFilter = "PartTypeID=15";
            ProductPartList_Monogram.DataSource = dv;
            ProductPartList_Monogram.DataBind();
            dv.RowFilter = "PartTypeID=15 and isDefault=1";
            for (int i = 0; i < ProductPartList_Monogram.DataKeys.Count; i++)
            {
                if (ProductPartList_Monogram.DataKeys[i].ToString() == dv[0]["SubPartTypeID"].ToString())
                {
                    ProductPartList_Monogram.SelectedIndex = i;
                    sd_title_Monogram.Text = dv[0]["SubPartName"].ToString();
                    sd_desc_Monogram.Text = dv[0]["Description"].ToString();
                    imgCuffs.Attributes["tag"] = dv[0]["SKUSubPartMapID"].ToString() + "-" + dv[0]["SubPartName"].ToString();
                    break;
                }
            }
        }


        //protected void FabricList_ItemDataBound(object sender, DataListItemEventArgs e)
        //{
        //    if (e.CommandName == "Transfer")
        //    {
        //        Response.Redirect("Shirt_Main1.aspx?SKU=" + e.CommandArgument);
        //    }
        //}

        protected void ddlPattern_SelectedIndexChanged(object sender, EventArgs e)
        {
            FabricList.DataSource = null;
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            FabricList.DataSource = pds;
            FabricList.DataBind();
            this.paging();
        }

        protected void ddlFabric_SelectedIndexChanged(object sender, EventArgs e)
        {
            FabricList.DataSource = null;
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            FabricList.DataSource = pds;
            FabricList.DataBind();
            this.paging();
        }

        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            FabricList.DataSource = null;
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            FabricList.DataSource = pds;
            FabricList.DataBind();
            this.paging();
        }

        private void paging()
        {
            //btnFirst.Enabled = !pds.IsFirstPage;
            //btnPrevious.Enabled = !pds.IsFirstPage;
            //btnLast.Enabled = !pds.IsLastPage;
            //btnNext.Enabled = !pds.IsLastPage;
        }

        private void GetProductSubPartImages(int SKUID)
        {
            objShowcase.SKUID = SKUID;
            DataTable dtProductSubParts = objShowcase.pFetchProductSubPartImages();
            DataView dv = dtProductSubParts.DefaultView;
            if (dv.Count > 0)
            {
                dv.RowFilter = "PartName='BackYoke' and isDefault=1";
                if (dv.Count > 0)
                    imgBackYoke.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgBackYoke.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='Front' and isDefault=1";
                if (dv.Count > 0)
                    imgFront.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgFront.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='Placket' and isDefault=1";
                if (dv.Count > 0)
                    imgPlacket.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgPlacket.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='Sleeves' and isDefault=1";
                if (dv.Count > 0)
                    imgSleeves.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgSleeves.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='RightCuff' and isDefault=1";
                if (dv.Count > 0)
                    imgCuffs.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgCuffs.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='LeftCuff' and isDefault=1";
                if (dv.Count > 0)
                    imgCuffs_Left.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgCuffs_Left.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='Collar' and isDefault=1";
                if (dv.Count > 0)
                    imgCollar.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgCollar.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='Button' and isDefault=1";
                if (dv.Count > 0)
                    imgButton.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgButton.ImageUrl = "";
                dv.RowFilter = "";

                dv.RowFilter = "PartName='TopButton' and isDefault=1";
                if (dv.Count > 0)
                    imgTopButton.ImageUrl = dv[0]["SKUPartImage"].ToString();
                else
                    imgTopButton.ImageUrl = "";
                dv.RowFilter = "";

                //dv.RowFilter = "PartName='LeftPocket' and isDefault=1";
                //if (dv.Count > 0)
                //    imgPocket.ImageUrl = dv[0]["SKUPartImage"].ToString();
                //else
                //    imgPocket.ImageUrl = "";
                //dv.RowFilter = "";
            }
        }

        protected void FabricList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Transfer")
            {
                SKUID = Convert.ToInt32(e.CommandArgument.ToString());
                for (int i = 0; i < FabricList.DataKeys.Count; i++)
                {
                    if (FabricList.DataKeys[i].ToString() == SKUID.ToString())
                    {
                        FabricList.SelectedIndex = i;
                        break;
                    }
                }
                //Response.Redirect("Shirt_Main1.aspx?SKU=" + e.CommandArgument);
                GetProductBasicDetails(Convert.ToInt32(e.CommandArgument.ToString()));
                GetProductSubParts(Convert.ToInt32(e.CommandArgument.ToString()));
                GetProductSubPartImages(Convert.ToInt32(e.CommandArgument.ToString()));
            }
        }

        [WebMethod(EnableSession = true)]
        //index_i, int backyoke, int collar, int front, int sleeves, int cuffs, int planket, int rightpocket, int topbutton, int back, int bottomcut, int leftpocket, int button
        //public static string shoppingCard(int test, int backyoke, int collar, int front, int sleeves, int cuffs, int planket, int rightpocket, int topbutton, int back, int bottomcut, int leftpocket, int button, string Description)
        public static string shoppingCard(int test, int backyoke, int collar, int front, int sleeves, int cuffs, int planket, int rightpocket, int topbutton, int back, int bottomcut, int leftpocket, int button, string Description)
        {
            System.Text.StringBuilder objStringBuider = new System.Text.StringBuilder();
            DataTable objDataTable = new DataTable();
            objDataTable.Columns.Add("SKUID", typeof(int));
            objDataTable.Columns.Add("ImageURL", typeof(string));
            objDataTable.Columns.Add("SKUName", typeof(string));
            objDataTable.Columns.Add("Price", typeof(string));
            objDataTable.Columns.Add("QTY", typeof(string));



            objDataTable.Columns.Add("backyoke", typeof(int));
            objDataTable.Columns.Add("collar", typeof(int));
            objDataTable.Columns.Add("front", typeof(int));
            objDataTable.Columns.Add("sleeves", typeof(int));
            objDataTable.Columns.Add("cuffs", typeof(int));
            objDataTable.Columns.Add("planket", typeof(int));
            objDataTable.Columns.Add("rightpocket", typeof(int));
            objDataTable.Columns.Add("topbutton", typeof(int));
            objDataTable.Columns.Add("back", typeof(int));
            objDataTable.Columns.Add("bottomcut", typeof(int));
            objDataTable.Columns.Add("leftpocket", typeof(int));
            objDataTable.Columns.Add("button", typeof(int));
            objDataTable.Columns.Add("description", typeof(string));

            int totalPrice = 0;
            int index_val = 0;
            string abc = "";
            objStringBuider.AppendLine(string.Format("<br/><table style='background-color:#f9f9f9;border:1px solid #fff;' width='100%'><tr><th width='50%' style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;' colspan='2'>PRODUCT</th><th style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>PRICE</th><th style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>QTY</th><th width='10%' style='text-align:center;background-color:#3b3b3b;color:#C3C5C8;'>ACTIONS</th></tr>"));
            if (test >= 0)
            {
                DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
                if (objDataTable_session.Rows.Count > 0)
                {
                    objDataTable_session.Rows.RemoveAt(test);
                    HttpContext.Current.Session["ShpngCart"] = objDataTable_session;
                }

                //DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
                //int indx = 0
                for (int i = 0; i < objDataTable_session.Rows.Count; i++)
                {
                    //objDataTable_session.Rows.r

                    objDataTable.Rows.Add(objDataTable_session.Rows[i]["SKUID"].ToString(), objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(), objDataTable_session.Rows[i]["backyoke"].ToString(), objDataTable_session.Rows[i]["collar"].ToString(), objDataTable_session.Rows[i]["front"].ToString(), objDataTable_session.Rows[i]["sleeves"].ToString(), objDataTable_session.Rows[i]["cuffs"].ToString(), objDataTable_session.Rows[i]["planket"].ToString(), objDataTable_session.Rows[i]["rightpocket"].ToString(), objDataTable_session.Rows[i]["topbutton"].ToString(), objDataTable_session.Rows[i]["back"].ToString(), objDataTable_session.Rows[i]["bottomcut"].ToString(), objDataTable_session.Rows[i]["leftpocket"].ToString(), objDataTable_session.Rows[i]["button"].ToString(), objDataTable_session.Rows[i]["description"].ToString());
                    objStringBuider.AppendLine(string.Format("<tr><td width='10%' valign='top'><img style='width:50px;height:50px;' src='{0}' /></td><td width='10%' valign='top'>{1}</td><td align='center' width='10%' valign='top'>Rs.{2}</td><td align='center' width='10%' valign='top'>{3}</td><td align='center' width='10%' valign='top'><a href='javascript:del_r({5});'><img src='{4}' alt='Remove'></a></td></tr>", objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(), "http://" + HttpContext.Current.Request.Url.Authority + "/images/close.png", index_val));
                    totalPrice = totalPrice - Convert.ToInt32(objDataTable_session.Rows[i]["Price"].ToString());
                    index_val = index_val + 1;

                }
            }
            else
            {
                cOrderSkuType objcOrderSkuType = new cOrderSkuType();
                DataTable dtSkuDetails = objcOrderSkuType.GetSku_AlternateImage_Description_Price(1);



                cUserMeasurement objcUserMeasurement = new cUserMeasurement();
                //string url_image = "http://" + HttpContext.Current.Request.Url.Authority + "/images/6.jpg";
                string url_image = "http://" + HttpContext.Current.Request.Url.Authority + "/" + dtSkuDetails.Rows[0]["ImageURL"].ToString();


                totalPrice = 0;
                index_val = 0;

                if (HttpContext.Current.Session["ShpngCart"] == null)
                {

                }
                else
                {
                    DataTable objDataTable_session = ((DataTable)HttpContext.Current.Session["ShpngCart"]);
                    //int indx = 0
                    for (int i = 0; i < objDataTable_session.Rows.Count; i++)
                    {
                        objDataTable.Rows.Add(objDataTable_session.Rows[i]["SKUID"].ToString(), objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(), objDataTable_session.Rows[i]["backyoke"].ToString(), objDataTable_session.Rows[i]["collar"].ToString(), objDataTable_session.Rows[i]["front"].ToString(), objDataTable_session.Rows[i]["sleeves"].ToString(), objDataTable_session.Rows[i]["cuffs"].ToString(), objDataTable_session.Rows[i]["planket"].ToString(), objDataTable_session.Rows[i]["rightpocket"].ToString(), objDataTable_session.Rows[i]["topbutton"].ToString(), objDataTable_session.Rows[i]["back"].ToString(), objDataTable_session.Rows[i]["bottomcut"].ToString(), objDataTable_session.Rows[i]["leftpocket"].ToString(), objDataTable_session.Rows[i]["button"].ToString(), objDataTable_session.Rows[i]["description"].ToString());
                        //objDataTable.Rows.Add(objDataTable_session.Rows[i]["SKUID"].ToString(), objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(),backyoke, collar, front, sleeves, cuffs, planket, rightpocket, topbutton, back, bottomcut, leftpocket, button);
                        objStringBuider.AppendLine(string.Format("<tr><td width='10%' valign='top'><img style='width:50px;height:50px;' src='{0}' /></td><td width='10%' valign='top'>{1}</td><td align='center' width='10%' valign='top'>Rs.{2}</td><td align='center' width='10%' valign='top'>{3}</td><td align='center' width='10%' valign='top'><a href='javascript:del_r({5});'><img src='{4}' alt='Remove'></a></td></tr>", objDataTable_session.Rows[i]["ImageURL"].ToString(), objDataTable_session.Rows[i]["SKUName"].ToString(), objDataTable_session.Rows[i]["Price"].ToString(), objDataTable_session.Rows[i]["QTY"].ToString(), "http://" + HttpContext.Current.Request.Url.Authority + "/images/close.png", index_val));
                        totalPrice = totalPrice + Convert.ToInt32(objDataTable_session.Rows[i]["Price"].ToString());
                        index_val = index_val + 1;

                    }

                }



                //objStringBuider.AppendLine(string.Format("<tr><td width='10%' valign='top'><img style='width:50px;height:50px;' src='{0}' /></td><td width='10%' valign='top'>{1}</td><td align='center' width='10%' valign='top'>Rs.{2:0}</td><td align='center' width='10%' valign='top'><select id='slctQty'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option></select></td><td align='center' width='10%' valign='top'><a href='javascript:del_r({5});'><img src='{4}' alt='Remove'></a></td></tr>", url_image, dtSkuDetails.Rows[0]["SKUName"], dtSkuDetails.Rows[0]["Price"], 1, "http://" + HttpContext.Current.Request.Url.Authority + "/images/close.png", index_val));
                objStringBuider.AppendLine(string.Format("<tr><td width='10%' valign='top'><img style='width:50px;height:50px;' src='{0}' /></td><td width='10%' valign='top'>{1}</td><td align='center' width='10%' valign='top'>Rs.{2:0}</td><td align='center' width='10%' valign='top'>1</td><td align='center' width='10%' valign='top'><a href='javascript:del_r({5});'><img src='{4}' alt='Remove'></a></td></tr>", url_image, dtSkuDetails.Rows[0]["SKUName"], dtSkuDetails.Rows[0]["Price"], 1, "http://" + HttpContext.Current.Request.Url.Authority + "/images/close.png", index_val));
                //objStringBuider.AppendLine(string.Format("<tr><td width='10%' valign='top'><img style='width:50px;height:50px;' src='{" + dtSkuDetails.Rows[0]["ImageURL"] + "}' /></td><td width='10%' valign='top'>{" + dtSkuDetails.Rows[0]["SKUDescription"] + "}</td><td align='center' width='10%' valign='top'>Rs.{" + dtSkuDetails.Rows[0]["Price"] + "}</td><td align='center' width='10%' valign='top'><select id='slctQty'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option></select></td><td align='center' width='10%' valign='top'>D</td></tr>", url_image, "Descriptn", 2000, 1));
                totalPrice = totalPrice + Convert.ToInt32(dtSkuDetails.Rows[0]["Price"]);






                //objDataTable.Rows.Add("ImageURl","Description",Price,Qty)

                //objDataTable.Rows.Add("br",2, 2000, 1);
                objDataTable.Rows.Add(dtSkuDetails.Rows[0]["SKUID"], url_image, dtSkuDetails.Rows[0]["SKUName"], Convert.ToInt32(dtSkuDetails.Rows[0]["Price"]), 1, backyoke, collar, front, sleeves, cuffs, planket, rightpocket, topbutton, back, bottomcut, leftpocket, button, Description);

            }
            if (objDataTable.Rows.Count > 0)
            {
                objStringBuider.AppendLine(string.Format("<tr><td style='text-align:right;background-color:#3b3b3b;color:#C3C5C8;' colspan='5' valign='top'><b>Merchandise Total: Rs. {0:0}</b>&nbsp;</td></tr></table>", totalPrice));
            }
            else
            {
                objStringBuider.AppendLine(string.Format("</table>"));
            }
            abc = objStringBuider.ToString();
            HttpContext.Current.Session["ShpngCart"] = objDataTable;
            //= objDataTable;
            try
            {
            }
            catch (Exception ex)
            {
            }
            return (abc);
        }

    }
}