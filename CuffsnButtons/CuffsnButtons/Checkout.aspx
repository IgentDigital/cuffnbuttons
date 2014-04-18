﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="CuffsnButtons.Checkout" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
<link rel="stylesheet" type'"text/css" href = "Styles/sun.css" />
<link rel="stylesheet"  type="text/css" href="Styles/cuff.css" />
<link rel="stylesheet"  type="text/css" href="Styles/customize.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="slide.js"></script>
    <link href="Styles/jquery.DesignCart.css" rel="stylesheet" />

    <script type="text/javascript" src="Scripts/jquery-latest.1.5.1.js"></script>
    <script type="text/javascript" src="Scripts/jquery.modaldialodDetail.js"></script>
    
<!--slider-->
    <title>Cuff & Botton</title>
    <style type="text/css"> 
        

.shirt-con {
width: 235px;
height: 350px;
position: relative;
margin: 0px auto;
}

.soldout {
position: absolute;
right: 0px;
bottom: 100px;
width : 100px;
height :28px;
}

   .shirt-title {
text-align: center;
color: #000;
font-size: 12px;
}


    </style> 
    
    <script language="javascript" type="text/javascript">
        function mainMenuChange(ObjMenu) {
            var MenuDiv = document.getElementById(ObjMenu).id;
            //alert(MenuDiv);
            if (MenuDiv == '1_fabric') {
                document.getElementById("1_fabric").style.display = 'block';
                document.getElementById("2_style").style.display = 'none';
            }
            else if (MenuDiv == '2_style') {
                document.getElementById("1_fabric").style.display = 'none';
                document.getElementById("2_style").style.display = 'block';
            }

        }

        function send_back()
        {
            alert($("#lstUrl").val());
            window.location.href = $("#lstUrl").val();
        }

        $(document).ready(function () {
            lookup();

        });


        function DesignDetail_r(index_i) {
            //alert(location);
            DesignDetail(index_i);
        }

        function del_r(index_i) {
            //alert(location);
            
            //lookup(index_i);
            var abc;
            $.ajax({
                type: "POST",
                url: "Checkout.aspx/DeleteFromCard",
                data: "{test : " + index_i + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    //alert(abc);
                    document.getElementById("cntnt").innerHTML = abc;
                }
            });
        } //lookup

        function DesignDetail(indexi) {

            var abc;
            $.ajax({
                type: "POST",
                url: "Checkout.aspx/DesignCard",
                data: "{test : " + indexi + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    //alert(abc);
                    $.modaldialog.success(abc);
                }
            });
        } //lookup

        function lookup() {
            
            var abc;
            $.ajax({
                type: "POST",
                url: "Checkout.aspx/shoppingCard",
                data: "{test : 1}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    //alert(abc);
                    document.getElementById("cntnt").innerHTML = abc;
                }
            });
        } //lookup
    </script>
</head>

    
<!--header-->
<body class="fullbody">
<form id="Form1" runat="server">
    <asp:HiddenField runat="server" ID="hdnbackyoke" />
    <asp:HiddenField runat="server" ID="hdncollar" />
    <asp:HiddenField runat="server" ID="hdnfront" />
    <asp:HiddenField runat="server" ID="hdnsleeves" />
    <asp:HiddenField runat="server" ID="hdncuffs" />
    <asp:HiddenField runat="server" ID="hdnplanket" />
    <asp:HiddenField runat="server" ID="hdnrightpocket" />
    <asp:HiddenField runat="server" ID="hdntopbutton" />
    <asp:HiddenField runat="server" ID="hdnback" />
    <asp:HiddenField runat="server" ID="hdnbottomcut" />
    <asp:HiddenField runat="server" ID="hdnleftpocket" />
    <asp:HiddenField runat="server" ID="hdnbutton" />
    <asp:HiddenField runat="server" ID="lstUrl" />
    <asp:ScriptManager runat="server" ID="scManager"></asp:ScriptManager>
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
                            <a href="Default.html">
                                <img src="images/cuff_button.png" border="0" style="height: 25px; " />
                            </a>
                        </td>
                                    <td width="3%" ></td>
                                                <td width="20%" valign= "bottom" id="MainMenu">
							         <ul class="menu" >
							    <li id="Besp">
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
							  <li id="Li1"> OUR PROMISE
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
  font-size: 14px; " valign="bottom" align="center" ><a href="blog.html" style="text-decoration:none; " id="A1"  class="if">BLOG </a></td>
						<td width="2%" valign="bottom" style=" font-family: 'keep Calm';
  font-size: 14px; color:#878787">| </td>
						<td width="6%" align="center" style=" font-family: 'keep Calm';
  font-size: 14px;" valign="bottom"  ><a href="faqs.html" style="text-decoration:none; " id="A2" class="if">FAQs</a></td>
                                    
                                
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
<!--header-->
    <table width="100%" align="center" >
        <tr>
            <td width="100%" height="25px">
                 
            </td>
        </tr>
        <tr>
            <td width="100%">
                <div class="one-px">
              </div>   
            </td>
        </tr>
        <tr>
            <td width="100%" align="center">
                 <table style="font-weight:white; height: 30px; width: 90%;">
                    <tr>
                       
                        <td width="14%" align="left">
                            <a id="submenu" class="item"  href="Showcase.aspx">SHIRT</a></td>
                        <td width="19%" align="center">
                            <a id="submenu" class="item" href="#">PANTS</a>
                        </td>
                        <td width="21%" align="center">
                            <a id="submenu" class="item" href="#">THE SUIT</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" class="item" href="#">BLAZERS</a>
                        </td>
                        <td width="26%" align="right">
                            <a id="submenu" class="item" href="#">DESIGNER COLLECTION</a>
                        </td>
                    
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <div class="one-px">
              </div>   
            </td>
        </tr>
        <tr>
            <td width="100%" height="3px">
            </td>
        </tr>

    </table>
     <table width="85%" align="center">
        <tr>                                           
                    <td width="100%">
                        <table width="100%">
                            <tr>
                                                            
                                                            <td id="homeforwardimage" width="4%">
                                                            Home
                                                            </td>
                                                            <td width="3%" align="center">
                                                                <img src="images/Forward ICon.png" style="height: 10px" />
                                                            </td>
                                                            <td id="homeforwardimage" width="9%">
                                                                CheckOut
                                                            </td>
                                                            <td width="84%">
                                                            </td>
                            </tr>
                        </table>
                    </td> 
            </tr>
        <tr>
                        <td width="100%" height="10px"></td>
                    </tr>
            <tr>
                                <td style="border:2px solid #f9f9f9;">
                    <div style="vertical-align:top;" id="cntnt"></div>
                                    <asp:Panel runat="server" ID="pnlbtn">
                                    <table width="90%"><tr><td align="right">
                                    <asp:Button runat="server" ID="btnC" Text="Continue Shopping" PostBackUrl="~/Customize.aspx" />
                                        <asp:Button runat="server" ID="btnp" Text="Proceed to pay" OnClientClick="javascript:alert('Response redirect to payment gateway')"/>
                                        </td>
                                        </tr>
                                    </table>
                                        </asp:Panel>
                                </td>

            </tr>
        </table>
    <table width="100%">
        <tr>
                        <td width="100%" height="30px">
                        </td>
                    </tr>
                    <tr>
                        <td width="100%">
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
                                                    <input type="text" id="text1" placeholder="Sign Up for newsletter, get latest updates."
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
                        </td>
                    </tr>
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
                                            <td id="Td11" width="12%">
                                              <a href="OurPolices.html" id="White">  OUR POLICIES </a>
                                            </td>
                                            <td id="Td12" width="16%">
                                              <a href="knowyourfabric.html" id="White">   KNOW YOUR FABRIC </a>
                                            </td>
                                             <td id="Td13" width="18%">
                                               <a href="knowyourtailoring.html" id="White">  KNOW YOUR TAILORING </a>
                                            </td>
                                            <td id="Td14" width="10%">
                                               <a href="sample.html" id="White">  SAMPLE KIT </a>
                                            </td>
                                            <td id="Td15" width="10%">
                                               <a href="Contactus.html" id="White">  CONTACT US </a>
                                            </td>
                                            <td width="10%">
                                    
                                            </td>
                                            <td width="19%" align="right">
                                                    <input type="text" id="text2" placeholder="Enter Shipping Number"
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
                                                        <td id="White" width="50%" align="left">
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

