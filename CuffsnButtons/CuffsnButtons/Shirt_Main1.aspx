<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shirt_Main1.aspx.cs" Inherits="CuffsnButtons.Shirt_Main1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
<head>
<script type="text/javascript" src="http://www.vitruvien.com/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://www.vitruvien.com/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="http://www.vitruvien.com/js/gall.js"></script>
<link href="Styles/gallery.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="Styles/sun.css"/>

<link rel="stylesheet" type="text/css" href="Styles/cuff.css"/>


    <title>Custom Fit - Product Description</title>
    <style> 
        
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
        .one-px
        {
            width:100%; height:1px; 
            background-color:black; margin-top:0px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        .two-px
        {
            width:100%; height:1px; 
            background-color:Silver; margin-top:0px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        #submenu {color:White;text-decoration: none;font-weight:bold;font-size:17px}
        #menu {color:Black; font-size:13px; text-decoration:none;font-weight:bold;}
        #footer {color:Black; font-size:14px; text-decoration:none;}
        .style1
        {
            width: 1%;
			
        }
        .shirt-con {
width: 235px;
height: 290px;
position: relative;
margin: 0px auto;
}
 .shirt-title {
text-align: center;
color: #000;
font-size: 10px;
font-family: 'KeepCalm';
}
        .etalage_Shirt
        {
            border: 1px solid #FFF;
            padding: 6px;
            -webkit-box-shadow: 0 0 10px #ddd;
            -moz-box-shadow: 0 0 10px #ddd;
            box-shadow: 0 0 10px #ddd;
        }
        .price {
            color: #66bac4;
            float: right;
            font-family: 'KeepCalm';
            font-size: 30px;
            }
            
            #div {
display: block;
}

            #fab-style {
background-color: #fff;
padding: 0px;
margin-bottom: 0px;
margin-top: 0px;
}
#tabs {
	font-size: 90%;
	margin: 0px 0;
}
#tabs ul {
	float: left;
	background: #fff;
	width: 500px;
	padding-top: 0px;
	padding-left: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
#tabs li {
	margin-left: 0px;
	list-style: none;
}
* html #tabs li {
	display: inline;
}
#tabs li, #tabs li a {
	float: left;
	-webkit-border-top-left-radius: 3px;
-webkit-border-top-right-radius: 3px;
-moz-border-radius-topleft: 3px;
-moz-border-radius-topright: 3px;
border-top-left-radius: 3px;
border-top-right-radius: 3px;
}

#tabs li{ border-top:1px solid #e1e1e1; border-left:1px solid #e1e1e1; border-right:1px solid #e1e1e1;}

#tabs ul li.active {

	background: #FFF;
}
#tabs ul li.active a {
	color: #000;
	background-color:#fff;
	font-weight:bold;
}
#tabs div {
	background: #FFFFff;
	clear: both;
	padding: 5px;
	min-height: 136px;
	border:1px solid #e1e1e1;
}
#tabs div h3 {
	margin-bottom: 12px;
}
#tabs div p {
	line-height: 150%;
}
#tabs ul li a {
	text-decoration: none;
	padding: 8px;
	color: #868686;
	background-color:#f5f5f5;
}

            #tabs div {
background: #FFFFff;
clear: both;
padding: 5px;
min-height: 136px;
border: 1px solid #e1e1e1;
}

#tabs ul li a {
text-decoration: none;
padding: 8px;
color: #868686;
background-color: #f5f5f5;
}

#tabs ul li.active a {
color: #000;
background-color: #fff;
font-weight: bold;
}
            #tabs ul li.active
            {
                background: #FFF;
            }
            
            #tabs ul {
float: left;
background: #fff;
width: 500px;
padding-top: 4px;
}
ul, ol {
margin-left: 0;
list-style: none;
}
ul, menu, dir {
display: block;
list-style-type: disc;
-webkit-margin-before: 1em;
-webkit-margin-after: 1em;
-webkit-margin-start: 0px;
-webkit-margin-end: 0px;
-webkit-padding-start: 40px;
}


            #tabs li 
            {
            border-top: 1px solid #e1e1e1;
            border-left: 1px solid #e1e1e1;
            border-right: 1px solid #e1e1e1;
            }
            
            #tabs li, #tabs li a {
            float: left;
            -webkit-border-top-left-radius: 3px;
            -webkit-border-top-right-radius: 3px;
            -moz-border-radius-topleft: 3px;
            -moz-border-radius-topright: 3px;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            }
            
            #tabs li {
            margin-left: 0px;
            list-style: none;
            display: list-item;
            text-align: -webkit-match-parent;
            height: 29px;
        }
            
            #fab-style { background-color:#fff; padding:0px; margin-bottom:0px; margin-top:0px;font-size:12px }
         #fab-style h2 { font-size:14px; color:#000; font-weight:400; padding-bottom:8px; padding-top:8px; padding-bottom:8px;}
         #fab-style table { display:block; margin-bottom:14px; font-size:12px }
 table[Attributes Style] {
width: 100%;
border-top-width: 0px;
border-right-width: 0px;
border-bottom-width: 0px;
border-left-width: 0px;
border-spacing: 0px;
}
table {
display: table;
border-collapse: separate;
border-spacing: 2px;
border-color: gray;
}
tbody {
display: table-row-group;
vertical-align: middle;
border-color: inherit;
}
tr {
display: table-row;
vertical-align: inherit;
border-color: inherit;
}
#fab-style table tr td:nth-child(2n+1) {
font-weight: bold;
color: #272860;
}
td[Attributes Style] {
text-align: -webkit-left;
vertical-align: top;
width: 95px;
}
td, th {
display: table-cell;
vertical-align: inherit;
}

#delivered-con {
padding: 0px 0px;
font-size: 14px;
float: right;
vertical-align:top;
border: none;
font:KeepCalm; 
Font-Size:Small;
color:Orange;
}

#fab-style h2.shipping-txt-title {
color: #272860;
font-size: 10px;
padding-bottom: 2px;
font-weight: bold;
padding-top: 0px;
text-align:left;
}

h2.shipping-txt-title {
color: Gray;
font-size: 12px;
padding-bottom: 2px;
font-weight: bold;
padding-top: 0px;
text-align:center;
font-family:'KeepCalm';
}

.item:hover 
		{  
          border-top: 4px solid #3b3b3b;
	      border-bottom: 4px solid #3b3b3b;
        }
        #background
        {
            width:100%;
            height:130px;
		padding: 0 0 0px 0;
            background:url(images/Black_Texture___Ray_by_Ethenyl.jpg) repeat;
		margin:0;
           
        }


        #Besp {color:#878787; font-size:14px; text-decoration:none;font-family:keepCalm;}
        #num {color:#878787; font-size:12px; text-decoration:none;font-family:keepCalm;}
        #submenu {color:#878787;text-decoration: none;font-weight:bold;font-size:17px;font-family:keepCalm;}
        #midheading {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keepCalm;}
        #fab {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keepCalm;}
        #free {color:#878787;text-decoration: none;font-weight:bold;font-size:13px;font-family:keepCalm;}
        #White {color:White;text-decoration: none;font-weight:bold;font-size:14px;font-family:keepCalm;}
         .one-px
        {
            width:100%; height:2px; 
            background-color:#878787;
           
        }
        .one1-px
        {
            width:100%; height:2px; 
            background-color:#878787;
        }
    .content {
position: relative;
padding: 0px 0px 0px 0px;
margin: 0;
background: #000;
width:100%;
}

#Besp0 {color:#878787; font-size:14px; text-decoration:none;font-family:keepCalm;}
            .style2
            {
                height: 403px;
            }
    </style>
    
    
    
    <script type="text/javascript">

        $(document).ready(function () {
            $('#tabs div').hide();
            $('#tabs div:first').show();
            $('#tabs ul li:first').addClass('active');
            $('#tabs ul li a').click(function () {
                $('#tabs ul li').removeClass('active');
                $(this).parent().addClass('active');
                var currentTab = $(this).attr('href');
                $('#tabs div').hide();
                $(currentTab).show();
                return false;
            });
        });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#etalage').etalage();

    });
		</script>
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
							    <li id="Besp">
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
							  <li id="Besp"> OUR PROMISE
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
                                        <a href="Shoppingcard.aspx">
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
    <table width="100%" align="center">
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
                       
                        <tr>
                       
                        <td width="14%" align="left">
                            <a id="submenu" class="item" href="Showcase.aspx">SHIRT</a></td>
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
    
    <table align="center" id="tblContent" width="90%">
        
<tr>
	 <td valign="top" width="35%" align="right">
         <div id="left-col" align="right">
        <ul id="etalage" class="etalage" style="display: block; width: 362px; height: 556px;">
			<li class="etalage_thumb thumb_1 etalage_thumb_active" style="display: list-item; background-image: none; opacity: 1;">
                    <asp:Image ID="ProductImage1" class="etalage_thumb_image" runat="server" width="350px" height="433px" style="display: inline; opacity: 1;"/>
					<img class="etalage_source_image" src="images/01_main.jpg">
				</li>
				<li class="etalage_thumb thumb_2" style="background-image: none; display: none; opacity: 0;">
					<asp:Image ID="ProductImage2" class="etalage_thumb_image" runat="server" width="350px" height="433px" style="display: inline; opacity: 1;"/>
                    <img class="etalage_source_image" src="images/01_1.jpg">
				</li>
				<li class="etalage_thumb thumb_3" style="background-image: none; display: none; opacity: 0;">
					<asp:Image ID="ProductImage3" class="etalage_thumb_image" runat="server" width="350px" height="433px" style="display: inline; opacity: 1;"/>
					<img class="etalage_source_image" src="images/01_2.jpg">
				</li>
                 <li class="etalage_thumb thumb_4" style="background-image: none; display: none; opacity: 0;">
					<asp:Image ID="ProductImage4" class="etalage_thumb_image" runat="server" width="350px" height="433px" style="display: inline; opacity: 1;"/>
					<img class="etalage_source_image" src="images/01_3.jpg">
				</li>

			<li class="etalage_magnifier" style="margin: 0px; padding: 0px; left: 106px; top: 120px; display: list-item; opacity: 0;">
                <div style="margin: 0px; padding: 0px; width: 208px; height: 192px;">
                    
                </div>
            </li>
            
            
            <li class="etalage_zoom_area" style="margin: 0px; left: 372px; opacity: 0; display: none; background-image: none;">
                <div style="width: 588px; height: 544px;">
                    
                </div>
            </li>

            <li class="etalage_small_thumbs" style="top: 455px; width: 362px;">
                <ul style="width: 372px;">
                    <li class="etalage_smallthumb_active" style="opacity: 1; margin: 0px 10px 0px 0px;">
                        
                        <asp:Image class="etalage_small_thumb" ID="Thumb_Image1" runat="server" style="width: 77px; height: 80px;" />
                    </li>
                    <li class="" style="opacity: 0.4; margin: 0px 10px 0px 0px;">
                        
                        <asp:Image class="etalage_small_thumb" ID="Thumb_Image2" runat="server" style="width: 77px; height: 80px;" />
                    </li>
                    <li class="" style="opacity: 0.4; margin: 0px 10px 0px 0px;">
                        
                        <asp:Image class="etalage_small_thumb" ID="Thumb_Image3" runat="server" style="width: 77px; height: 80px;" />
                    </li>
                    <li class="" style="opacity: 0.4; margin: 0px 10px 0px 0px;">
                        
                        <asp:Image class="etalage_small_thumb" ID="Thumb_Image4" runat="server" style="width: 77px; height: 80px;" />
                    </li>
                  </ul>
              </li>

            
           
            
</ul>
<div class="clear"></div>

</div> 
	  </td>
	  <td width="65%"  valign="top" align="left" ><!--style="border: solid Silver 2px;"-->
      
		<table width="90%" style="margin-left:10px;">
		<tr>
		    <td width="60%" align="left"  >
		        <asp:Label ID="lblName" runat="server" Text="Label" Font-Names="KeepCalm"
                    Font-Size="x-Large"></asp:Label>
		    </td>
		<td width="40%"   align="right" >
		    <div class="price">
                <b><span style="font-size:large" Font-Names="KeepCalm">Rs.</span><asp:Label 
                    ID="lblPrice" runat="server" Text="Label" 
                    Font-Size="X-Large" Font-Names="Keep Calm"></asp:Label></b></div>
		</td>
        </tr>
		
		<tr>
		<td colspan="2" align="left">
		    <asp:Label ID="lblDescription" runat="server"  
                Font-Size="x-small" ForeColor="Gray" Font-Names="KeepCalm"></asp:Label>
		    
		</td>

		</tr>
        <tr>
        <td  align="right" colspan="2"><div id="delivered-con">
Expected Delivery Time <span> 
    <asp:Label ID="lblDeliveryTime" runat="server" Text="Label" Font-Italic="True" 
                Font-Names="KeepCalm" Font-Size="x-Small"></asp:Label> Days</span>
</div></td></tr>
		<tr>
		<td style="font-size:20px" colspan="2"  >

<div id="fab-style">

<div id="tabs">
    <ul>
      <li class="active"><a href="#tab-1">Style Summary</a></li>
      <li class=""><a href="#tab-2">About</a></li>
      <li class=""><a href="#tab-3">Shipping and Returns</a></li>
      <li class=""><a href="#tab-4">Size</a></li>
    </ul>
    <div id="tab-1" style="display: none;">
    
    <table width="250"  border="0" cellspacing="0" align="left" cellpadding="3" style="margin-bottom:0px; float:left; border-right:1px solid #e4e4e4; padding-bottom:25px; padding-top:10px; margin-top:0px; padding-left:5px;">
  <tbody>
    <tr>
    <td align="left" valign="top" width="50">Sleeves:</td>
    <td width="185" align="left" valign="top">Long</td>
    
    </tr>
  <tr>
  
  <td align="left" valign="top">Collar:</td>
     <td align="left" valign="top">Classic</td>
  
   
    
    </tr>
   <tr>
    <td align="left" valign="top">Cuffs:</td>
    <td align="left" valign="top">Single Button</td>
    
    
    </tr>
   <tr>
   <td width="50" align="left" valign="top">Placket:</td>
    <td width="120" align="left" valign="top">American</td>
    
     
   </tr>
   </tbody></table>
   
   <table width="250" border="0" cellspacing="0" cellpadding="3" align="center" style="margin-bottom:0px; float:left; padding-top:10px; margin-top:0px; padding-right:0px;">
   <tbody><tr>
    <td align="left" valign="top">Bottom Cut:</td>
    <td align="left" valign="top">Round</td>
   </tr>
   
   <tr>
   
     <td align="left" valign="top">Back:</td>
    <td align="left" valign="top">No Pleats</td>
   </tr>
   
   <tr>
   <td align="left" valign="top">Pocket:</td>
     <td align="left" valign="top">One</td>
  
   </tr>
   
   <tr>
   
    <td align="left" valign="top">Buttons:</td>
    <td align="left" valign="top">MOP - Beige</td>
   </tr>
   
   </tbody></table>
      
    </div>
    <div id="tab-2" style="display: block;">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="3">
  <tbody><tr>
    <td align="left" valign="top" width="95">Fit Info:</td>
    <td width="455"  align="left" valign="top">
        <asp:Label ID="lblFit" runat="server" Text="Label"></asp:Label>
      </td>
    </tr>
    <tr>
     <td width="60"  align="left" valign="top">Color Info:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblColor" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
  <tr>
    <td align="left" valign="top">Material Info:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblMaterial" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  
   <tr>
    <td align="left" valign="top">Styling:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblStyling" runat="server" Text="Label"></asp:Label>
       </td>
  </tr>
  
   <tr>
    <td align="left" valign="top">Finish:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblFinish" runat="server" Text="Label"></asp:Label>
       </td>
  </tr>
  <!--
   <tr>
    <td align="left" valign="top">Construction:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblConstruction" runat="server" Text="Label"></asp:Label>
       </td>
  </tr>
  -->
  </tbody></table>
     
    </div>
   
    <div id="tab-3" style="display: none;">
    
    <h2 class="shipping-txt-title">
    Free Shipping
    </h2>
    
    <p class="shipping-smll-txt">We provide free shipping on all orders placed in India.</p>
    
    <h2 class="shipping-txt-title">Alterations &amp; Returns</h2>
    <p class="shipping-smll-txt" style="padding-bottom:0px;">we take great pride in the workmanship of our products.
</p>
    
     
    </div>
    <div id="tab-4" style="display: none;">
    
    <h2 class="shipping-txt-title">
    Free Shipping
    </h2><br />
    
    
     
    </div>
  </div>


<!---->



</div>
        
		</td>
        
		</tr>
		
		
		
		
		<tr>
		<td  valign="bottom" align="center" colspan="2" style="padding-bottom:0px">
        <table width="80%" >
		<tr>
			<td width="33% "  valign="bottom" align="center">
				<table width="100%"  >
				<tr>
				<td align="left"   >
                <!--<a href="Fabric.html"> <img src="images/Customize_Showcase.png" width="80%"  />	</a> -->
                <asp:ImageButton ID="btnCustomize" width="80%"
                        ImageUrl="images/Customize_Showcase.png"  runat="server" 
                        onclick="btnCustomize_Click" />		</td>
				</tr>
				</table>
			</td>
			<td width="34%"  valign="bottom" align="center">
				<table  width="100%">
				<tr>
				<td  valign="bottom" ><img src="images/Add_to_swatch_showcase.png" width="80%"  />
                    </td>
				</tr>
				</table>
			</td>
			<td width="33%" valign="bottom" align="center">
				<table width="100%">
				<tr>
				<td><img src="images/Add_to_bag_showcase.png" width="80%" /></td>
				</tr>
				</table>
			</td>
		</tr>
        
		</table> 
        </td>
		</tr>
        </table> 
       
        <table width="90%" style="margin-left:10px"> 
        <tr>
        <td style="vertical-align:bottom" align="center" colspan=2>
    <div class="two-px">
                                </div>
	  <h2 class="shipping-txt-title">Care Instructions</h2>
		  <asp:Panel ID="pnlCareInstruction" runat="server">
          
        </asp:Panel>
    
	  </td></tr>
		</table>    
		</td>
	
	</tr>
    <tr>
    <td colspan="2" valign="top" align="center" style="font-family:KeepCalm; vertical-align:top;text-align:center" >
        
		   <div style="width:100%; float:inherit">
           <br />
          <b><h2 class="shipping-txt-title"> YOU MAY ALSO LIKE</h2></b> <br /><br />
                 <asp:DataList ID="LikeList" runat="server" DataKeyField="SKUID" RepeatDirection="Horizontal"
							RepeatColumns="5" onitemcommand="LikeList_ItemCommand"  >
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
									<div class="shirt-title">Rs.
										<%# DataBinder.Eval(Container.DataItem, "Price") %>
									</div>
                             
                                    </div>
                     </ItemTemplate>
                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                 </asp:DataList>
                 </div>
        </td>
    </tr>
	
     
					<tr>
							   <td height="10px">
							    &nbsp;
                                </td>
                              </tr>		 
 			  
							  <tr>
							   <td height="10px">
							    &nbsp;
                                </td>
                              </tr>		
                             
			</table>				  
	   
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
                                                    <input type="text" id="textbox" placeholder="Sign Up for newsletter, get latest updates."
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

