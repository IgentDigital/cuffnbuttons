<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrderHistory.aspx.cs" Inherits="CuffsnButtons.MyOrderHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
<link rel="stylesheet" type'"text/css" href="sun.css">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="slide.js"></script>
<!--slider-->
    <title>Cuff & Botton</title>
   
    <style>
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
        #Besp {color:#878787; font-size:14px; text-decoration:none;font-family:keep calm;}
        #num {color:#878787; font-size:12px; text-decoration:none;font-family:keep calm;}
        #submenu {color:#878787;text-decoration: none;font-weight:bold;font-size:17px;font-family:keep calm;}
        #midheading {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keep calm;}
        #homeforwardimage{color:#3b3b3b; font-size:13px;font-family:keep calm;}
        #midtext{color:#878787; font-size:16px;font-weight:bold;font-family:keep calm;}
        #fab {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keep calm;}
         #White {color:White;text-decoration: none;font-weight:bold;font-size:14px;font-family:keep calm;}
         #free {color:#878787;text-decoration: none;font-weight:bold;font-size:13px;font-family:keep calm;}
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
		.font{font-family:keep Calm; color: #878787;}
.body {
margin: 0;
padding: 0 0 0px 0;
position: relative;
background: #FFF;
z-index:999;
width:100%;
}
.blck-px
        {
            width:100%; height:3px; 
            background-color:#3b3b3b; margin-top:-10px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
.content {
position: relative;
padding: 0px 0px 0px 0px;
margin: 0;
background: #000;
width:100%;
}

.two-px
        {
            width:100%; height:3px; 
            background-color:#878787; margin-top:-3px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        ul {
  font-family: "keep Calm";
  font-size: 14px;
  margin: 0;
  padding: 0;
  
  list-style: none;
}
ul li {
  display: list-item;
  float: left;
  color:#878787;
  opacity: 0.9;
}

li ul { display: none; }
ul li a {  padding: 5px 5px;
  display: block;
  text-decoration: none;
  color: #878787;
  background-color:#FFFFFF;
  solid #ffffff;
  }

ul li  {
  text-decoration: none;
  color: #878787;
  border-top: 0px solid #ffffff;
  }
li a:hover { background-color:#FFFFFF; color:#3b3b3b}
li:hover ul {
  display: block;
  position: absolute;
  }
li:hover li { 
  float: none;
  font-size:11px;
  color: #FFFFFF;
}
li:hover {   color:#3b3b3b }
li:hover a {   color:#ffffff ; background-color:#3b3b3b }
.if{ color:#878787;}
.if:hover{ color: #3b3b3b;}

 </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body>
    <form runat="server" id="frmMyOrderHistory">
    <table width="85%" align="center" height="auto">
        <tr>
            <td width="100%" height="18px">
                 
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%">
                    <tr>
                        <td width="10%" align="center" valign="bottom" >
                            <a href="Default.html">
                                <img src="images/cuff_button.png" border="0" style="height: 25px; " />
                            </a>
                        </td>
                                    <td width="3%" ></td>
                                                <td width="20%"  valign= "bottom" >
							         <ul >						  
							    <li id="Besp" >
                                        BESPOKE TAILORING
								<ul>
								<li style="font-size:12px" ><a href="WHYCUSTOM.html">WHY CUSTOM</a></li>
								<li style="font-size:12px"><a href="WHYUS.html">WHY US</a></li>
								<li style="font-size:12px"><a href="HOWITWORKS.html">HOW IT WORKS</a></li>
								<li style="font-size:12px"><a href="HOWITMEASURE.html">HOW IT MEASURE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;								 </a></li>
								</ul>
							  </li>
						  </ul>
					  </td>	
							 <td width="2%" valign="bottom" style=" font-family: 'keep Calm';
  font-size: 14px; color:#878787">| </td>
						<td width="14%" style="padding-right:inherit;"  valign= "bottom">
						   <ul>
							  <li id="Li1"> OUR PROMISE
								<ul>
								<li style="font-size:12px" ><a href="finestfabric.html">FINEST FABRIC</a></li>
								<li style="font-size:12px"><a href="qualitytailoring.html">QUALITY TAILORING</a></li>
								<li style="font-size:12px"><a href="perfectfit.html">PERFECT FIT</a></li>
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
                                        <a href="AccountInfo.aspx">
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
                     <tr>
            <td width="100%" colspan="14" valign="top" align="right" height="25px">
                 
                <asp:Label ID="lblUserWellcomeName" runat="server"></asp:Label>
                 
            </td>
        </tr>
                </table>
            </td>
        </tr>
        
    </table>
	
	<td>
    <table width="100%" align="center">
        <tr>
            <td width="100%" height="35px">
                 
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
                            <a id="submenu" class="item"  href="Shirts.html">SHIRT</a></td>
                        <td width="19%" align="center">
                            <a id="submenu" class="item" href="Shirts.html">PANTS</a>
                        </td>
                        <td width="21%" align="center">
                            <a id="submenu" class="item" href="Shirts.html">THE SUIT</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="submenu" class="item" href="Shirts.html">BLAZERS</a>
                        </td>
                        <td width="26%" align="right">
                            <a id="submenu" class="item" href="Shirts.html">DESIGNER COLLECTION</a>
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

 
  <tr>
    <td width="1200px" align="center">
	<table width="1200px" align="center" height="auto">
      <tr>
          

        <td width="25%" style="padding-bottom:2px">
		<%--<img src="images/Account_Info.png"  width="220" height="50" />--%>
            <asp:ImageButton runat="server" ID="btnSave"  width="220" height="50" ImageUrl="~/Images/Account_Info.png" PostBackUrl="~/AccountInfo.aspx" />
        </td>
		 <td width="28%"  style="padding-bottom:1px">
             <asp:ImageButton runat="server" ID="ImageButton1"  width="260" height="50" ImageUrl="~/Images/My_Measurement.png" PostBackUrl="~/MyMeasurementInfo.aspx" />
             <%--<img src="images/My_Measurement.png" width="220" height="50" /> --%>

		 </td>
		  <td width="25%" style="padding-bottom:2px" >
              <asp:ImageButton runat="server" ID="ImageButton2"  width="258" height="58" ImageUrl="~/Images/Order_History_Dark.png" PostBackUrl="~/MyOrderHistory.aspx" />
	      <%--<img src="images/Order_History_Dark.png" width="258" height="58" /></td>--%>
		  <td width="25%"  align="right" style="padding-bottom:2px"  >
		   <asp:ImageButton runat="server" ID="ImageButton3"  width="220" height="50" ImageUrl="~/Images/Loyalty_Points.png" PostBackUrl="~/MyRedeemableCredit.aspx" /></td> 
	   </tr>
	   
	   <tr>
		<td colspan="5">
		   <div class="blck-px">              </div>	
		</td>
	   </tr>
	   <tr>
		<td></td>
	   </tr>
	   <tr>
			<td></td>
	   </tr>
	     </table>
	</td></tr>
    <tr>
	<td width="100%" style="text-align:center;" valign="top" align="center">
        
	 <table  width="90%" align="center">
	 
		 <tr>
		 <td valign="top">&nbsp;</td>
		 </tr>
	    <%--<tr>
            <th width="12%" height="25" colspan="2" bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Order No.</th>
            
            <th width="40%" height="25"  bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Item</th>
            <th width="12%" height="25"  bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Date</th>
            <th width="12%" height="25"  bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Qty</th>
			 <th width="12%" height="25"  bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Value</th>
             <th width="12%" height="25"  bgcolor="#3b3b3b" style="color:#FFFFFF; font-size:12px">Status</th>
         </tr>  
       <tr >
            <td colspan="2" align="center"  style="font-size:13px" >1</td>
            
            <td align="center" style="font-size:13px">Black shirt</td>
            <td align="center"  style="font-size:13px">20 Feb 2014</td>
			<td align="center"  style="font-size:13px">1</td>
			<td align="center"  style="font-size:13px">Rs.2000</td>
			<td align="center"  style="font-size:13px">Pending</td>
			
      </tr>
	   <tr >
            <td colspan="2" align="center"  style="font-size:13px" >2</td>
            
            <td align="center" style="font-size:13px">White Pant</td>
            <td align="center"  style="font-size:13px">20 Feb 2014</td>
			<td align="center"  style="font-size:13px">1</td>
			<td align="center"  style="font-size:13px">Rs.1600</td>
			<td align="center"  style="font-size:13px">Pending</td>
			
      </tr>--%>
<tr>
		 <td valign="top"><asp:Label runat="server" ID="lblGridRcrd"></asp:Label>
	    <asp:GridView Width="95%" ID="gvDetails" BorderWidth="0" BorderColor="White"  runat="server" AllowPaging="true" PageSize="5"
                                                        AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#3b3b3b"
                                                         HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" OnPageIndexChanging="gvDetails_PageIndexChanging"
                                                          onrowediting="gvDetails_RowEditing"
                                                        onrowcommand="gvDetails_RowCommand"
                                          >
                                                        <Columns>
                                                           <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ORDID" HeaderText="Order No." />
                                                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ITEM" HeaderText="Item" />
                                                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ORDDTTM" HeaderText="Date" />
                                                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ORDQTY" HeaderText="Qty" />
                                                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ORDPRICE" HeaderText="Value" />
                                                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="STATUSINFO" HeaderText="Status" />
                                                            
                                                            <%--<asp:templatefield>
                                                                <itemtemplate>
                                                                    *************
                                                                    <asp:HiddenField runat="server" ID="hdnOrderId" Value='<%# Eval("ORDID") %>' />
                                                                </itemtemplate>
                                                            </asp:templatefield> --%>
                                                           
                                                             <%--<asp:templatefield>
                                                                <itemtemplate>
                                                                    <asp:HiddenField runat="server" ID="hdnUser" Value='<%# Eval("UserID") %>' />
                                                                    <asp:LinkButton CausesValidation="false" runat="server" Id="lnkUpdate" CommandName="xyx" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' Text="Update"  ></asp:LinkButton>         
                                                                </itemtemplate>
                                                            </asp:templatefield> --%>
                                                        </Columns>

									                  </asp:GridView> </td>
		 </tr>
		 
		 <tr>
		 <td>&nbsp;</td>
		 </tr><tr>
		 <td>&nbsp;</td>
		 </tr>
</table></td>
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
                                            <td id="Td1" width="12%">
                                              <a href="OurPolices.html" id="White">  OUR POLICIES </a>
                                            </td>
                                            <td id="Td2" width="16%">
                                              <a href="knowyourfabric.html" id="White">   KNOW YOUR FABRIC </a>
                                            </td>
                                             <td id="Td3" width="18%">
                                               <a href="knowyourtailoring.html" id="White">  KNOW YOUR TAILORING </a>
                                            </td>
                                            <td id="Td4" width="10%">
                                               <a href="sample.html" id="White">  SAMPLE KIT </a>
                                            </td>
                                            <td id="Td5" width="10%">
                                               <a href="Contactus.html" id="White">  CONTACT US </a>
                                            </td>
                                            <td width="10%">
                                    
                                            </td>
                                            <td width="19%" align="right">
                                                    <input type="text" id="text1" placeholder="Enter Shipping Number"
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

