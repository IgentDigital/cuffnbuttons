<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Showcase.aspx.cs" Inherits="CuffsnButtons.Showcase" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>CuffsnButtons</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wgslider.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="Styles/sun.css"/>
<link rel="stylesheet" type="text/css" href="Styles/cuff.css"/>
<style type="text/css">
    
        @font-face {
		 	font-family: "KeepCalm";
 			/*src: url("BarcodeFont.eot") /* EOT file for IE */
 			src: url("http://demowebsample.com/KeepCalm-Medium.ttf") /* TTF file for CSS3 browsers */
		    }
		   
		   @font-face {
		 	font-family: "Keep Calm";
 			/*src: url("BarcodeFont.eot") /* EOT file for IE */
 			src: url("http://demowebsample.com/KeepCalm-Medium.ttf") /* TTF file for CSS3 browsers */
		    }
		    
		.KeepCalmClass
        {
           font-family: KeepCalm; 
        } 
        
    .currentLink {
        color:blue;text-decoration:none;}
   
       .link1  {color:black;text-decoration:none;
       } 
   
   .shirt-title 
   {
        font-family: KeepCalm;
        text-align: center;
        color: #000;
        font-size: 10px;
}

.soldout {
position: absolute;
right: 0px;
bottom: 100px;
width : 100px;
height :28px;
}

.shirt-con {
width: 235px;
height: 350px;
position: relative;
margin: 0px auto;
}

.ddTitle {
padding: 0 0px;
text-indent: 0;
cursor: default;
overflow: hidden;
height: 24px;
background-color: #FFF;
-webkit-border-radius: 3px;
-moz-border-radius: 3px;
border-radius: 3px;
border: 1px solid #e4e4e4;
}
        #Besp0 {color:#878787; font-size:14px; text-decoration:none;font-family:keepCalm;}
            .style2
            {
                height: 403px;
            }
        </style>
</head>
<body class="fullbody">
<form runat="server" id="form1">
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
								<li class="headli"><a class="heada" href="howitmeasure.html">HOW IT MEASURE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
					  <td width="1%" valign="bottom" align="center" style=" font-family: 'keepCalm';
  font-size: 14px; color:#878787">| </td>
					  <td width="7%" style=" font-family: 'keepCalm';
  font-size: 14px; " valign="bottom" align="center" ><a href="blog.html" style="text-decoration:none; " id="Besp"  class="if">BLOG </a></td>
						<td width="2%" valign="bottom" style=" font-family: 'keepCalm';
  font-size: 14px; color:#878787">| </td>
						<td width="6%" align="center" style=" font-family: 'keepCalm';
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
    <table align="center" id="tblContent" width="100%">
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
                            <a id="submenu" class="item" href="#">SHIRT</a></td>
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
            <td width="100%" height="2px">
            </td>
        </tr>
		
		
		<tr>
        <td>
<!--middle part-->
   <table width="85%" align="center" height="auto">
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
                                                            <td id="homeforwardimage" width="13%">
                                                                Select your Shirt
                                                            </td>
                                                            <td width="80%">
                                                            </td>
                            </tr>
                        </table>
                    </td> 
            </tr>
    <tr>
     <td width="100%" align="left">
					   
						
					   <table width="100%">
                    
                    <tr>
                        <td width="35%">
                            <div class="one1-px">
                            </div>
                        </td>
                        <td  width="30%" align="center" id="midheading">SELECT YOUR SHIRT</td>
                        <td width="35%">
                            <div class="one1-px">
                            </div>  
                        </td>
                    </tr>
                </table>
                </td></tr>
					   
				   
    <tr>    
	                     <td  width="100%">		
						 <table width="100%">
						   <tr>
						     <td width="20%" align="center">	
                             				  
								   &nbsp;<asp:DropDownList 
                                       ID="ddlPattern" runat="server" 
                                       onselectedindexchanged="ddlPattern_SelectedIndexChanged" 
                                       AutoPostBack="True" Width="80%" Font-Names="KeepCalm" Font-Size="7pt" style="font-family:KeepCalm"
                                       ForeColor="#666666">
                                   </asp:DropDownList>
                                   
							  </td>
							  
							   <td width="20%" align="center">
	                     						  
								   &nbsp;<asp:DropDownList 
                                       ID="ddlFabric" runat="server" 
                                       onselectedindexchanged="ddlFabric_SelectedIndexChanged" 
                                       AutoPostBack="True" Font-Names="KeepCalm" Font-Size="7pt" 
                                       ForeColor="#666666" Width="80%">
                                   </asp:DropDownList>
								 </td>
						   			<td width="20%" align="center">		  
								        <asp:DropDownList ID="ddlColor" runat="server" 
                                            onselectedindexchanged="ddlColor_SelectedIndexChanged" AutoPostBack="True" 
                                            Font-Names="KeepCalm" Font-Size="7pt" style="font-family:KeepCalm" ForeColor="#666666" Width="80%">
                                        </asp:DropDownList>
</td>  
<td width="20%" align="center">
								        <asp:DropDownList ID="ddlOccassion" runat="server" 
                                            AutoPostBack="True" 
                                            Font-Names="KeepCalm" Font-Size="7pt" style="font-family:KeepCalm" ForeColor="#666666" Width="80%" onselectedindexchanged="ddlOccassion_SelectedIndexChanged" >
                                        </asp:DropDownList></td>

                                        
<td width="20%" align="center">
								        <asp:DropDownList ID="ddlPrice" runat="server" 
                                            AutoPostBack="True" 
                                            Font-Names="KeepCalm" Font-Size="7pt" ForeColor="#666666" style="font-family:KeepCalm" Width="80%" 
                                            onselectedindexchanged="ddlPrice_SelectedIndexChanged"  >
                                            <asp:ListItem Value="0">Low to High</asp:ListItem>
                                            <asp:ListItem Value="1">High To Low</asp:ListItem>
                                        </asp:DropDownList></td>
	                              <!--
                                  <td width="20%" align="right" valign="top">
								   &nbsp;<asp:DropDownList ID="ddlPages" runat="server" 
                                            AutoPostBack="True" 
                                            Font-Names="Verdana" Font-Size="7pt" ForeColor="#666666" Width="50%" 
                                           Visible="False" 
                                            >
                                          <asp:ListItem Value="12">View Per Page</asp:ListItem>
                                          <asp:ListItem>2</asp:ListItem>
                                          <asp:ListItem>4</asp:ListItem>
                                          <asp:ListItem>6</asp:ListItem>
                                        </asp:DropDownList>
								   </td>
                                   -->

								   </tr>
								   </table>
							 </td>
    </tr>
		 
	 
	
	 <tr>
	   <td align="top" width="25%" >
	    <table width="100%" >
		   <tr>
		     <td align="center" class="style2" >
				 <div>
                 <asp:DataList ID="ProductList" runat="server" DataKeyField="SKUID" RepeatDirection="Horizontal"
							RepeatColumns="4"  onitemcommand="ProductList_ItemCommand" 
                         onitemdatabound="ProductList_ItemDataBound">
                     <ItemTemplate>
                         <div class="shirt-con">
                         <asp:imagebutton id="Imagebutton1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ShowcaseImageURL") %>' CommandArgument='<%#DataBinder.Eval(Container.DataItem, "SKUID")%>' commandname="Transfer"  width="100%">
									</asp:imagebutton>
                                    <div class="soldout">
                                    <asp:Image ID="Image_Soldout" runat="server" 
                             ImageUrl='~/images/Sold out.png' Visible="false" /></div>
                             <div class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SKUName")%>
									</div>
									<div class="shirt-title">
										<b>Rs.<%# DataBinder.Eval(Container.DataItem, "Price") %></b>
									</div>
                             <asp:HiddenField ID="hdnQuantity"  runat="server" Value=<%# DataBinder.Eval(Container.DataItem, "Quantity") %> />
                                    </div>
                     </ItemTemplate>
                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                 </asp:DataList>
                 </div>
			 </td>
			 </tr>
			 <tr>
			  <td height="50px">  &nbsp; </td>
			  </tr>
			 
			 
			  
			 
		 </table>
	  
      
       </td>
    </tr>
	  <tr >
	      <td>
		   <%--<table width="100%">
		    <tr>
				<td width="33%" align="left" style="font-size:small">
				    <asp:ImageButton ID="btnFirst" runat="server" 
                        ImageUrl="images/backwardicon.png" onclick="btnFirst_Click" 
                        style="width: 12px" />
&nbsp;<asp:LinkButton ID="btnPrevious" runat="server" onclick="btnPrevious_Click">Previous</asp:LinkButton>
                </td>
			    <td width="33%" align="center">  
					1/1			    </td>
			    <td width="33%" align="right" style="font-size:small">
				    <asp:LinkButton ID="btnNext" runat="server" onclick="btnNext_Click">Next</asp:LinkButton>
&nbsp;<asp:ImageButton ID="btnLast" runat="server" ImageUrl="images/Forward ICon.png" 
                        onclick="btnLast_Click" />
&nbsp;</td>
			 </tr>
		   </table>--%>
		  </td>
	    </tr> 
  </table>
</tr>
<!--middle part-->
   
      
	                     
        <!--footer-->
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

