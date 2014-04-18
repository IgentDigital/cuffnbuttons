<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestichedshirt.aspx.cs" Inherits="CuffsnButtons.Prestichedshirt" %>
<%--<%@ Register Assembly="MultiDropDown" Namespace="MultiDropDownLib" TagPrefix="MultiDropDownLib" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
    <link rel="stylesheet" type="text/css" href="Styles/cuff.css"/>
    <link href="Styles/sun.css" rel="stylesheet" />
     <link href="Styles/themes/bootstrap-3.1.1.min.css" rel="stylesheet" />
     <link href="Styles/themes/bootstrap-multiselect.css" rel="stylesheet" />
    <link href="Styles/themes/prettify.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-multiselect.js"></script>
    
    <script type="text/javascript" src="Scripts/prettify.js"></script>
    
    

    
    
<!--slider-->
    <title>Cuff & Botton</title>
    <style>
       
    </style>
    <script type="text/javascript" language="javascript">

        function ddl_pop()
        {
            $('.multiselect').multiselect({
                buttonText: function (options, select) {
                    //alert("ss");
                    if (options.length == 0) {
                        return this.nonSelectedText + ' <b class="caret"></b>';
                    }
                    else {
                        if (options.length > this.numberDisplayed) {
                            return options.length + ' ' + this.nSelectedText + ' <b class="caret"></b>';
                        }
                        else {
                            var selected = '';
                            options.each(function () {
                                var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).html();

                                selected += label + ', ';
                                $("#hdfmultilist").val(selected);
                                //alert(selected); 
                            });
                            return selected.substr(0, selected.length - 2) + ' <b class="caret"></b>';
                        }
                    }
                }

            });
        }

        function selectVal()
        {
            if ($("#hdn_Operation").val() == "Update")
            {
                selectDiv_Edit(1);
            }
            else
            {

            }
            //alert("ritesh");
            //alert("aa");
            var obj_ddl = document.getElementById("ddlOccasion");
            //alert(obj_ddl.length);
            var cnt_loop = obj_ddl.length;
            var hdn = (document.getElementById("hdfmultilist").value);
            //alert($("#hdfmultilist").val());
            var arr_hd = hdn.split(",");
            //alert(arr_hdn.split(",").length);
            for (var k = 0; k < cnt_loop; k++)
            {
                
                for (var ki = 0; ki < arr_hd.length; ki++)
                {
                    
                    //alert("k:--" + jQuery.trim(obj_ddl.options[k].text).toUpperCase() + "/ki:--" + jQuery.trim(arr_hd[ki]).toUpperCase());
                    //alert("len-k:--" + jQuery.trim(obj_ddl.options[k].text).toUpperCase().length + "/len-ki:--" + jQuery.trim(arr_hd[ki]).toUpperCase().length);
                    if (jQuery.trim(obj_ddl.options[k].text).toUpperCase() == jQuery.trim(arr_hd[ki]).toUpperCase())
                    { 
                        //alert(obj_ddl.options[k].text);alert(arr_hd[ki]);
                        obj_ddl.options[k].selected = true;
                    }
                }
                //alert(k);
                //alert();
                ////for (var j = 0; k < cnt_loop; k++) {

                ////}
                //alert(arr_hdn.contains(obj_ddl.options[k].text));
                ////if(arr_hdn.contains(obj_ddl.options[k].text) == true)
                ////{
                    
                ////};
                //alert(k);
            }
        }

        function selectDiv(var_div)
        {
            $("#btnPrdDtl_edit").hide();
            $("#btnAltFab_edit").hide();
            $("#btnCareInt_edit").hide();
            $("#btnPrdSubPart_edit").hide();
            //alert("Add");
            if (var_div == 1)
            {
                
                $("#btnPrdDtl").show();
                $("#btnAltFab").show();
                $("#btnCareInt").show();
                $("#btnPrdSubPart").show();

                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").show();
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnCareInt").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = true;
                document.getElementById("btnPrdDtl").disabled = false;
            }
            else if (var_div == 2)
            {
                $("#btnPrdDtl").show();
                $("#btnAltFab").show();
                $("#btnCareInt").show();
                $("#btnPrdSubPart").show();

                $("#ProductAlternateFabric").show();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnCareInt").disabled = false;
                document.getElementById("btnPrdSubPart").disabled = false;
                document.getElementById("btnAltFab").disabled = false;
            }
            else if (var_div == 3)
            {
                $("#btnPrdDtl").show();
                $("#btnAltFab").show();
                $("#btnCareInt").show();
                $("#btnPrdSubPart").show();
                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").show();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = true;
                document.getElementById("btnCareInt").disabled = false;
            }
            else if (var_div == 4)
            {
                $("#btnPrdDtl").show();
                $("#btnAltFab").show();
                $("#btnCareInt").show();
                $("#btnPrdSubPart").show();
                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").show();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnCareInt").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = false;
            }
        }

        function selectDiv_Edit(var_div) {
            //alert(var_div);
            $("#btnPrdDtl").hide();
            $("#btnAltFab").hide();
            $("#btnCareInt").hide();
            $("#btnPrdSubPart").hide();

            $("#btnPrdDtl_edit").show();
            $("#btnAltFab_edit").show();
            $("#btnCareInt_edit").show();
            $("#btnPrdSubPart_edit").show();
            if (var_div == 1) {

               

                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").show();
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnCareInt").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = true;
                document.getElementById("btnPrdDtl").disabled = false;
            }
            else if (var_div == 2) {
                //$("#btnPrdDtl").show();
                //$("#btnAltFab").show();
                //$("#btnCareInt").show();
                //$("#btnPrdSubPart").show();

                $("#ProductAlternateFabric").show();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnCareInt").disabled = false;
                document.getElementById("btnPrdSubPart").disabled = false;
                document.getElementById("btnAltFab").disabled = false;
            }
            else if (var_div == 3) {
                //$("#btnPrdDtl").show();
                //$("#btnAltFab").show();
                //$("#btnCareInt").show();
                //$("#btnPrdSubPart").show();
                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").show();
                $("#ProductPartMapping").hide();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = true;
                document.getElementById("btnCareInt").disabled = false;
            }
            else if (var_div == 4) {
                //$("#btnPrdDtl").show();
                //$("#btnAltFab").show();
                //$("#btnCareInt").show();
                //$("#btnPrdSubPart").show();
                $("#ProductAlternateFabric").hide();
                $("#ProductCareInstructionMapping").hide();
                $("#ProductPartMapping").show();
                $("#ProductDetail").hide();
                document.getElementById("btnPrdDtl").disabled = true;
                document.getElementById("btnAltFab").disabled = true;
                document.getElementById("btnCareInt").disabled = true;
                document.getElementById("btnPrdSubPart").disabled = false;
            }
        }

        function selectVal_set() {
            //alert("Rudra");
            //$('#ddlOccasion').multiselect('destroy');
            //$('#ddlOccasion').multiselect('rebuild');
            // var x = document.createElement("OPTION");
            //alert(document.getElementById("hdfmultilist").value);
            document.getElementById("hdfmultilist").value = "Business Wear";
            var obj_ddl = document.getElementById("ddlOccasion");
            //alert("Occasion" + obj_ddl.length);
            var arr_hdn = (document.getElementById("hdfmultilist").value);
            //alert("Multilist" + arr_hdn.split(",").length);
            for (var i = 0; i < obj_ddl.length; i++) {
                if (arr_hdn.contains(obj_ddl.options[i].text) == true) {
                    obj_ddl.options[i].selected = true;
                };
            }
            //destroy
            //$('.multiselect').multiselect("select", "Business Wear");
            //alert('Raj1');
            //$('#ddlOccasion').multiselect('setOptions', obj_ddl.options);

            //$('.multiselect').multiselect('rebuild');
        }

        function lookup3(parameter) {
            var abc;
            $.ajax({
                type: "POST",
                url: "PrestichedShirt.aspx/GetFunction",
                data: "{Parameter : '"+ parameter +"'}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    //alert(abc);
                    document.getElementById("hdnLabel").innerHTML = abc;
                }
            });
        } //lookup


        $(document).ready(function () {
            //$("#ProductAlternateFabric").hide();
            //$("#ProductCareInstructionMapping").hide();
            //$("#ProductPartMapping").hide();
            //$("#ProductDetail").show();
            //$("#btnPrdDtl").show();
            //document.getElementById("btnAltFab").disabled = true;
            //document.getElementById("btnCareInt").disabled = true;
            //document.getElementById("btnPrdSubPart").disabled = true;
           
            $('.multiselect').multiselect({
                buttonText: function (options, select) {
                    //alert("ss");
                    if (options.length == 0) {
                        return this.nonSelectedText + ' <b class="caret"></b>';
                    }
                    else {
                        if (options.length > this.numberDisplayed) {
                            return options.length + ' ' + this.nSelectedText + ' <b class="caret"></b>';
                        }
                        else {
                            var selected = '';
                            options.each(function () {
                                var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).html();

                                selected += label + ', ';
                                $("#hdfmultilist").val(selected);
                                //alert("1");
                                //alert("select:" + selected); 
                            });
                            return selected.substr(0, selected.length - 2) + ' <b class="caret"></b>';
                        }
                    }
                }

            });
            //alert("2");
            selectVal();
        });


    </script>
    <style type="text/css">

        .menuTabs
        {
        position:relative;
        top:1px;
        FIGURE 22.7 Displaying a tabbed page.
        1026
        left:10px;
        }
        .tab
        {
        border:Solid 1px black;
        border-bottom:none;
        padding:0px 10px;
        background-color:#eeeeee;
        }
        .selectedTab
        {
        border:Solid 1px black;
        border-bottom:Solid 1px white;
        padding:0px 10px;
        background-color:white;
        }
        .tabBody
        {
        border:Solid 1px black;
        padding:20px;
        background-color:white;
        }
        </style>
    </head>
<body class="fullbody">
    <form runat="server" id="frmPrestiched">
        <asp:HiddenField runat="server" ID="hdn_Operation" />
        <asp:HiddenField runat="server" ID="hdn_Operation_Div" />
        <div style="min-height:650px;">
       <%-- <asp:ScriptManager runat="server" ID="scManager"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="upAccountInfo">
                <Triggers>
                   <asp:PostBackTrigger ControlID="btnSaveProductDtl" />
                    <asp:PostBackTrigger ControlID="btnSaveProductParts" />
                    <asp:PostBackTrigger ControlID="btnSaveAlternateImage" />
                    <asp:PostBackTrigger ControlID="btnSearchSKU" />
                    <asp:PostBackTrigger ControlID="ddlProductType" />
                   <asp:PostBackTrigger ControlID="btnSaveProductParts" />
                    <asp:PostBackTrigger ControlID="btnEditProductDtl" />
                    
                </Triggers>
            <ContentTemplate>--%>
        

        
    
            <table width="85%" align="center" height="auto">
        <tr>
            <td width="100%" height="18px">
                 
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" >
                    <tr>
                        <td width="10%" align="center" valign="bottom" >
                            <a href="Default.aspx">
                                <img src="images/cuff_button.png" border="0" style="height: 25px; " />
                            </a>
                        </td>
                                    <td width="3%" ></td>
                                                <td width="20%" valign= "bottom" id="MainMenu">
							         <ul class="menu" >
							    <li id="home">
                                        BESPOKE TAILORING
								<ul class="menu1">
								<li class="headli" ><a class="heada" href="Whycustom.html">WHY CUSTOM</a></li>
								<li class="headli"><a class="heada" href="whyus.html">WHY US</a></li>
								<li class="headli"><a class="heada" href="howitworks.html">HOW IT WORKS</a></li>
								<li class="headli"><a class="heada" href="howitmeasure.html">HOW TO MEASURE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</ul>
							  </li>
						  </ul>
					  </td>	
							 <td width="2%" valign="bottom" style=" font-family: 'keep Calm';
  font-size: 14px; color:#878787">| </td>
						<td width="14%" style="padding-right:inherit;"  valign= "bottom" id="MainMenu">
						   <ul class="menu" >
							  <li id="home"> OUR PROMISE
								<ul class="menu1">
								<li class="headli" ><a class="heada" href="finestfabric.html">FINEST FABRIC</a></li>
								<li class="headli"><a class="heada" href="Qualitytailoring.html">QUALITY TAILORING</a></li>
								<li class="headli"><a class="heada" href="Perfectfit.html">PERFECT FIT</a></li>
								</ul>
							  </li>
						  </ul>
					  </td>
					  <td width="1%" valign="bottom" align="center" style=" font-family: 'keep Calm';
  font-size: 14px; color:#878787">| </td>
					  <td width="7%" style=" font-family: 'keep Calm';
  font-size: 14px; " valign="bottom" align="center" ><a href="blog.html" style="text-decoration:none; " id="Besp"  class="if">BLOG </a></td>
						<td width="2%" valign="bottom" style=" font-family: 'keep Calm';
  font-size: 14px; color:#878787">| </td>
						<td width="6%" align="center" style=" font-family: 'keep Calm';
  font-size: 14px;" valign="bottom"  ><a href="faqs.html" style="text-decoration:none; " id="Besp" class="if">FAQs</a></td>
                                    
                                
                        <td width="12%" align="left">

                        </td>
                        <td id="num" width="13%" align="right" valign="bottom">
                                +91-9999999999
                        </td>
                        <td width="14%" align="center" valign="bottom">
                            <table width="100%">
                                <tr>
                                    <td width="40%" valign="bottom" align="right">
                                        <a href="MyMeasurementInfo.aspx">
                                        <img src="images/account.png" border="0" 
                                            style="height: 30px; " /></a>
                                    </td>
                                    <td width="40%" valign="bottom" align="right">
                                        <a href="Mywardrobe.html">
                                        <img src="images/bag.png" border="0" 
                                            style="height: 30px; " /></a>
                                    </td>
                                    <td id="" width="20%" align="left" valign="bottom">
                                        (0)
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
                
            
        
    
         
            <table >
            <tr><td>&nbsp;</td></tr><tr>
                <td width="100%">
                     <table width="100%" align="center">
                        <tr>
                            <td width="100%" height="25px">
                            </td>
                        </tr>
                         <tr>
                             <td  width="100%">
                                 <div class="one-px"></div>   
                             </td>
                         </tr>
                         <tr>
                             <td width="100%" align="center">
                                 <table style="font-weight:white; height: 30px; width: 90%;">
                                    <tr>
                       
                                        <td width="14%" align="left">
                                            <a id="submenu" href="Shirts.html">SHIRT</a></td>
                                        <td width="19%" align="center">
                                            <a id="submenu" href="Shirts.html">PANTS</a>
                                        </td>
                                        <td width="21%" align="center">
                                            <a id="submenu" href="Shirts.html">THE SUIT</a>
                                        </td>
                                        <td width="20%" align="center">
                                            <a id="submenu" href="Shirts.html">BLAZERS</a>
                                        </td>
                                        <td width="26%" align="right">
                                            <a id="submenu" href="Shirts.html">DESIGNER COLLECTION</a>
                                        </td>
                    
                                    </tr>
                                </table>
                             </td>
                         </tr>
                         <tr>
                            <td width="100%">
                                <div class="one-px"></div>   
                            </td>
                         </tr>
                         <tr>
                            <td width="100%" height="3px"></td>
                         </tr>
                         <tr>
                             
							 
                             <td align="center">
	                            <table width="90%" align="center" style="min-height:600px;">
                                    <tr>
                                         <td rowspan="9" 
                                             valign="top" 
                                             align="left" 
                                              width="20%"
                                             style="margin-right:3px; background-color:#6E6E6E;color:white;font-family:'Times New Roman'; font-size:11pt;"
                                             >
                                  <b>MASTER ENTRY FORM 
                                  <ul >
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="ProductMaster.aspx">Product Type Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="FabricMaster.aspx">Fabric Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddPatternType.aspx">Pattern Type Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddColorList.aspx">Color List Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddOccasionType.aspx">Occasion Type Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddCareInstructions.aspx">Care Instructions Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddProductParts.aspx">Product Parts Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="AddProductSubParts.aspx">Product Sub Part Master</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="Prestichedshirt.aspx">Prestiched Shirt Master</a> </li>
                                           <li> <a style="color:white;font-family:'Times New Roman';" href="AddAdminUser.aspx">Create Admin User</a> </li>
                                      <li> <a style="color:white;font-family:'Times New Roman';" href="OrderStatusMaster.aspx">Update Order Status</a> </li>
                                  </ul></b>
							    
							  </td>
                                    </tr>
                                     
                                    <tr>
                                        <td colspan="2" style="font-family:'keep Calm'; font-size:20px;text-align:center;">Add or Update Product Description</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color:red;"><asp:Label runat="server" ID="lblMessage"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <hr style="background-color:silver;height:2px;vertical-align:bottom;" />
                                            <table style="border:solid;border-top:0px;  border-left:0px;border-right:0px;border-color:silver;  "  width="100%" align="center" >
                                                <tr>
                                                    <td width="15%">&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td width="10%">Product Code</td>
                                                    <td width="20%">
                                                        <asp:DropDownList ID="ddlProductCode" runat="server" AutoPostBack="false" OnSelectedIndexChanged="ddlProductCode_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td width="10%">Product Name</td>
                                                    <td width="20%">
                                                        <asp:DropDownList ID="ddlProductName" runat="server" AutoPostBack="false" OnSelectedIndexChanged="ddlProductName_SelectedIndexChanged"></asp:DropDownList>
                                                    </td>
                                                    <td width="15%">
                                                        <asp:Button ID="btnSearchSKU" runat="server" OnClick="btnSearchSKU_Click" Text="Search" ValidationGroup="SearchSKU" />
                                                        <asp:Button ID="btnClearSearchSKU" runat="server" CausesValidation="false" OnClick="btnClearSearchSKU_Click" Text="Clear" />
                                                        <asp:HiddenField ID="hdnSKUID" runat="server" Value="0" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="7">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" align="left" width="100%">
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv(1);" value="Add Product Detail" id="btnPrdDtl" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv(2);" value="Add Alternate Fabric" id="btnAltFab" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv(3);" value="Add Care Instruction" id="btnCareInt" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv(4);" value="Add Product Sub Part" id="btnPrdSubPart" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv_Edit(1);" value="Edit Product Detail" id="btnPrdDtl_edit" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv_Edit(2);" value="Edit Alternate Fabric" id="btnAltFab_edit" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv_Edit(3);" value="Edit Care Instruction" id="btnCareInt_edit" />
                                            <input type="button" style="width:200px;text-align:left;" onclick="javascript: selectDiv_Edit(4);" value="Edit Product Sub Part" id="btnPrdSubPart_edit" />
                                        </td>
                                        </tr><tr>
                                        <td>
                                            <div id="ProductDetail" style="background-color:#E6E0F8;">
                                                <table width="100%" > 
                                                    <tr>
                                                        <td colspan="5" style="background-color:silver;color:white;text-align:center;" ><b>Product Detail</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td width="10%">Product Type</td>
                                                        <td width="35%">
                                                            <asp:DropDownList runat="server" ID="ddlProductType" OnSelectedIndexChanged="ddlProductType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ID="rfvProductType" InitialValue="0" Display="Dynamic" ControlToValidate="ddlProductType" ForeColor="Red"  ValidationGroup="ProductDetail" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                                
                                                        </td>
                                                        
                                                        <td width="11%">Product Code</td>
                                                        <td width="43%"><asp:TextBox runat="server" ID="txtProductCode" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td>Name</td>
                                                        <td><asp:TextBox runat="server" ID="txtProductName" /></td>
                                                        <td>Price</td>
                                                        <td><asp:TextBox runat="server" ID="txtPrice" />
                                                            <asp:RegularExpressionValidator Display="Dynamic" runat="server" ID="RegularExpressionValidator1" ValidationGroup="ProductDetail" ControlToValidate="txtPrice" ValidationExpression="^[0-9. ]+$" ErrorMessage="Numbers are allowed only" ForeColor="Red"></asp:RegularExpressionValidator>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td>Description</td>
                                                        <td><asp:TextBox runat="server" ID="txtDescription" /></td>
                                                        <td>Pattern Type</td>
                                                        <td>
                                                            <asp:DropDownList runat="server" ID="ddlPatternType"></asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ID="rfvPatternType" InitialValue="0" Display="Dynamic" ControlToValidate="ddlPatternType" ForeColor="Red" ErrorMessage="Required Field." ValidationGroup="ProductDetail"></asp:RequiredFieldValidator>
                                                
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td width="10%">Fabric</td>
                                                        <td><asp:DropDownList runat="server" ID="ddlFabricType"></asp:DropDownList> 
                                                        <asp:RequiredFieldValidator runat="server" ID="rfvFabricType" InitialValue="0" Display="Dynamic" ControlToValidate="ddlFabricType" ForeColor="Red" ErrorMessage="Required Field." ValidationGroup="ProductDetail"></asp:RequiredFieldValidator>

                                                        </td>
                                                        <td width="11%">Color</td>
                                                        <td ><asp:DropDownList runat="server" ID="ddlColor"></asp:DropDownList>   
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" InitialValue="0" Display="Dynamic" ControlToValidate="ddlColor" ForeColor="Red" ErrorMessage="Required Field."  ValidationGroup="ProductDetail"></asp:RequiredFieldValidator>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td valign="top" width="10%">Occasion</td>
                                                        <td>
                                                            <asp:DropDownList Class="multiselect" multiple="multiple"  runat="server" ID="ddlOccasion">
                                                            </asp:DropDownList>
                                                            <asp:HiddenField runat="server" ID="hdfmultilist" />
                                                            <asp:Label runat="server" ID="hdnLabel"></asp:Label>
                                                        </td>
                                                        <td>Quantity</td>
                                                        <td><asp:TextBox runat="server" ID="txtQuantity" />
                                                            <asp:RegularExpressionValidator Display="Dynamic" runat="server" ID="RegularExpressionValidator2" ValidationGroup="ProductDetail" ControlToValidate="txtQuantity" ValidationExpression="^[0-9 ]+$" ErrorMessage="Numbers are allowed only" ForeColor="Red"></asp:RegularExpressionValidator>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td width="10%">Fit</td>
                                                        <td><%--<asp:TextBox runat="server" ID="txtFit" />--%>   
                                                            <asp:DropDownList runat="server" ID="ddlFit">
                                                                <asp:ListItem Text="<--Selecct Fit-->" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="Slim-Fit" Value="Slim-Fit"></asp:ListItem>
                                                                <asp:ListItem Text="Regular-Fit" Value="Regular-Fit"></asp:ListItem>
                                                            </asp:DropDownList>
                                                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" InitialValue="0" Display="Dynamic" ControlToValidate="ddlFit" ForeColor="Red" ErrorMessage="Required Field."  ValidationGroup="ProductDetail"></asp:RequiredFieldValidator>

                                                        </td>
                                                        <td width="11%">Styling</td>
                                                        <td><asp:TextBox runat="server" ID="txtStyling" />        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td width="10%">Finish</td>
                                                        <td><asp:TextBox runat="server" ID="txtFinish" />        </td>
                                                        <td width="11%">Construction</td>
                                                        <td><asp:TextBox runat="server" ID="txtConstruction" />       </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td width="22%" colspan="1">Small Image URL(showcase) </td>
                                                        <td width="31%">
                                                            <asp:FileUpload Width ="90%" BorderColor="Gray" ID="UploadSmallImgURL" runat="server" />
                                                            <asp:Label runat="server" ID="lblSmallImageURL"></asp:Label>
                                                        </td>
                                                        <td>Expected Delivery Days</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtExpectedDeliveryDate"></asp:TextBox>
                                                            <asp:RegularExpressionValidator Display="Dynamic" runat="server" ID="regFN" ValidationGroup="ProductDetail" ControlToValidate="txtExpectedDeliveryDate" ValidationExpression="^[0-9 ]+$" ErrorMessage="Numbers are allowed only" ForeColor="Red"></asp:RegularExpressionValidator>
                                        
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td colspan="1">Large Image URL(showcase)</td>
                                                        <td colspan="3"> 
                                                            <asp:FileUpload Width ="90%" ID="UploadLargeImgURL" runat="server" />
                                                            <asp:Label runat="server" ID="lblLargeImageURL"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td colspan="1">Frame Image URL(showcase)</td>
                                                        <td ><%--<input name="text" type="text" size="30" />
                                                            <input name="button" type="button" value="browse" />
                                                            &nbsp;&nbsp;
                                                            <input name="button" type="button" value="ADD" />        --%>
                                                            <asp:FileUpload Width ="90%" ID="UploadFrameImgURL" runat="server" />
                                                            <asp:Label runat="server" ID="lblFrameImageURL"></asp:Label>
                                                        </td>
                                                        <td colspan="2"><asp:CheckBox runat="server" ID="chkIsActive" Text="Is Active" TextAlign="Left" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td colspan="3" width="55%"></td>
                                                        <td width="30%" align="right">
                                                            <%--<input name="button" type="button" value="EDIT" />
                                                                <input name="button" type="button" value="SAVE" />--%>
                                                            <asp:Button runat ="server" ID="btnEditProductDtl" Text="Edit" OnClick="btnEditProductDtl_Click" ValidationGroup="ProductDetail"  />
                                                            <asp:Button runat="server" ID="btnSaveProductDtl" Text="Save" OnClick="btnSaveProductDtl_Click" ValidationGroup="ProductDetail" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <hr style="background-color:silver;height:3px;vertical-align:bottom;" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" >
                                            <div id="ProductAlternateFabric" style="min-height:300px;background-color:#E6E0F8;">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="6" style="background-color:silver;color:white;text-align:center;" ><b>Alternate Fabric Images for Product:<asp:Label runat="server" ID="lblAltImgProductCode" Font-Bold="true"></asp:Label>--<asp:Label runat="server" ID="lblAltImgProductName" Font-Bold="true"></asp:Label></b></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%">&nbsp;</td>
                                                        <td width="20%" colspan="1">Small Image URL(showcase) </td>
                                                        <td colspan="4" width="46%">
                                                            <asp:FileUpload Width ="90%" BorderColor="Gray" ID="uploadSmallAlternateFabric" runat="server" />
                                                            <asp:Label runat="server" ID="lblSmallAlternateFabric"></asp:Label>	
                                                            <asp:HiddenField runat="server" ID="hdnAlternateImageID" />	          
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%">&nbsp;</td>
                                                        <td colspan="1">Large Image URL(showcase)</td>
                                                        <td colspan="4">
                                                            <asp:FileUpload Width ="90%" BorderColor="Gray" ID="uploadLargeAlternateFabric" runat="server" />
                                                            <asp:Label runat="server" ID="lblLargeAlternateFabric"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td colspan="5" align="center" >
                                                            <table frame="box" >
                                                                <tr>
                                                                    <td valign="top">small image</td>
                                                                </tr>
                                                                <tr>
                                                                    <td> 			
                                                                        <asp:Image AlternateText="Small Image" runat="server" ID="imgalt_small" Width="50px" Height="50px" />	
                                                                        <asp:Image runat="server" AlternateText="Large Image" ID="imgalt_large" Width="50px" Height="50px" />					 
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="8%"></td>
                                                        <td colspan="3"></td>
                                                        <td style="border-right:1px;" align="right"  colspan="2" width="23%">
                                                            <%--<input type="button" value="EDIT" />
                                                                <input type="button" value="SAVE" />	--%>	
                                                            <asp:Button runat="server" ID="btnSaveAlternateImage" Text="Save" OnClick="btnSaveAlternateImage_Click" />
                                                            <asp:Button runat="server" ID="btnEditAlternateImage" Text="Edit" OnClick="btnEditAlternateImage_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <hr style="background-color:silver;height:3px;vertical-align:bottom;" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" >
                                            <div id="ProductCareInstructionMapping" style="min-height:300px;background-color:#E6E0F8;">
                                                <table width="100%">
                                                    <tr>
                                                        <td colspan="4" style="background-color:silver;color:white;text-align:center;" ><b>Care Instructions for Product:<asp:Label runat="server" ID="lblCareInsProductName" Font-Bold="true"></asp:Label>--<asp:Label runat="server" ID="lblCareInsProductCode" Font-Bold="true"></asp:Label></b></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="9%">&nbsp;</td>
                                                        <td>Care Instructions</td>
                                                        <td width="61%"> 
                                                            <asp:DropDownList runat="server" ID="ddlCareInstructions" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ErrorMessage="Required Field." runat="server" ControlToValidate="ddlCareInstructions" Display="Dynamic" InitialValue="0" ValidationGroup="SaveCareInstructions"></asp:RequiredFieldValidator>

                                                            <asp:HiddenField runat="server" ID="hdnCareInstructionID" />
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    <tr>
                                                        <td colspan="4" >&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="9%"></td>
                                                        <td colspan="3" >
                                                            <img src="images/Account.png"  />			
                                                            <img src="images/Account.png"  />				
                                                            <img src="images/Account.png" />				
                                                            <img src="images/Account.png" />				 
                                                            <img src="images/Account.png" />				
                                                            <img src="images/Account.png" />				 
                                                        </td>
                                                    </tr>
                                                    <tr> 
                                                        <td width="9%"></td>	
                                                        <td colspan="2" >&nbsp;</td>  
                                                        <td align="right">
                                                            <asp:Button runat="server" ID="btnSaveCareInstructions" OnClick="btnSaveCareInstructions_Click" Text="Save" ValidationGroup="SaveCareInstructions" />	
                                                            <asp:Button runat="server" ID="btnEditCareInstructions" OnClick="btnEditCareInstructions_Click" Text="Edit" ValidationGroup="SaveCareInstructions" />
                                                        </td>
                                                    </tr>
                                                </table>		 
                                                <hr style="background-color:silver;height:3px;vertical-align:bottom;" />
                                            </div> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" width="100%">
                                            <div id="ProductPartMapping" style="min-height:400px;vertical-align:top; background-color:#E6E0F8;">
                                                <table width="100%">
                                                   <tr>
                                                       <td colspan="3" style="background-color:silver;color:white;text-align:center;" ><b>Product Parts for Product:<asp:Label runat="server" ID="lblPdtPartsProductName" Font-Bold="true"></asp:Label>--<asp:Label runat="server" ID="lblPdtPartsProductCode" Font-Bold="true"></asp:Label></b></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="3">&nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td width="7%">
                                                           <asp:HiddenField runat="server" ID="hdnSKUSubPartMappingID" />
                                                           <asp:HiddenField runat="server" ID="hdnPartTypID" />
                                                           <asp:HiddenField runat="server" ID="hdnSubPartTypeID" />
                                                           <asp:HiddenField runat="server" ID="hdnIsDefault" />
                                                           <asp:HiddenField runat="server" ID="hdnTableColumnOld" />
                                                           <asp:HiddenField runat="server" ID="hdnPrestichedShirtId" />
                                                       </td>
                                                       <td width="15%">Part Name </td>
                                                       <td>
                                                           <asp:DropDownList ID="ddlPartName" runat="server" AutoPostBack="true" CausesValidation="true" OnSelectedIndexChanged="ddlPartName_SelectedIndexChanged" ValidationGroup="partName">
                                                           </asp:DropDownList>
                                                           <asp:RequiredFieldValidator ID="rfvPartName" ForeColor="Red" ErrorMessage="Required Field." runat="server" ControlToValidate="ddlPartName" Display="Dynamic" InitialValue="0" ValidationGroup="partName"></asp:RequiredFieldValidator>
                                                       </td>
                                                   </tr>
                                                    <tr>
                                                        <td width="7%"></td>
                                                        <td>Sub Part&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlSubPart" runat="server"></asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvSubPart" runat="server" ControlToValidate="ddlSubPart"  ForeColor="Red" ErrorMessage="Required Field." Display="Dynamic" InitialValue="0" ValidationGroup="partName"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="7%"></td>
                                                        <td>Sub Part Image URL</td>
                                                        <td>   
                                                            <asp:FileUpload ID="UploadProductSubPartImageUrl" runat="server" BorderColor="Gray" Width="90%" />
                                                            <asp:Label ID="lblProductSubPartImageUrl" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="7%"></td>
                                                        <td>Extra charges				  </td>
                                                        <td width="56%">   
                                                            <asp:TextBox ID="txtExtraCharges" runat="server"></asp:TextBox>
                                                            &nbsp;&nbsp;
                                                            <input type="button" value="ADD"  />
                                                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                                            <asp:CheckBox ID="chkIsDefault" runat="server" Text="IsDefault" TextAlign="Left" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" valign="top" align="center">
                                                            <asp:GridView runat="server" ID="gvProductParts"  PageSize="5"
                                                                AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#A4A4A4"
                                                                HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" AllowPaging="true" OnRowEditing="gvProductParts_RowEditing"
                                                                onrowcommand="gvProductParts_RowCommand" OnPageIndexChanging="gvProductParts_PageIndexChanging">
                                                                <Columns>
                                                                    <asp:BoundField DataField="PartName" HeaderText="Part Name" />
                                                                    <asp:BoundField DataField="SubPartName" HeaderText="Sub Part Name" />
                                                                    <asp:BoundField DataField="ImageURL" HeaderText="Sub Part Image" />
                                                                    <asp:BoundField DataField="ExtraCharges" HeaderText="Extra Charges" />
                                                                    <asp:BoundField DataField="IsDefault" HeaderText="IsDefault" />
                                                                    <asp:TemplateField>
                                                                        <ItemTemplate>
                                                                            <asp:Button runat="server" Id="lnkUpdate" CausesValidation="false" CommandName="xyz" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' Text="Update"  ></asp:Button>         
                                                                            <asp:HiddenField runat="server" ID="hdnProductTypeID" Value='<%# Eval("SKUTypeID") %>' />
                                                                            <asp:HiddenField runat="server" ID="hdnPartID" Value='<%# Eval("PartTypeID") %>' />
                                                                            <asp:HiddenField runat="server" ID="hdnSubPartId" Value='<%# Eval("SubPartTypeID") %>' />
                                                                            <asp:HiddenField runat="server" ID="hdnSubPartMappingID" Value='<%# Eval("SubPartMappingID") %>' />
                                                                            <%--<asp:HiddenField runat="server" ID="hdnPrestichedShirtID" Value='<%# Eval("PrestichedShirtID") %>' />--%>
                                                                            <asp:HiddenField runat="server" ID="hdnIsDefault" Value='<%# Eval("isDefault") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top" align="center">
                                                           <%-- <table align="center" border="1" style="font-size:24px">
                                                                <tr>
                                                                    <th>PN</th>
                                                                    <caption>
                                                                        &nbsp;
                                                                        <tr>
                                                                            <th>SP</th>
                                                                            <th>SPI</th>
                                                                            <th>EC</th>
                                                                            <th>DEFAULT</th>
                                                                            <th>DELETE</th>
                                                                        </tr>
                                                                    </caption>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <td>
                                                                            <td></td>
                                                                            <td></td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <td>
                                                                            <td></td>
                                     <td></td>
                                     <td></td>
                                     <td></td>
                                 </td>
                             </td>
                         </tr>
                     </table>--%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="7%"></td>
                                                        <td></td>
                                                        <td align="right" width="25%"><%-- <input type="button" value="EDIT" /><input type="button" value="SAVE" />--%>
                                                            <asp:Button ID="btnSaveProductParts" runat="server" OnClick="btnSaveProductParts_Click" Text="Save" ValidationGroup="partName" />
                                                            <asp:Button ID="btnEditProductParts" runat="server" OnClick="btnEditProductParts_Click" Text="Edit" ValidationGroup="partName" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <hr style="background-color:silver;height:3px;vertical-align:bottom;" />
                                            </div>
                                        </td>
                                    </tr>
                                    </table>
                                 </td>
                         </tr>
                         </table>
                    </td>

            </tr>
            <tr>
                <td width="100%" height="30px"></td>
                </tr>
                        
            <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
                </table>
                <table width="100%">
                        <tr>
                                    <td width="60%">
                                        <table width="100%">
                                            <tr>
                                                <td width="2%" align="left">
                                                    <img src="images/perfect_fit.png" style="height: 26px;" />
                                                </td>
                                                <td id="free" width="10%" align="center">
                                                    Prefect Fit
                                                </td>
                                                <td width="2%" align="left">
                                                    <img src="images/delivery.png" style="height: 26px;" />
                                                </td>
                                                <td id="free" width="12%" align="center">
                                                    Free Shipping
                                                </td>
                                                <td width="2%" align="left">
                                                    <img src="images/alerations.png" style="height: 26px;" />
                                                </td>
                                                <td id="free" width="12%" align="center">
                                                    Free Alterations
                                                </td>
                                                <td width="2%" align="left">
                                                    <img src="images/14.png" style="height: 26px;" />
                                                </td>
                                                <td id="free"  width="22%" align="center">
                                                    Days Hassle Free Returns
                                                </td>
                                                <td width="9%" align="center">
                                                    <img src="images/mc.png" style="height: 30px;" />
                                                </td>
                                                <td width="9%" align="center">
                                                    <img src="images/visa.png" style="height: 30px;" />
                                                </td>
                                                <td width="9%" align="center">
                                                    <img src="images/ae.png" style="height: 30px;" />
                                                </td>
                                                <td width="9%" align="center">
                                                    <img src="images/Netbanking.png" style="height: 30px;" />
                                                </td>
                                            </tr>
                                        </table>

                                        
                                    </td>
                                    <td width="40%">
                                        <table width="100%">
                                            <tr>
                                                <td width="50%" align="right">
                                                    <input type="text" id="text19" placeholder="Sign Up for newsletter, get latest updates."
                                                        style="height: 27px; width: 260px;" onclick="return textbox_onclick()">
                                                </td>
                                                <td width="7%" align="left">
                                                    <img src="images/go.png" style="height: 32px;" />
                                                </td>
                                                <td width="7%" align="right">
                                                    <img src="images/lnkdIn.png" style="height: 32px;" />
                                                </td>
                                                <td width="7%" align="right">
                                                    <img src="images/fb.png" style="height: 32px;" />
                                                </td>
                                                <td width="7%" align="right">
                                                    <img src="images/tw.png" style="height: 32px;" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                
                            </table>
                            <table width="100%">
                                <tr>
                                    <td width="100%" height="10px"></td>
                                </tr>
                            </table>
    <table align="center" class="content">
        <tr>
                    <td width="100%" align="center">
                     
                        <table align="center" width="100%">
                                <tr>
                                <td width="100%" height="10px">
                                    
                                </td>
                                </tr>
                            <tr>
                                <td width="100%">
                                    <table width="100%">
                                        <tr>
                                            <td width="10%">
                                              <a href="aboutus.html" id="White">  ABOUT US </a>
                                            </td>
                                            <td id="White" width="12%">
                                              <a href="OurPolices.html" id="White">  OUR POLICIES </a>
                                            </td>
                                            <td id="White" width="16%">
                                              <a href="knowyourfabric.html" id="White">   KNOW YOUR FABRIC </a>
                                            </td>
                                             <td id="White" width="18%">
                                               <a href="knowyourtailoring.html" id="White">  KNOW YOUR TAILORING </a>
                                            </td>
                                            <td id="White" width="10%">
                                               <a href="sample.html" id="White">  SAMPLE KIT </a>
                                            </td>
                                            <td id="White" width="10%">
                                               <a href="Contactus.html" id="White">  CONTACT US </a>
                                            </td>
                                            <td width="10%">
                                    
                                            </td>
                                            <td width="19%" align="right">
                                                    <input type="text" id="text20" placeholder="Enter Shipping Number"
                                                        style="height: 20px; width: 200px;" />
                                            </td>
                                            <td width="4%" align="right">
                                                    <img src="images/trck_order.png" style="height: 25px;" />
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </td>
                                
                            </tr>
                            <tr>
                                            <td width="100%" height="8px"></td>
                            </tr>
                            <tr>
                                            <td width="100%">
                                               <img src="images/Footer_Line_Fade.png" style="height: 5px;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                <table width="100%">
                                                    <tr>
                                                        <td id="Besp" width="50%" align="left">
                                                            Copyright (C) 2014. All Rights Reserved.
                                                        </td>
                                                        <td id="White" width="50%" align="right">
                                                            FEEDBACK
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                        </table>
                   
                        
                    </td>
                        
                    </tr>
    </table>
    </form>
</body>
</html>

