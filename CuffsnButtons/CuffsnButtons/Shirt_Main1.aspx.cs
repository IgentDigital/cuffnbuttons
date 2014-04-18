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
    public partial class Shirt_Main1 : System.Web.UI.Page
    {
        cProduct objProduct = new cProduct();
        int SKUID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            SKUID = Convert.ToInt32(Request.QueryString["SKU"].Trim());
            if (!IsPostBack)
            {
                FetchProductDetail();
            }

        }

        private void FetchProductDetail()
        {
            objProduct.SKUID = SKUID;
            DataSet dsProduct = objProduct.FetchProductDetail();
            if (dsProduct.Tables[0].Rows.Count > 0)
            {
                this.ProductImage1.ImageUrl = dsProduct.Tables[0].Rows[0]["ShowcaseImageUrl"].ToString();
                this.Thumb_Image1.ImageUrl = dsProduct.Tables[0].Rows[0]["ShowcaseImageUrl"].ToString();
                this.lblName.Text = dsProduct.Tables[0].Rows[0]["SKUName"].ToString();
                this.lblPrice.Text = dsProduct.Tables[0].Rows[0]["Price"].ToString();
                this.lblDescription.Text = dsProduct.Tables[0].Rows[0]["SKUDescription"].ToString();
                this.lblDeliveryTime.Text = dsProduct.Tables[0].Rows[0]["ExpectedDeliveryDays"].ToString();
                this.lblFit.Text = dsProduct.Tables[0].Rows[0]["fit"].ToString();
                this.lblColor.Text = dsProduct.Tables[0].Rows[0]["Color"].ToString();
                this.lblMaterial.Text = dsProduct.Tables[0].Rows[0]["FabricType"].ToString();
                this.lblStyling.Text = dsProduct.Tables[0].Rows[0]["Styling"].ToString();
                this.lblFinish.Text = dsProduct.Tables[0].Rows[0]["Finish"].ToString();
                this.lblConstruction.Text = dsProduct.Tables[0].Rows[0]["Construction"].ToString();

            }
            if (dsProduct.Tables[1].Rows.Count > 0)
            {
                this.ProductImage2.ImageUrl = dsProduct.Tables[1].Rows[1]["ImageUrl"].ToString();
                this.ProductImage3.ImageUrl = dsProduct.Tables[1].Rows[2]["ImageUrl"].ToString();
                this.ProductImage4.ImageUrl = dsProduct.Tables[1].Rows[3]["ImageUrl"].ToString();

                this.Thumb_Image2.ImageUrl = dsProduct.Tables[1].Rows[1]["ImageUrl"].ToString();
                this.Thumb_Image3.ImageUrl = dsProduct.Tables[1].Rows[2]["ImageUrl"].ToString();
                this.Thumb_Image4.ImageUrl = dsProduct.Tables[1].Rows[3]["ImageUrl"].ToString();
                //for (int i = 0; i < dsProduct.Tables[1].Rows.Count; i++)
                //{
                //    Image imgProduct = new Image();
                //    imgProduct.ImageUrl = dsProduct.Tables[1].Rows[i]["ImageUrl"].ToString();
                //    imgProduct.Width = Unit.Pixel(77);
                //    imgProduct.Height = Unit.Pixel(95);
                //    imgProduct.Attributes.Add("Style", "margin: 5px 2px 5px 2px; padding:2px; border:1px; opacity:0.4; border-color: silver; border-style: solid;");
                //    pnlProductAltImg.Controls.Add(imgProduct);
                //}
            }
            if (dsProduct.Tables[2].Rows.Count > 0)
            {
                for (int i = 0; i < dsProduct.Tables[2].Rows.Count; i++)
                {
                    Image imgCare = new Image();
                    imgCare.ImageUrl = dsProduct.Tables[2].Rows[i]["CareInstructionIconURL"].ToString();
                    imgCare.ToolTip = dsProduct.Tables[2].Rows[i]["CareInstruction"].ToString();
                    imgCare.Attributes.Add("Style", "margin: 5px 2px 5px 2px; padding:2px;");
                    pnlCareInstruction.Controls.Add(imgCare);

                }
            }

            if (dsProduct.Tables[3].Rows.Count > 0)
            {
                LikeList.DataSource = dsProduct.Tables[3];
                LikeList.DataBind();

                //for (int i = 0; i < dsProduct.Tables[3].Rows.Count; i++)
                //{
                //    Image imgLikes = new Image();
                //    imgLikes.ImageUrl = dsProduct.Tables[3].Rows[i]["ShowcaseImageUrl"].ToString();
                //    imgLikes.ToolTip = dsProduct.Tables[3].Rows[i]["SKUCODE"].ToString();
                //    imgLikes.Width = Unit.Pixel(235);
                //    imgLikes.Height = Unit.Pixel(290);
                //    pnlLikes.Controls.Add(imgLikes);

                //}
            }
        }

        protected void LikeList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Transfer")
            {
                Response.Redirect("Shirt_Main1.aspx?SKU=" + e.CommandArgument);
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            Page.ClientScript.RegisterForEventValidation(LikeList.UniqueID);
            base.Render(writer);
        }

        protected void btnCustomize_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Customize.aspx?SKU=" + SKUID);
        }
    }
}