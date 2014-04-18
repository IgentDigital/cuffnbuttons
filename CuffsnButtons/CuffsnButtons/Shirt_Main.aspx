<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shirt_Main.aspx.cs" Inherits="CuffsnButtons.Shirt_Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="Styles/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="Styles/sun.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="Scripts/slide.js"></script>

<script type="text/javascript" src="http://www.vitruvien.com/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://www.vitruvien.com/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="http://www.vitruvien.com/js/gall.js"></script>
<link href="Styles/gallery.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    $(document).ready(function () {
        $('#etalage').etalage();

    });
</script>

    <title>Custom Fit - Product Description</title>
    <style> td
        {
            font-family:Verdana;
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
            width:90%; height:1px; 
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
font-size: 12px;
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
            font-family: 'Ubuntu-Bold';
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
         #fab-style h2 { font-size:12px; color:#000; font-weight:400; padding-bottom:8px; padding-top:8px; padding-bottom:8px;}
         #fab-style table { display:block; margin-bottom:12px; }
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
font:Verdana; 
Font-Size:Small;
color:Orange;
}

#fab-style h2.shipping-txt-title {
color: #272860;
font-size: 12px;
padding-bottom: 2px;
font-weight: bold;
padding-top: 0px;
}
    </style>
    <style type="text/css">.d-k-l{position:relative;display:-moz-inline-box;display:inline-block}* html .d-k-l,*:first-child+html .d-k-l{display:inline}.FP{border:1px solid #d5d5d5;border:1px solid rgba(0,0,0,.17);-webkit-border-radius:2px;border-radius:2px;-webkit-box-shadow:0 1px 0 rgba(0,0,0,.05);box-shadow:0 1px 0 rgba(0,0,0,.05);-webkit-box-sizing:border-box;box-sizing:border-box;-webkit-transition:background-color .218s,border-color .218s,box-shadow .218s;transition:background-color .218s,border-color .218s,box-shadow .218s;-webkit-user-select:none;-webkit-appearance:none;background-color:#fff;background-image:none;color:#262626;cursor:pointer;outline:none;overflow:hidden;position:relative;text-align:center;vertical-align:middle;white-space:nowrap;width:auto}.FP:hover{border:1px solid #aaa;border:1px solid rgba(0,0,0,.25);-webkit-box-shadow:0 1px 0 rgba(0,0,0,0.1);box-shadow:0 1px 0 rgba(0,0,0,0.1)}.FP:active{background-color:#e5e5e5;border:1px solid #aaa;border:1px solid rgba(0,0,0,.25);-webkit-box-shadow:inset 0 1px 0 #ddd;box-shadow:inset 0 1px 0 #ddd;color:#262626}.t7{background-color:#f5f5f5;color:#262626}.t7:active{background-color:#e5e5e5;color:#262626}.ud,.jd,.nd,.rd{border:none;-webkit-box-shadow:0 1px 0 rgba(0,0,0,.1);box-shadow:0 1px 0 rgba(0,0,0,.1);color:#fff}.ud:hover,.jd:hover,.nd:hover,.rd:hover{border:none;-webkit-box-shadow:inset 0 -2px 0 rgba(0,0,0,.2);box-shadow:inset 0 -2px 0 rgba(0,0,0,.2);color:#fff}.ud:active,.jd:active,.nd:active,.rd:active{border:none;-webkit-box-shadow:inset 0 2px 0 rgba(0,0,0,.2);box-shadow:inset 0 2px 0 rgba(0,0,0,.2);color:#fff}.ud{background-color:#53a93f}.ud:hover{background-color:#65b045}.ud:active{background-color:#3e802f}.jd{background-color:#dd4b39}.jd:hover{background-color:#e74b37}.jd:active{background-color:#be3e2e}.nd{background-color:#427fed}.nd:hover{background-color:#4285f4}.nd:active{background-color:#2c56b1}.rd{background-color:#737373}.rd:hover{background-color:#808080}.rd:active{background-color:#404040}.Wd,.Wd:hover,.Wd:active{background-color:#e5e5e5;border:none;-webkit-box-shadow:none;box-shadow:none;color:#aaaaaa}.s7{float:left}.u7{display:block}.Nr{fill:#dd4b38}.ud .Nr,.jd .Nr,.nd .Nr,.rd .Nr,.Wd .Nr{fill:#fff}.hma{font-family:Roboto,arial,sans-serif;font-size:12px;font-weight:700;margin-left:6px;margin-right:6px;vertical-align:top}.Ul{height:100%;width:100%}.ud .Ul,.jd .Ul,.nd .Ul,.rd .Ul,.Wd .Ul{border:1px solid transparent}.q7,.GP{display:none;height:100%;width:100%}.hva,.iva{margin-left:auto;margin-right:auto}.uk,.Nl{border:1px solid #d5d5d5;border:1px solid rgba(0,0,0,.17);-webkit-box-shadow:0 1px 0 rgba(0,0,0,.05);box-shadow:0 1px 0 rgba(0,0,0,.05);color:#262626}.uk:hover,.Nl:hover{border:1px solid #aaa;border:1px solid rgba(0,0,0,.25);-webkit-box-shadow:0 1px 0 rgba(0,0,0,0.1);box-shadow:0 1px 0 rgba(0,0,0,0.1)}.uk:active,.Nl:active{border:1px solid #aaa;border:1px solid rgba(0,0,0,.25);-webkit-box-shadow:inset 0 1px 0 #ddd;box-shadow:inset 0 1px 0 #ddd;color:#262626}.Nl,.Nl:hover{background-color:#f5f5f5}.Nl:active{background-color:#e5e5e5}.uk,.uk:hover{background-color:#fff}.uk:active{background-color:#e5e5e5}.Nl .GP,.uk .q7{display:block}.uk .Ul,.Nl .Ul,.uk .GP{display:none}.ima{background-position:top left;background-repeat:no-repeat}.HP,.HP:hover,.HP:active{color:#dd4b39}.uzlpSb{fill:#dd4b38}.ud .uzlpSb,.jd .uzlpSb,.nd .uzlpSb,.rd .uzlpSb,.Wd .uzlpSb{fill:#fff}.dIa{float:left;white-space:nowrap}.Ina{cursor:pointer;display:block;outline:0;position:relative;text-decoration:none}.B8{vertical-align:top;color:#666;font-family:Roboto,arial,sans-serif}.b1{text-align:center;margin-bottom:8px;overflow:visible;width:48px;height:30px;position:relative;background:#fff;border:1px solid #ccc;-webkit-border-radius:2px;border-radius:2px}.b1:after,.b1:before{top:100%;left:50%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none}.b1:after{border-color:rgba(255,255,255,0);border-top-color:#fff;border-width:4px;margin-left:-4px}.b1:before{border-color:rgba(192,192,192,0);border-top-color:#ccc;border-width:5px;margin-left:-5px}.b1 .IY{padding-top:6px}.b1{font-size:15px}.Jp,.bp,.ap{float:left;position:relative;background:#fff;border:1px solid #ccc;-webkit-border-radius:2px;border-radius:2px}.HI{float:left;position:relative}.Oy{color:#666;font-family:Roboto,arial,sans-serif;overflow:hidden;white-space:nowrap}.Jp .HI{max-width:43px;min-width:5px}.Jp .Oy{font-size:10px;margin:1px 5px;height:11px;line-height:12px}.bp .HI{max-width:53px;min-width:10px}.bp .Oy{font-size:11px;margin:1px 6px;height:16px;line-height:17px}.ap .HI{max-width:63px;min-width:12px}.ap .Oy{font-size:12px;margin:1px 6px;height:20px;line-height:21px}.ap:after,.ap:before,.bp:after,.bp:before,.Jp:after,.Jp:before{right:100%;top:50%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none}.ap,.bp{margin-left:5px}.ap:after,.bp:after{border-color:rgba(255,255,255,0);border-right-color:#fff;border-width:4px;margin-top:-4px}.ap:before,.bp:before{border-color:rgba(192,192,192,0);border-right-color:#ccc;border-width:5px;margin-top:-5px}.Jp{margin-left:4px}.Jp:after{border-color:rgba(255,255,255,0);border-right-color:#fff;border-width:3px;margin-top:-3px}.Jp:before{border-color:rgba(192,192,192,0);border-right-color:#ccc;border-width:4px;margin-top:-4px}.A8{color:#666;font:11px Roboto,arial,sans-serif;line-height:1;white-space:normal;display:inline-block}.zra{border:1px solid #666}.Ara{vertical-align:top;display:inline-block}.Bra{padding-left:1px}.Jda{color:#427fed;text-decoration:none}.wfa{vertical-align:top;padding-right:5px;white-space:nowrap}.b6{border-collapse:collapse;display:table}.D8{display:table-row}.gP{border-spacing:0;display:table-cell;font-size:11px;padding:0;text-align:left}.A8.fja{display:inline;overflow:hidden;padding-bottom:.1em;text-overflow:ellipsis;white-space:nowrap}.eja{line-height:10px!important}.OIa{-webkit-border-radius:2px;border-radius:2px;background-color:#fff;border:1px solid #ccc;height:19px;padding:5px 0;position:relative}.OIa:after,.OIa:before{top:100%;left:50%;border:solid transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none}.OIa:after{border-color:rgba(255,255,255,0);border-top-color:#fff;border-width:4px;margin-left:-4px}.OIa:before{border-color:rgba(192,192,192,0);border-top-color:#ccc;border-width:5px;margin-left:-5px}.PIa{font-size:15px;height:35px;margin-bottom:5px;overflow:hidden;text-align:center}.kv8eNc{background-color:transparent;margin:0;padding:0}.D5jmcc{background-color:#f5f5f5;margin:0;padding:5px}sentinel{}
        .style2
        {
            height: 187px;
        }
    </style>
    <script type="text/javascript" src="Scripts/jquery-1.7.2.min.js"></script>
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
</head>
<body>
                        							
	<form id="form1" runat="server">
                        							
	<table>
  
        <tr>  
        <td>
    <table width="90%" align="center" height="auto">
        <tr>
            <td width="100%">
                <table width="100%" align="center" >
                    <tr>
                        <td width="35%" align="left">
                            <div class="logo">
                                <a href="Home.aspx">
                                    <img src="images/cf_lOGO.png" border="0" style="height: 80px" /></a>
                            </div>
                        </td>
                        <td width="40%">
                        </td>
                        <td width="25% align="right">
                            <table width="117%" border="1" rules="none" frame="box" align="right">
                                <tr>
                                    <td width="50%" valign="top" align="left" > 
                                            <a id="footer" href="Shirts.html">PERFECT FIT</a>
                                    </td>
                                    <td width="50%" valign="top" align="right" >
                                            <a id="footer" href="Shirts.html">FREE SHOPPING</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%" valign="top" align="left"> 
                                            <a id="footer" href="Shirts.html">FREE ALTERATIONS</a>
                                    </td>
                                    <td width="50%" valign="top" align="right" > 
                                            <a id="footer" href="Shirts.html">EASY RETURNS</a>
                                    </td>
                                </tr>
                          </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" background-color="black">
                <table width="100%">
                    <tr>
                        <td width="50%" align="left">
                            <table width="100%">
                                <tr>
                                        <td width="8%" align="left">
                                            <a id="menu" href="Shirts.html">HOW IT WORKS</a>
                                            
                                        </td>
                                        <td width="9%" align="left">
                                            <a id="menu" href="Shirts.html">HOW TO MEASURE</a>
                                            
                                        </td>
                                        <td width="7%" align="left">
                                            <a id="menu" href="Shirts.html">OUR PROMISE</a>
                                        </td>
                                        <td width="10%" align="left">
                                            <a id="menu" href="Shirts.html">WHY CUSTOM</a>
                                        </td>
                                </tr>
                            </table>
                            
                        </td>
                        <td width="29%" align="left">
                        </td>
                        <td width="21%" align="left">
                            <table width="100%">
                                <tr>
                                    <td width="55%" align="right">
                                            MY WARDROBE
                                        </td>
                                        <td align="center" class="style1">
                                        |
                                        </td>
                                        <td width="35%" align="right">
                                            MY BAG(0)
                                        </td>
                                </tr>
                            </table>
                        </td>
                        </tr>

                </table>
                             <div class="one-px">
                                </div>   

            </td>
        </tr>
        <tr>
            <td width="100%" height="2px">
            </td>
        </tr>
        <!--sub menu-->
        <tr>
            <td width="100%" style="background-color:#1f487c" height="10px">
                <table style="font-weight:white; height: 43px; width: 100%;">
                    <tr>
                    
                        <td width="20%" align="center">
                            <a id="submenu" href="Shirts.html">SHIRTS</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" href="Shirts.html">PANTS</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" href="Shirts.html">THE SUIT</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" href="Shirts.html">BLAZERS</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" href="Shirts.html">PARTY WEAR</a>
                        </td>
                    
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" height="2px">
                
            </td>
        </tr>
        </table>
		</td></tr>
        <tr><td>
		
        <table width="90%"  align="center">
	<tr>
	 <td valign="top" width="35%" align="right">
		  <table width="80%" class="etalage_Shirt">
				<tr>
				  <td valign="top" align="center">
					<asp:Image ID="ProductImage"  runat="server" width="350px" height="400px" />
				</td> 
			  </tr>
              </table>  
	  </td>
	  <td width="65%"  valign="top" align="left" height="400px" >
		<table width="90%" style="margin-left:10px">
		<tr>
		    <td width="60%" align="left"  >
		        <asp:Label ID="lblName" runat="server" Text="Label" Font-Names="ubuntu-bold" 
                    Font-Size="X-Large"></asp:Label>
		    </td>
		<td width="40%"   align="right" >
		    <div class="price">
                <b><span style="font-size:large;">Rs.</span><asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label></b></div>
		</td>
        </tr>
		
		<tr>
		<td colspan="2" align="left">
		    <asp:Label ID="lblDescription" runat="server" Font-Names="Arial" 
                Font-Size="Small" ForeColor="Gray"></asp:Label>
		    
		</td>

		</tr>
        <tr>
        <td  align="right" colspan="2"><div id="delivered-con">
Expected Delivery Time <span> 
    <asp:Label ID="lblDeliveryTime" runat="server" Text="Label" Font-Italic="True" 
                Font-Names="Verdana" Font-Size="Small"></asp:Label> Days</span>
</div></td></tr>
		<tr>
		<td style="font-size:14px" colspan="2" class="style2" >
        
        <div id="fab-style">

<div id="tabs">
    <ul>
      <li class="active"><a href="#tab-1">Style Summary</a></li>
      <li class=""><a href="#tab-2">About</a></li>
      <li class=""><a href="#tab-3">Shipping and Returns</a></li>
      <li class=""><a href="#tab-4">Size</a></li>
    </ul>
     <div id="tab-1" style="display: none;">
    
    <table width="250"  border="0" cellspacing="0" align="center" cellpadding="3" style="margin-bottom:0px; float:left; border-right:1px solid #e4e4e4; padding-bottom:25px; padding-top:10px; margin-top:0px; padding-left:55px;">
  <tbody><tr>
    <td align="left" valign="top" width="95">Sleeves:</td>
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
   <td width="100" align="left" valign="top">Placket:</td>
    <td width="120" align="left" valign="top">American</td>
    
     
   </tr>
   </tbody></table>
   
   <table width="250" border="0" cellspacing="0" cellpadding="3" align="center" style="margin-bottom:0px; float:right; padding-top:10px; margin-top:0px; padding-right:0px;">
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
  
   <tr>
    <td align="left" valign="top">Construction:</td>
    <td align="left" valign="top">
        <asp:Label ID="lblConstruction" runat="server" Text="Label"></asp:Label>
       </td>
  </tr>
  
  </tbody></table>
     
    </div>
   
    <div id="tab-3" style="display: none;">
    
    <h2 >
    Free Shipping
    </h2>
    
    <p >We provide free shipping on all orders placed in India.</p>
    
    <h2 >Alterations &amp; Returns</h2>
    <p  style="padding-bottom:0px;">At Vitruvien, we take great pride in the workmanship of our products. In the rare case that you are not 100% satisfied, we would gladly work with you to enable a remake or an alteration. 
</p>
    
     
    </div>
    <div id="tab-4" style="display: none;">
    
    <h2 class="shipping-txt-title">
    Free Shipping
    </h2>
    
    
     
    </div>
  </div>


<!---->



</div>
		</td>
        
		</tr>
		
		
		
		
		<tr>
		<td  valign="bottom" colspan="2" style="padding-bottom:0px">
        <table width="100%" >
		<tr>
			<td width="33% "  valign="bottom" >
				<table width="100%"  >
				<tr>
				<td align="left"   ><img src="images/ShowcasePage_Customize.png" width="100%"  />			</td>
				</tr>
				</table>
			</td>
			<td width="33%"  valign="bottom" >
				<table  width="100%">
				<tr>
				<td  valign="bottom" ><img src="images/AddToSwatch (1).png" width="100%"  />			</td>
				</tr>
				</table>
			</td>
			<td width="33%" valign="bottom">
				<table width="100%">
				<tr>
				<td><img src="images/AddToBag.png" width="100%" /></td>
				</tr>
				</table>
			</td>
		</tr>
		</table> 
        </td>
		</tr>
		</table>    
		</td>
	
	</tr>
	<tr>
	 <td  valign="top" align="right">
	   <table width="90%" >
		 <tr>
			   <td>
                   <asp:Panel ID="pnlProductAltImg" runat="server">
                    
                   </asp:Panel>
				    
			   </td>
			   
		 </tr>
	   </table>
	   
	</td>
	
	<td style="font-family:'Segoe UI'; vertical-align:top" align="center">
    <div class="two-px">
                                </div>
	  Care Instructions<br/>
		  <asp:Panel ID="pnlCareInstruction" runat="server">
          
        </asp:Panel>
		   
	  </td>
	</tr>
    <tr>
    <td colspan="2" valign="top" align="center" style="font-family:'Segoe UI'; vertical-align:top" >
        
		   <div style="width:90%;">
           You May Also Like<br/>
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
									<div class="shirt-title">
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
	</table>   
	 
     </td></tr>
					<tr>
							   <td>
							    &nbsp;
                                </td>
                              </tr>		 
 			  
							  
                              <tr>
							   <td>
							    <div class="one-px">
                                </div>
                                </td>
                              </tr>
							  
	   
        <!--footer-->
<tr>
          <td >
                <table width="90%" align="center">
                    <tr>
                        <td width="10%" align="left">
                            <a id="footer" href="Shirts.html">About Us</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Help/FAQs</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Know Your Fabric</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Refer a Friend</a>
                        </td>
                        <td width="37%"></td>
                    </tr>
                    <tr>
                        <td width="10%" align="left">
                            <a id="footer" href="Shirts.html">Contact Us</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Shipping & Delivery</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Sample Kit(Swatch Kit)</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Loyalty Points</a>
                    </tr>
                    <tr>
                        <td width="10%" align="left">
                            <a id="footer" href="Shirts.html">Terms of Use</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Payment</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Measurement Tape</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Discounts & Offers</a>
                    </tr>
                    <tr>
                        <td width="10%" align="left">
                            <a id="footer" href="Shirts.html">Privacy Policy</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Alterations & Returns</a>
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            
                        </td>
                        <td width="1%">
                        </td>
                        <td width="15%" align="left">
                            <a id="footer" href="Shirts.html">Gift Cards</a>
						</td>
                      </tr>
					
                 </table>
            </td>
        </tr>                          							
	</table>
    </form>
</body>
</html>

