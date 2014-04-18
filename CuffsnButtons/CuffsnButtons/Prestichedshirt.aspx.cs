using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Services;
using DAL;

namespace CuffsnButtons
{
    public partial class Prestichedshirt : System.Web.UI.Page
    {
        cProductMaster objcProductMaster = new cProductMaster();
        cFabricType objcFabricType = new cFabricType();
        cSKU objcSKU = new cSKU();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["PageAction"] = "INSERT";
                hdn_Operation.Value = "INSERT";
                hdn_Operation_Div.Value = "INSERT_div";
                string jv_scrpt = string.Format("javascript:selectDiv(1);");
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", jv_scrpt, true);

                btnEditProductDtl.Visible = false;
                btnEditCareInstructions.Visible = false;
                btnEditProductParts.Visible = false;
                btnEditAlternateImage.Visible = false;
                ViewState["SKUID"] = null;
                //rfvPartName.ErrorMessage = "Error"; //Resources.Resource1.rfv_message;

                ddlProductType.DataSource = objcProductMaster.GetSKUList().DefaultView;
                ddlProductType.DataTextField = "SKUType";
                ddlProductType.DataValueField = "SKUTypeId";
                ddlProductType.DataBind();
                ListItem newItem_PrdTyp = new ListItem();
                newItem_PrdTyp.Text = "Select Product Type";
                newItem_PrdTyp.Value = "0";
                ddlProductType.Items.Insert(0,newItem_PrdTyp);

                
                ddlFabricType.DataSource = objcFabricType.GetFiberTypeList().DefaultView;
                ddlFabricType.DataTextField = "FabricType";
                ddlFabricType.DataValueField = "FabricTypeId";
                ddlFabricType.DataBind();
                ListItem newItem_FbrcTyp = new ListItem();
                newItem_FbrcTyp.Text = "Select Fabric Type";
                newItem_FbrcTyp.Value = "0";
                ddlFabricType.Items.Insert(0,newItem_FbrcTyp);

                ddlColor.DataSource = objcProductMaster.GetColorList().DefaultView;
                ddlColor.DataTextField = "Color";
                ddlColor.DataValueField = "ColorID";
                ddlColor.DataBind();
                ListItem newItem_Color = new ListItem();
                newItem_Color.Text = "Select Color";
                newItem_Color.Value = "0";
                ddlColor.Items.Insert(0, newItem_Color);

                ddlOccasion.DataSource = objcProductMaster.GetOccasionType().DefaultView;
                ddlOccasion.DataTextField = "OccasionType";
                ddlOccasion.DataValueField = "OccasionID";
                ddlOccasion.DataBind();
               
                    //ListItem newItem_Occasion = new ListItem();
                    //newItem_Occasion.Text = "Select Occasion Type";
                    //newItem_Occasion.Value = "";
                    //ddlOccasion.Items.Insert(0, newItem_Occasion);

                //    ddlPartName.DataSource = objcProductMaster.GetProductxParts().DefaultView;
                //ddlPartName.DataTextField = "PartName";
                //ddlPartName.DataValueField = "PartTypeID";
                //ddlPartName.DataBind();
                //ListItem newItem_PartNm = new ListItem();
                //newItem_PartNm.Text = "Select Part";
                //newItem_PartNm.Value = "";
                //ddlPartName.Items.Insert(0, newItem_PartNm);

                ddlPatternType.DataSource = objcProductMaster.GetPatternType();
                ddlPatternType.DataTextField = "PatternType";
                ddlPatternType.DataValueField = "PatternTypeID";
                ddlPatternType.DataBind();
                ddlPatternType.Items.Insert(0, new ListItem("<--Select Pattern-->", "0"));


                ddlCareInstructions.DataSource = objcProductMaster.GetCareInstructions();
                ddlCareInstructions.DataTextField = "CareInstruction";
                ddlCareInstructions.DataValueField = "CareInstructionID";
                ddlCareInstructions.DataBind();
                ddlCareInstructions.Items.Insert(0, new ListItem("<--Select Care Instruction-->", "0"));
                

                //...........Sku list..........

                DataSet dsSKU = objcSKU.FetchSKU(0);

                ddlProductCode.DataSource = dsSKU.Tables[0];
                ddlProductCode.DataTextField = "SKUCode";
                ddlProductCode.DataValueField = "SKUID";
                ddlProductCode.DataBind();
                ddlProductCode.Items.Insert(0, new ListItem("<--Select Product Code-->", "0"));


                ddlProductName.DataSource = dsSKU.Tables[0];
                ddlProductName.DataTextField = "SKUName";
                ddlProductName.DataValueField = "SKUID";
                ddlProductName.DataBind();
                ddlProductName.Items.Insert(0, new ListItem("<--Select Product Name-->", "0"));

                hdfmultilist.Value = "";
            }
            //else
            //{
            //    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectVal();", true);
            //    if (Convert.ToString(ViewState["UPD"]) == "A")
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv_Edit(1);", true);
            //    }
            //}
        }

        public void ClearAllData()
        {
            ddlProductType.SelectedIndex = 0;
            txtProductCode.Text = "";
            txtProductName.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";
            ddlPatternType.SelectedIndex = 0;
            ddlFabricType.SelectedIndex = 0;
            ddlColor.SelectedIndex = 0;
            ddlOccasion.SelectedIndex = 0;
            txtQuantity.Text = "";
            ddlFit.SelectedIndex = 0;
            txtStyling.Text = "";
            txtFinish.Text = "";
            txtConstruction.Text = "";
            txtExpectedDeliveryDate.Text = "";
            lblSmallImageURL.Text = "";
            lblLargeImageURL.Text = "";
            lblFrameImageURL.Text = "";
            chkIsActive.Checked = false;

            //..........Alternate Image
            lblSmallAlternateFabric.Text = "";
            lblLargeAlternateFabric.Text = "";

            //.........CareInstructions.....
            ddlCareInstructions.SelectedIndex = 0;


            //.........Product Parts.....

            ddlPartName.Items.Clear();
            ddlSubPart.Items.Clear();
            lblProductSubPartImageUrl.Text = "";
            txtExtraCharges.Text = "";
            chkIsDefault.Checked = false;
            //DataTable dtgvProductParts = new DataTable();
            //dtgvProductParts.Columns.Add("PartName", typeof(string));
            //dtgvProductParts.Columns.Add("SubPartName", typeof(string));
            //dtgvProductParts.Columns.Add("ImageURL", typeof(string));
            //dtgvProductParts.Columns.Add("ExtraCharges", typeof(string));
            //dtgvProductParts.Columns.Add("IsDefault", typeof(string));

            //dtgvProductParts.Rows.Add("No Data Found", "", "", "", "");

            gvProductParts.DataSource = null;
            gvProductParts.DataBind();
 
        }

        protected void fillProductPartName(int PartTypeID)
        {
            ddlPartName.DataSource = objcProductMaster.GetProductxParts(PartTypeID).DefaultView;
            ddlPartName.DataTextField = "PartName";
            ddlPartName.DataValueField = "PartTypeID";
            ddlPartName.DataBind();
            ListItem newItem_PartNm = new ListItem();
            newItem_PartNm.Text = "Select Part";
            newItem_PartNm.Value = "0";
            ddlPartName.Items.Insert(0, newItem_PartNm);
        }

        protected void fillProductSubPartName(int ProductPartID)
        {
            System.Data.DataTable objDataSet = objcProductMaster.GetSKUSubPart(ProductPartID); //objcProductMaster.GetSubPartList_PartType(ProductPartID);
            if (objDataSet.Rows.Count > 0)
            {
                ddlSubPart.Enabled = true;
                ddlSubPart.DataSource = objDataSet.DefaultView;
                ddlSubPart.DataTextField = "SubPartName";
                ddlSubPart.DataValueField = "SubPartTypeID";
                ddlSubPart.DataBind();
                ddlSubPart.Items.Insert(0, new ListItem("<--Select Sub Part-->", "0"));
                
                //ddlSubPart.Load = 
            }
            else
            {
                ddlSubPart.Items.Clear();
                ddlSubPart.Items.Insert(0, new ListItem("<--Select Sub Part-->", "0"));
                ddlSubPart.Enabled = false;
            }
        }

        protected void ddlPartName_SelectedIndexChanged(object sender, EventArgs e)
        {
            objcProductMaster.PartTyprID = Convert.ToInt32(ddlPartName.SelectedItem.Value);
            fillProductSubPartName(Convert.ToInt32(ddlPartName.SelectedItem.Value));
            if (Convert.ToString(ViewState["PageAction"]) == "INSERT")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectDiv(4);selectVal();"), true);
            }
            else if (Convert.ToString(ViewState["PageAction"]) == "UPDATE")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
            }
            //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(4);", true);
            //objcProductMaster.PartTyprID =Convert.ToInt32(ddlPartName.SelectedItem.Value);
            //System.Data.DataSet objDataSet = objcProductMaster.GetSubPartList_PartType(objcProductMaster);
            //if (objDataSet.Tables[0].Rows.Count > 0)
            //{

            //    ddlSubPart.DataSource = objDataSet.Tables[0].DefaultView;
            //    ddlSubPart.DataTextField = "SubPartName";
            //    ddlSubPart.DataValueField = "SubPartTypeID";
            //    ddlSubPart.DataBind();
            //    ListItem newItem_SubPart = new ListItem();
            //    newItem_SubPart.Text = "Select Sub Part";
            //    newItem_SubPart.Value = "";
            //    ddlSubPart.Items.Insert(0, newItem_SubPart);
            //}
            //else
            //{
            //    ddlSubPart.Items.Clear();
            //    ListItem newItem_SubPart = new ListItem();
            //    newItem_SubPart.Text = "No option found...";
            //    newItem_SubPart.Value = "";
            //    ddlSubPart.Items.Insert(0, newItem_SubPart);
            //    ddlSubPart.Enabled = false;
            //}
            
        }

        protected void btnSaveProductDtl_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUTypeId = Convert.ToInt32(ddlProductType.SelectedValue);
                objcSKU.SKUName = txtProductName.Text.Trim();
                objcSKU.SKUCode = txtProductCode.Text.Trim();
                objcSKU.Price = string.IsNullOrEmpty(txtPrice.Text.Trim()) ? 0 : Convert.ToDecimal(txtPrice.Text.Trim());
                objcSKU.SKUDescription = txtDescription.Text.Trim();
                if (ddlPatternType.SelectedIndex > 0)
                {
                    objcSKU.PatternType = Convert.ToInt32(ddlPatternType.SelectedValue);
                }
                if (ddlFabricType.SelectedIndex > 0)
                {
                    objcSKU.FabricTypeId = Convert.ToInt32(ddlFabricType.SelectedValue);
                }
                if (ddlColor.SelectedIndex > 0)
                {
                    objcSKU.ColorId = Convert.ToInt32(ddlColor.SelectedValue);
                }

                //if (ddlOccasion.SelectedIndex > 0)
                if(!string.IsNullOrEmpty((hdfmultilist.Value.Replace(',',' ')).Trim()))
                {
                    string g_id = "";
                    foreach (ListItem value in ddlOccasion.Items)
                    {
                        string[] a = hdfmultilist.Value.Split(',');
                        foreach (string value_str in a)
                        {
                            if (!string.IsNullOrEmpty(value_str))
                            {
                                if (value.Text.ToUpper().Trim() == value_str.ToUpper().Trim())
                                {
                                    g_id = g_id + value.Value + ",";
                                    //break;
                                }
                                else
                                { 
                                }
                            }

                            //Console.WriteLine(value);
                        }
                        //Console.WriteLine(value);
                    }
                    if (g_id.Trim().Length > 0)
                    {
                        objcSKU.SKUOCType_Code = (g_id.Substring(0,g_id.Trim().Length-1));
                    }
                   

                    

                    //objcSKU.SKU_OM_OccasionID = Convert.ToInt32(ddlOccasion.SelectedValue);
                }
                objcSKU.Quantity = Convert.ToInt32(txtQuantity.Text.Trim());
                objcSKU.Fit = ddlFit.SelectedValue; //txtFit.Text.Trim();
                objcSKU.Styling = txtStyling.Text.Trim();
                objcSKU.Finish = txtFinish.Text.Trim();
                objcSKU.Construction = txtConstruction.Text.Trim();
                objcSKU.ExpectedDeliveryDays =Convert.ToInt32(txtExpectedDeliveryDate.Text.Trim());

                String filePath = string.Empty;
                if (this.UploadSmallImgURL.HasFile)
                {
                    if (CheckFileType(UploadSmallImgURL.FileName))
                    {
                        filePath = "~/images/ProductImages/" + UploadSmallImgURL.FileName;
                        UploadSmallImgURL.SaveAs(MapPath(filePath));
                        lblSmallImageURL.Text = filePath;
                        objcSKU.ShowcaseImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.ShowcaseImageURL = "";
                }

                String filePath1 = string.Empty;
                if (this.UploadLargeImgURL.HasFile)
                {
                    if (CheckFileType(UploadLargeImgURL.FileName))
                    {
                        filePath1 = "~/images/ProductImages/" + UploadLargeImgURL.FileName;
                        UploadLargeImgURL.SaveAs(MapPath(filePath1));
                        lblLargeImageURL.Text = filePath1;
                        objcSKU.ShowcaseLargeImageURL = filePath1;
                    }
                }
                else
                {
                    objcSKU.ShowcaseLargeImageURL = "";
                }

                String filePath2 = string.Empty;
                if (this.UploadFrameImgURL.HasFile)
                {
                    if (CheckFileType(UploadFrameImgURL.FileName))
                    {
                        filePath2 = "~/images/ProductImages/" + UploadFrameImgURL.FileName;
                        UploadFrameImgURL.SaveAs(MapPath(filePath2));
                        lblFrameImageURL.Text = filePath2;
                        objcSKU.FabricImageURL = filePath2;
                    }
                }
                else
                {
                    objcSKU.FabricImageURL = "";
                }

                int result = objcSKU.SaveProductDetails(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Product Detail added successfully";
                    DataTable dtSKUIDCreated =objcSKU.GetLatestSKUID();
                    ViewState["SKUID"] = dtSKUIDCreated.Rows[0]["SKUID"].ToString();
                    lblAltImgProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    lblAltImgProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    lblCareInsProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    lblCareInsProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    lblPdtPartsProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    lblPdtPartsProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    string jv_scrpt = string.Format("javascript:selectDiv(2),selectVal();");
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", jv_scrpt, true);
                }
                else
                {
                    lblMessage.Text = "Error";
                }
            }
        }

        protected void btnEditProductDtl_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]);
                objcSKU.SKUTypeId = Convert.ToInt32(ddlProductType.SelectedValue);
                objcSKU.SKUName = txtProductName.Text.Trim();
                objcSKU.SKUCode = txtProductCode.Text.Trim();
                objcSKU.Price = string.IsNullOrEmpty(txtPrice.Text.Trim()) ? 0 : Convert.ToDecimal(txtPrice.Text.Trim());
                objcSKU.SKUDescription = txtDescription.Text.Trim();
                if (ddlPatternType.SelectedIndex > 0)
                {
                    objcSKU.PatternType = Convert.ToInt32(ddlPatternType.SelectedValue);
                }
                if (ddlFabricType.SelectedIndex > 0)
                {
                    objcSKU.FabricTypeId = Convert.ToInt32(ddlFabricType.SelectedValue);
                }
                if (ddlColor.SelectedIndex > 0)
                {
                    objcSKU.ColorId = Convert.ToInt32(ddlColor.SelectedValue);
                }

                //if (ddlOccasion.SelectedIndex > 0)
                if (!string.IsNullOrEmpty((hdfmultilist.Value.Replace(',', ' ')).Trim()))
                {
                    string g_id = "";
                    foreach (ListItem value in ddlOccasion.Items)
                    {
                        string[] a = hdfmultilist.Value.Split(',');
                        foreach (string value_str in a)
                        {
                            if (!string.IsNullOrEmpty(value_str))
                            {
                                if (value.Text.ToUpper().Trim() == value_str.ToUpper().Trim())
                                {
                                    g_id = g_id + value.Value + ",";
                                    //break;
                                }
                                else
                                {
                                }
                            }

                            //Console.WriteLine(value);
                        }
                        //Console.WriteLine(value);
                    }
                    if (g_id.Trim().Length > 0)
                    {
                        objcSKU.SKUOCType_Code = (g_id.Substring(0, g_id.Trim().Length - 1));
                    }
                    //objcSKU.SKU_OM_OccasionID = Convert.ToInt32(ddlOccasion.SelectedValue);
                }
                objcSKU.Quantity = Convert.ToInt32(txtQuantity.Text.Trim());
                objcSKU.Fit = ddlFit.SelectedValue; //txtFit.Text.Trim();
                objcSKU.Styling = txtStyling.Text.Trim();
                objcSKU.Finish = txtFinish.Text.Trim();
                objcSKU.Construction = txtConstruction.Text.Trim();
                objcSKU.ExpectedDeliveryDays = Convert.ToInt32(txtExpectedDeliveryDate.Text.Trim());

                String filePath = string.Empty;
                if (this.UploadSmallImgURL.HasFile)
                {
                    if (CheckFileType(UploadSmallImgURL.FileName))
                    {
                        filePath = "~/images/ProductImages/" + UploadSmallImgURL.FileName;
                        UploadSmallImgURL.SaveAs(MapPath(filePath));
                        lblSmallImageURL.Text = filePath;
                        objcSKU.ShowcaseImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.ShowcaseImageURL = lblSmallImageURL.Text;
                }

                String filePath1 = string.Empty;
                if (this.UploadLargeImgURL.HasFile)
                {
                    if (CheckFileType(UploadLargeImgURL.FileName))
                    {
                        filePath1 = "~/images/ProductImages/" + UploadLargeImgURL.FileName;
                        UploadLargeImgURL.SaveAs(MapPath(filePath1));
                        lblLargeImageURL.Text = filePath1;
                        objcSKU.ShowcaseLargeImageURL = filePath1;
                    }
                }
                else
                {
                    objcSKU.ShowcaseLargeImageURL = lblLargeImageURL.Text;
                }

                String filePath2 = string.Empty;
                if (this.UploadFrameImgURL.HasFile)
                {
                    if (CheckFileType(UploadFrameImgURL.FileName))
                    {
                        filePath2 = "~/images/ProductImages/" + UploadFrameImgURL.FileName;
                        UploadFrameImgURL.SaveAs(MapPath(filePath2));
                        lblFrameImageURL.Text = filePath2;
                        objcSKU.FabricImageURL = filePath2;
                    }
                }
                else
                {
                    objcSKU.FabricImageURL = "";
                }
                objcSKU.IsActive = chkIsActive.Checked;
                int result = objcSKU.UpdateProductDetails(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Product Detail updated successfully";
                    //DataTable dtSKUIDCreated = objcSKU.GetLatestSKUID();
                    //ViewState["SKUID"] = dtSKUIDCreated.Rows[0]["SKUID"].ToString();
                    //lblAltImgProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    //lblAltImgProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    //lblCareInsProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    //lblCareInsProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    //lblPdtPartsProductCode.Text = dtSKUIDCreated.Rows[0]["SKUCode"].ToString();
                    //lblPdtPartsProductName.Text = dtSKUIDCreated.Rows[0]["SKUName"].ToString();
                    //string jv_scrpt = string.Format("javascript:selectDiv(2);");
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", jv_scrpt, true);
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectVal();", true);
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
                }
                else
                {
                    lblMessage.Text = "Error";
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectVal();", true);
                }
            }
        }

        bool CheckFileType(string fileName)
        {
            string ext = System.IO.Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void btnSaveAlternateImage_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]);

                String filePath = string.Empty;
                if (this.uploadSmallAlternateFabric.HasFile)
                {
                    if (CheckFileType(uploadSmallAlternateFabric.FileName))
                    {
                        filePath = "~/images/ProductAlternateImages/" + uploadSmallAlternateFabric.FileName;
                        uploadSmallAlternateFabric.SaveAs(MapPath(filePath));
                        lblSmallAlternateFabric.Text = filePath;
                        objcSKU.SKU_IMG_ImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.SKU_IMG_ImageURL = "";
                }

                String filePath2 = string.Empty;
                if (this.uploadLargeAlternateFabric.HasFile)
                {
                    if (CheckFileType(uploadLargeAlternateFabric.FileName))
                    {
                        filePath2 = "~/images/ProductAlternateImages/" + uploadLargeAlternateFabric.FileName;
                        uploadLargeAlternateFabric.SaveAs(MapPath(filePath2));
                        lblLargeAlternateFabric.Text = filePath2;
                        objcSKU.SKU_IMG_LargeImageURL = filePath2;
                    }
                }
                else
                {
                    objcSKU.SKU_IMG_LargeImageURL = "";
                }

                int result = objcSKU.SaveAlternateImages(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Alternate Images added successfully";
                    //string jv_scrpt = string.Format("javascript:selectDiv(3);");
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(3);selectVal();", true);
                }
                else
                {
                    lblMessage.Text = "Error";
                } 
            }
        }

        //protected void menuTabs_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    multiTabs.ActiveViewIndex = Int32.Parse(menuTabs.SelectedValue);
        //}

        protected void btnSaveProductParts_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]);
                objcSKU.SKU_Pdt_SubPartTypeID = Convert.ToInt32(ddlSubPart.SelectedValue);

                String filePath = string.Empty;
                if (this.UploadProductSubPartImageUrl.HasFile)
                {
                    if (CheckFileType(UploadProductSubPartImageUrl.FileName))
                    {
                        filePath = "~/images/ProductSubPartMap/" + UploadProductSubPartImageUrl.FileName;
                        UploadProductSubPartImageUrl.SaveAs(MapPath(filePath));
                        lblProductSubPartImageUrl.Text = filePath;
                        objcSKU.SKU_Pdt_ImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.SKU_Pdt_ImageURL = "";
                }

                objcSKU.SKU_Pdt_ExtraCharges = string.IsNullOrEmpty(txtExtraCharges.Text.Trim()) ? 0 : Convert.ToDecimal(txtExtraCharges.Text.Trim());
                objcSKU.SKU_Pdt_IsDefault = chkIsDefault.Checked;
                objcSKU.TableColumn = ddlPartName.SelectedItem.Text;
                
                int result = objcSKU.SaveProductParts(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Product Parts detail added successfully";
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(1);selectVal();", true);
                }
                else
                {
                    lblMessage.Text = "";
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
        //Label1.Text = string.Format("{0} ({1})", MultiDropDown1.SelectedItems, MultiDropDown1.SelectedValues);
        //Label2.Text = string.Format("{0} ({1})", MultiDropDown2.SelectedItems, MultiDropDown2.SelectedValues);
        }

        protected void btnSearchSKU_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ClearAllData();
                lblMessage.Text = "";
                hdfmultilist.Value = string.Empty;
                ViewState["SKUID"] = null;
                if (ddlProductCode.SelectedIndex > 0)
                {
                    DataSet dsSKU = objcSKU.FetchSKU(Convert.ToInt32(ddlProductCode.SelectedValue));
                    DataTable dtSkuDetails = dsSKU.Tables[0];
                    DataTable dtOccasion = dsSKU.Tables[1];
                    DataTable dtAlternateImages = dsSKU.Tables[2];
                    DataTable dtCareInstructions = dsSKU.Tables[3];
                    DataTable dtProductPart = dsSKU.Tables[4];
                    ViewState["dtProductPart"] = dtProductPart;

                    if (dtSkuDetails.Rows.Count > 0)
                    {
                        ddlProductName.Text = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        ddlProductType.Text = dtSkuDetails.Rows[0]["SKUTypeID"].ToString();
                        txtProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        txtProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        txtPrice.Text = dtSkuDetails.Rows[0]["Price"].ToString();
                        txtDescription.Text = dtSkuDetails.Rows[0]["SKUDescription"].ToString();
                        ddlPatternType.Text = dtSkuDetails.Rows[0]["PatternID"].ToString();
                        ddlFabricType.Text = dtSkuDetails.Rows[0]["FabricTypeID"].ToString();
                        ddlColor.Text = dtSkuDetails.Rows[0]["ColorID"].ToString();
                        //ddlOccasion.Text = dtSkuDetails.Rows[0][""].ToString();
                        txtQuantity.Text = dtSkuDetails.Rows[0]["Quantity"].ToString();
                        //ddlPatternType.Text = dtSkuDetails.Rows[0]["PatternID"].ToString();
                        ddlFit.Text = dtSkuDetails.Rows[0]["Fit"].ToString();
                        txtStyling.Text = dtSkuDetails.Rows[0]["Styling"].ToString();
                        txtFinish.Text = dtSkuDetails.Rows[0]["Finish"].ToString();
                        txtConstruction.Text = dtSkuDetails.Rows[0]["Construction"].ToString();
                        txtExpectedDeliveryDate.Text = dtSkuDetails.Rows[0]["ExpectedDeliveryDays"].ToString();
                        lblSmallImageURL.Text = dtSkuDetails.Rows[0]["ShowcaseImageURL"].ToString();
                        lblLargeImageURL.Text = dtSkuDetails.Rows[0]["ShowcaseLargeImageURL"].ToString();
                        lblFrameImageURL.Text = dtSkuDetails.Rows[0]["FabricImageURL"].ToString();
                        if (Convert.ToBoolean(dtSkuDetails.Rows[0]["isActive"]) == true)
                            chkIsActive.Checked = true;
                        hdnSKUID.Value = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        ViewState["SKUID"] = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        for (int i = 0; i < dtOccasion.Rows.Count; i++)
                        {
                            hdfmultilist.Value = hdfmultilist.Value + dtOccasion.Rows[i]["OccasionType"].ToString() + ",";
                        }
                        if (hdfmultilist.Value.Length > 0)
                        {
                            hdfmultilist.Value = hdfmultilist.Value.Substring(0, hdfmultilist.Value.Length - 1);
                        }

                        lblAltImgProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblAltImgProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        lblCareInsProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblCareInsProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        lblPdtPartsProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblPdtPartsProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();

                        ddlProductCode.Enabled = false;
                        ddlProductName.Enabled = false;
                        btnSaveProductDtl.Visible = false;
                        btnEditProductDtl.Visible = true;
                        ViewState["PageAction"] = "UPDATE";
                    }
                    else
                    {
                        lblMessage.Text = "No Data found";
                        ViewState["PageAction"] = "INSERT";
                    }

                    if (dtAlternateImages.Rows.Count > 0)
                    {
                        hdnAlternateImageID.Value = dtAlternateImages.Rows[0]["ID"].ToString();
                        lblSmallAlternateFabric.Text = dtAlternateImages.Rows[0]["ImageURL"].ToString();
                        lblLargeAlternateFabric.Text = dtAlternateImages.Rows[0]["LargeImageURL"].ToString();
                        imgalt_large.ImageUrl = lblLargeAlternateFabric.Text;
                        imgalt_small.ImageUrl = lblSmallAlternateFabric.Text;
                        btnSaveAlternateImage.Visible = false;
                        btnEditAlternateImage.Visible = true;
                    }
                    else
                    {
                        btnSaveAlternateImage.Visible = true;
                        btnEditAlternateImage.Visible = false;
                    }

                    if (dtCareInstructions.Rows.Count > 0)
                    {
                        hdnCareInstructionID.Value = dtCareInstructions.Rows[0]["ID"].ToString();
                        ddlCareInstructions.Text = dtCareInstructions.Rows[0]["CareInstructionID"].ToString();
                        btnSaveCareInstructions.Visible = false;
                        btnEditCareInstructions.Visible = true;
                    }
                    else
                    {
                        btnSaveCareInstructions.Visible = true;
                        btnEditCareInstructions.Visible = false;
                    }

                    if (dtProductPart.Rows.Count > 0)
                    {
                        fillProductPartName(Convert.ToInt32(dtSkuDetails.Rows[0]["SKUTypeID"]));
                        btnSaveProductParts.Visible = true;
                        btnEditProductParts.Visible = false;
                        gvProductParts.DataSource = dtProductPart;
                        gvProductParts.DataBind();
                    }

                    fillProductPartName(Convert.ToInt32(dtSkuDetails.Rows[0]["SKUTypeID"]));

                }
                else if (ddlProductName.SelectedIndex > 0)
                {
                    DataSet dsSKU = objcSKU.FetchSKU(Convert.ToInt32(ddlProductName.SelectedValue));
                    DataTable dtSkuDetails = dsSKU.Tables[0];
                    DataTable dtOccasion = dsSKU.Tables[1];
                    DataTable dtAlternateImages = dsSKU.Tables[2];
                    DataTable dtCareInstructions = dsSKU.Tables[3];
                    DataTable dtProductPart = dsSKU.Tables[4];
                    ViewState["dtProductPart"] = dtProductPart;

                    if (dtSkuDetails.Rows.Count > 0)
                    {
                        ddlProductCode.Text = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        ddlProductType.Text = dtSkuDetails.Rows[0]["SKUTypeID"].ToString();
                        txtProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        txtProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        txtPrice.Text = dtSkuDetails.Rows[0]["Price"].ToString();
                        txtDescription.Text = dtSkuDetails.Rows[0]["SKUDescription"].ToString();
                        ddlPatternType.Text = dtSkuDetails.Rows[0]["PatternID"].ToString();
                        ddlFabricType.Text = dtSkuDetails.Rows[0]["FabricTypeID"].ToString();
                        ddlColor.Text = dtSkuDetails.Rows[0]["ColorID"].ToString();
                        //ddlOccasion.Text = dtSkuDetails.Rows[0][""].ToString();
                        txtQuantity.Text = dtSkuDetails.Rows[0]["Quantity"].ToString();
                        ddlFit.Text = dtSkuDetails.Rows[0]["Fit"].ToString();
                        txtStyling.Text = dtSkuDetails.Rows[0]["Styling"].ToString();
                        txtFinish.Text = dtSkuDetails.Rows[0]["Finish"].ToString();
                        txtConstruction.Text = dtSkuDetails.Rows[0]["Construction"].ToString();
                        txtExpectedDeliveryDate.Text = dtSkuDetails.Rows[0]["ExpectedDeliveryDays"].ToString();
                        lblSmallImageURL.Text = dtSkuDetails.Rows[0]["ShowcaseImageURL"].ToString();
                        lblLargeImageURL.Text = dtSkuDetails.Rows[0]["ShowcaseLargeImageURL"].ToString();
                        lblFrameImageURL.Text = dtSkuDetails.Rows[0]["FabricImageURL"].ToString();

                        if (Convert.ToBoolean(dtSkuDetails.Rows[0]["isActive"]) == true)
                            chkIsActive.Checked = true;
                        hdnSKUID.Value = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        ViewState["SKUID"] = dtSkuDetails.Rows[0]["SKUID"].ToString();
                        for (int i = 0; i < dtOccasion.Rows.Count; i++)
                        {
                            hdfmultilist.Value = hdfmultilist.Value + dtOccasion.Rows[i]["OccasionType"].ToString() + ",";
                        }
                        hdfmultilist.Value = hdfmultilist.Value.Substring(0, hdfmultilist.Value.Length - 1);
                        //ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);

                        lblAltImgProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblAltImgProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        lblCareInsProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblCareInsProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();
                        lblPdtPartsProductCode.Text = dtSkuDetails.Rows[0]["SKUCode"].ToString();
                        lblPdtPartsProductName.Text = dtSkuDetails.Rows[0]["SKUName"].ToString();


                        ddlProductCode.Enabled = false;
                        ddlProductName.Enabled = false;
                        btnSaveProductDtl.Visible = false;
                        btnEditProductDtl.Visible = true;
                    }
                    else
                    {
                        lblMessage.Text = "No Data Found";
                    }

                    if (dtAlternateImages.Rows.Count > 0)
                    {
                        hdnAlternateImageID.Value = dtAlternateImages.Rows[0]["ID"].ToString();
                        lblSmallAlternateFabric.Text = dtAlternateImages.Rows[0]["ImageURL"].ToString();
                        lblLargeAlternateFabric.Text = dtAlternateImages.Rows[0]["LargeImageURL"].ToString();
                        imgalt_large.ImageUrl = lblLargeAlternateFabric.Text;
                        imgalt_small.ImageUrl = lblSmallAlternateFabric.Text;
                        btnSaveAlternateImage.Visible = false;
                        btnEditAlternateImage.Visible = true;
                    }
                    else
                    {
                        btnSaveAlternateImage.Visible = true;
                        btnEditAlternateImage.Visible = false;
                    }

                    if (dtCareInstructions.Rows.Count > 0)
                    {
                        hdnCareInstructionID.Value = dtCareInstructions.Rows[0]["ID"].ToString();
                        ddlCareInstructions.Text = dtCareInstructions.Rows[0]["CareInstructionID"].ToString();
                        btnSaveCareInstructions.Visible = false;
                        btnEditCareInstructions.Visible = true;
                    }
                    else
                    {
                        btnSaveCareInstructions.Visible = true;
                        btnEditCareInstructions.Visible = false;
                    }

                    if (dtProductPart.Rows.Count > 0)
                    {
                        fillProductPartName(Convert.ToInt32(dtSkuDetails.Rows[0]["SKUTypeID"]));
                        btnSaveProductParts.Visible = true;
                        btnEditProductParts.Visible = false;
                        gvProductParts.DataSource = dtProductPart;
                        gvProductParts.DataBind();
                    }

                    fillProductPartName(Convert.ToInt32(dtSkuDetails.Rows[0]["SKUTypeID"]));
                    
                }
                else
                {
                    lblMessage.Text = "No Option selected";
                }
                hdn_Operation.Value = "Update";
                hdn_Operation_Div.Value = "1";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:alert('div_b');selectVal();selectDiv_Edit(1);"), true);
            }
            
        }

        protected void ddlProductCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
        }

        protected void ddlProductName_SelectedIndexChanged(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
        }

        protected void btnSaveCareInstructions_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]); //Convert.ToInt32(hdnSKUID.Value);
                objcSKU.SKU_CIM_CareInstructionID = Convert.ToInt32(ddlCareInstructions.SelectedValue);

                int result = objcSKU.SaveCareInstructions(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Care Instruction added successfully";
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(4),selectVal();", true);
                }
                else
                {
                    lblMessage.Text = "Error";
                }
            }
        }


        protected void ddlProductType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProductType.SelectedIndex > 0)
            {
                fillProductPartName(Convert.ToInt32(ddlProductType.SelectedValue));
                if (Convert.ToString(ViewState["PageAction"]) == "INSERT")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectDiv(1);selectVal();"), true);
                }
                else if (Convert.ToString(ViewState["PageAction"]) == "UPDATE")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
                }
            }
        }
       
        [WebMethod]
        public static string GetFunction(string Parameter)
        {
            string abc = "";
            try
            {
                cProductMaster objcProductMaster = new cProductMaster();
                DataTable DT = objcProductMaster.GetOccasionType();
                objcProductMaster.SKUTypeId = Convert.ToInt32(Parameter);
                DataTable dtOccasionBySKU = objcProductMaster.GetOccasionBySKUID(objcProductMaster.SKUTypeId);

                abc = "<select id=\"ddlS\" name=\"ddlS\" class=\"multiselect\" multiple=\"multiple\"><option selected=\"selected\">Ritesxh</option></select>";
                for (int a = 0; a < DT.Rows.Count; a++){
                    bool flg = false;
                    for (int j = 0; j < dtOccasionBySKU.Rows.Count; j++)
                    {
                        if (DT.Rows[a]["OccasionType"].ToString() == dtOccasionBySKU.Rows[j]["OccasionType"].ToString())
                        {
                            flg = true;
                            break;
                        }
                        else
                        {
                            continue;
                        }

                    }


                        if (flg)
                        {
                            abc = abc + string.Format("<option selected=\"selected\">{0}</option>", DT.Rows[a]["OccasionType"]);
                        }
                        else
                        {
                            abc = abc + string.Format("<option>{0}</option>", DT.Rows[a]["OccasionType"]);
                        }
                
                }
                 abc = "<select id=\"ddlS\" name=\"ddlS\" class=\"multiselect\" multiple=\"multiple\"><option selected=\"selected\">Ritesxh</option></select>"; ;
                //    objcUserMeasurement.UserId = txtProfileName;
                //abc = objcUserMeasurement.GetStandardSize(objcUserMeasurement, 3);
            }
            catch (Exception ex)
            {
            }
            return abc;
        }

        protected void btnClearSearchSKU_Click(object sender, EventArgs e)
        {
            ViewState["SKUID"] = null;
            //ddlProductCode.SelectedIndex = 0;
            //ddlProductName.SelectedIndex = 0;
            //ddlProductCode.Enabled = true;
            //ddlProductName.Enabled = true;
            //ddlProductType.SelectedIndex = 0;
            //txtProductCode.Text = "";
            //txtProductName.Text = "";
            Response.Redirect("~/prestichedshirt.aspx");
        }

        protected void btnEditAlternateImage_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKU_IMG_Id = Convert.ToInt32(ViewState["SKUID"]);

                String filePath = string.Empty;
                if (this.uploadSmallAlternateFabric.HasFile)
                {
                    if (CheckFileType(uploadSmallAlternateFabric.FileName))
                    {
                        filePath = "~/images/ProductAlternateImages/" + uploadSmallAlternateFabric.FileName;
                        uploadSmallAlternateFabric.SaveAs(MapPath(filePath));
                        lblSmallAlternateFabric.Text = filePath;
                        objcSKU.SKU_IMG_ImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.SKU_IMG_ImageURL = lblSmallAlternateFabric.Text;
                }

                String filePath2 = string.Empty;
                if (this.uploadLargeAlternateFabric.HasFile)
                {
                    if (CheckFileType(uploadLargeAlternateFabric.FileName))
                    {
                        filePath2 = "~/images/ProductAlternateImages/" + uploadLargeAlternateFabric.FileName;
                        uploadLargeAlternateFabric.SaveAs(MapPath(filePath2));
                        lblLargeAlternateFabric.Text = filePath2;
                        objcSKU.SKU_IMG_LargeImageURL = filePath2;
                    }
                }
                else
                {
                    objcSKU.SKU_IMG_LargeImageURL = lblLargeAlternateFabric.Text;
                }

                int result = objcSKU.SaveAlternateImages(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Alternate Images Updated successfully";
                    hdfmultilist.Value = hdfmultilist.Value;
                    hdfmultilist.Value = hdfmultilist.Value.Substring(0, hdfmultilist.Value.Trim().Length - 1);
                    //string jv_scrpt = string.Format("javascript:selectDiv(3);");
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(2);", true);
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
                }
                else
                {
                    lblMessage.Text = "Error";
                }
            }
        }

        protected void btnEditCareInstructions_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]);
                objcSKU.SKU_CIM_Id = Convert.ToInt32(hdnCareInstructionID.Value);
                objcSKU.SKU_CIM_CareInstructionID = Convert.ToInt32(ddlCareInstructions.SelectedValue);

                int result = objcSKU.SaveCareInstructions(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Care Instruction Updated successfully";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(2);", true);
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
                }
                else
                {
                    lblMessage.Text = "Error";
                }
            }
        }

        protected void btnEditProductParts_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                objcSKU.SKUId = Convert.ToInt32(ViewState["SKUID"]);
                objcSKU.SKU_Pdt_SKUid = Convert.ToInt32(hdnSKUSubPartMappingID.Value);
                objcSKU.SKU_Pdt_SubPartTypeID = Convert.ToInt32(ddlSubPart.SelectedValue);

                String filePath = string.Empty;
                if (this.UploadProductSubPartImageUrl.HasFile)
                {
                    if (CheckFileType(UploadProductSubPartImageUrl.FileName))
                    {
                        filePath = "~/images/ProductSubPartMap/" + UploadProductSubPartImageUrl.FileName;
                        UploadProductSubPartImageUrl.SaveAs(MapPath(filePath));
                        lblProductSubPartImageUrl.Text = filePath;
                        objcSKU.SKU_Pdt_ImageURL = filePath;
                    }
                }
                else
                {
                    objcSKU.SKU_Pdt_ImageURL = lblProductSubPartImageUrl.Text;
                }

                objcSKU.SKU_Pdt_ExtraCharges = string.IsNullOrEmpty(txtExtraCharges.Text.Trim()) ? 0 : Convert.ToDecimal(txtExtraCharges.Text.Trim());
                objcSKU.SKU_Pdt_IsDefault = chkIsDefault.Checked;
                objcSKU.TableColumn = ddlPartName.SelectedItem.Text;
                objcSKU.TableColumnOld = hdnTableColumnOld.Value;
                objcSKU.SKU_Pdt_SubPartTypeID_Old = Convert.ToInt32(hdnSKUSubPartMappingID.Value);
                //objcSKU.PreStichedShirtID = Convert.ToInt32(hdnPrestichedShirtId.Value);
                int result = objcSKU.UpdateProductParts(objcSKU);
                if (result > 0)
                {
                    lblMessage.Text = "Product Parts details updated successfully";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "alert", "javascript:selectDiv(1);", true);
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
                }
                else
                {
                    lblMessage.Text = "";
                }
            }
        }

        protected void gvProductParts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("xyz"))
            {
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = gvProductParts.Rows[index];

                if (Convert.ToBoolean(((HiddenField)row.Cells[3].FindControl("hdnIsDefault")).Value) == true)
                    chkIsDefault.Checked = true;
                else
                    chkIsDefault.Checked = false;
                hdnSKUSubPartMappingID.Value = ((HiddenField)row.Cells[3].FindControl("hdnSubPartMappingID")).Value;
                //hdnPrestichedShirtId.Value = ((HiddenField)row.Cells[3].FindControl("hdnPrestichedShirtID")).Value;
                hdnPartTypID.Value = ((HiddenField)row.Cells[3].FindControl("hdnPartID")).Value;
                hdnSubPartTypeID.Value = ((HiddenField)row.Cells[3].FindControl("hdnSubPartId")).Value;
                hdnTableColumnOld.Value = row.Cells[0].Text;
                fillProductPartName(Convert.ToInt32(((HiddenField)row.Cells[3].FindControl("hdnProductTypeID")).Value));
                fillProductSubPartName(Convert.ToInt32(Convert.ToInt32(((HiddenField)row.Cells[3].FindControl("hdnPartID")).Value)));
                ddlPartName.Text = hdnPartTypID.Value; //row.Cells[3].FindControl("hdnPartID").ToString();
                ddlSubPart.Text = hdnSubPartTypeID.Value; //row.Cells[3].FindControl("hdnSubPartId").ToString();

                lblMessage.Text = "";
                btnSaveProductParts.Visible = false;
                btnEditProductParts.Visible = true;
                lblMessage.Text = "";

                ScriptManager.RegisterStartupScript(this, GetType(), "alert", string.Format("javascript:selectVal();"), true);
            }
        }

        protected void gvProductParts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           gvProductParts.PageIndex=e.NewPageIndex;
           gvProductParts.DataSource = (DataTable)ViewState["dtProductPart"];
        }

        protected void gvProductParts_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}