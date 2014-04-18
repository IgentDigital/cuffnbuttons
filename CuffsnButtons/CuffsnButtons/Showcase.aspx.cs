using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;

namespace CuffsnButtons
{
    public partial class Showcase : System.Web.UI.Page
    {
        cShowcase objShowcase = new cShowcase();
        PagedDataSource pds = new PagedDataSource();
        int pageindex = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            pds.PageSize = Convert.ToInt16(ddlPages.SelectedValue);
            pds.AllowPaging = true;
            

            if (!Page.IsPostBack)
            {
                ViewState["pageindex"] = pageindex;
                FillPatterns();
                FillFabrics();
                FillColors();
                FillOccasions();
                GetProducts();
            }

            pageindex = (int)this.ViewState["pageindex"];
        }

        private void FillPatterns()
        {
            DataTable dtPatterns = objShowcase.FetchPatterns();
            ddlPattern.DataSource = dtPatterns;
            ddlPattern.DataTextField = "PatternType";
            ddlPattern.DataValueField = "PatternTypeID";
            ddlPattern.DataBind();
            ddlPattern.Items.Insert(0, new ListItem("All Patterns","0"));
        }

        private void FillFabrics()
        {
            DataTable dtFabrics = objShowcase.FetchFabrics();
            ddlFabric.DataSource = dtFabrics;
            ddlFabric.DataTextField = "FabricType";
            ddlFabric.DataValueField = "FabricTypeID";
            ddlFabric.DataBind();
            ddlFabric.Items.Insert(0, new ListItem("All Fabrics","0"));
        }

        private void FillColors()
        {
            DataTable dtColors = objShowcase.FetchColors();
            ddlColor.DataSource = dtColors;
            ddlColor.DataTextField = "Color";
            ddlColor.DataValueField = "ColorID";
            ddlColor.DataBind();
            ddlColor.Items.Insert(0, new ListItem("All Colors","0"));
        }

        private void FillOccasions()
        {
            DataTable dtOccasions = objShowcase.FetchOccasions();
            ddlOccassion.DataSource = dtOccasions;
            ddlOccassion.DataTextField = "OccasionType";
            ddlOccassion.DataValueField = "OccasionID";
            ddlOccassion.DataBind();
            ddlOccassion.Items.Insert(0, new ListItem("All Occasions", "0"));
        }
        private void GetProducts()
        {
            DataTable dtProducts = objShowcase.FetchProducts();
            ProductList.DataSource = dtProducts;
            ProductList.DataBind();

        }

        protected void ProductList_ItemCommand(object source, DataListCommandEventArgs e)
        {
             if(e.CommandName == "Transfer") 
             {
                 Response.Redirect("Shirt_Main1.aspx?SKU=" + e.CommandArgument);
             }
        }

        protected void ProductList_ItemDataBound(object sender, DataListItemEventArgs e)
        {
           
            HiddenField hdn = (HiddenField)e.Item.FindControl("hdnQuantity");
                if (Convert.ToInt16(hdn.Value) == 0)
                {
                    e.Item.FindControl("Image_Soldout").Visible = true;
                }
            
        }

        protected void ddlPattern_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductList.DataSource = null;
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            this.paging();
        }

        protected void ddlFabric_SelectedIndexChanged(object sender, EventArgs e)
        {
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            this.paging();
        }

        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            pds.DataSource = dtProducts.DefaultView;
            ViewState["dtProducts"] = dtProducts;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            this.paging();
        }

        protected void ddlOccassion_SelectedIndexChanged(object sender, EventArgs e)
        {
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            objShowcase.OccassionID = Convert.ToInt16(ddlOccassion.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            ViewState["dtProducts"] = dtProducts;
            pds.DataSource = dtProducts.DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            this.paging();
            
        }

        private void paging()
        {
            //btnFirst.Enabled = !pds.IsFirstPage;
            //btnPrevious.Enabled = !pds.IsFirstPage;
            //btnLast.Enabled = !pds.IsLastPage;
            //btnNext.Enabled = !pds.IsLastPage;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            pageindex = pageindex + 1;
            pds.CurrentPageIndex = pageindex;
            ViewState["pageindex"] = pageindex;
            pds.DataSource = ((DataTable)ViewState["dtProducts"]).DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            paging();
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            pageindex = pageindex - 1;
            pds.CurrentPageIndex = pageindex;
            ViewState["pageindex"] = pageindex;
            pds.DataSource = ((DataTable)ViewState["dtProducts"]).DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            paging();
        }

        protected void btnFirst_Click(object sender, ImageClickEventArgs e)
        {
            pageindex = 0;
            pds.CurrentPageIndex = pageindex;
            ViewState["pageindex"] = pageindex;
            pds.DataSource = ((DataTable)ViewState["dtProducts"]).DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            paging();
        }

        protected void btnLast_Click(object sender, ImageClickEventArgs e)
        {
            pageindex = pds.PageCount-1;
            pds.CurrentPageIndex = pageindex;
            ViewState["pageindex"] = pageindex;
            pds.DataSource = ((DataTable)ViewState["dtProducts"]).DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            paging();
        }

        protected void ddlPrice_SelectedIndexChanged(object sender, EventArgs e)
        {
            objShowcase.PatternID = Convert.ToInt16(ddlPattern.SelectedValue);
            objShowcase.FabricTypeID = Convert.ToInt16(ddlFabric.SelectedValue);
            objShowcase.ColorID = Convert.ToInt16(ddlColor.SelectedValue);
            objShowcase.OccassionID = Convert.ToInt16(ddlOccassion.SelectedValue);
            objShowcase.OrderByPrice = Convert.ToInt16(ddlPrice.SelectedValue);
            DataTable dtProducts = objShowcase.FetchProducts();
            ViewState["dtProducts"] = dtProducts;
            pds.DataSource = dtProducts.DefaultView;
            ProductList.DataSource = pds;
            ProductList.DataBind();
            this.paging();
        }

    }
}