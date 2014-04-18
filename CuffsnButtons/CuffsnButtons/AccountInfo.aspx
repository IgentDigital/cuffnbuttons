<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="CuffsnButtons.AccountInfo" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
<link rel="stylesheet"  type="text/css" href="Styles/sun.css" />
<link rel="stylesheet"  type="text/css" href="Styles/cuff.css" />
   <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
   <script src="Scripts/slide.js"></script>
<!--slider-->
    <title>Cuff & Botton</title>

    <style>
        .one2-px
        {
            width:100%; height:3px; 
            background-color:#3b3b3b; margin-top:-4px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        .blck-px
        {
            width:100%; height:3px; 
            background-color:#3b3b3b; margin-top:-8px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
    </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body class="fullbody">
    <form  id="Form1" runat="server">
        <div>
            <asp:ScriptManager runat="server" ID="scManager"></asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="upAccountInfo">
                <ContentTemplate>
                    <div>
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
    <table width="100%" align="center">
        <tr>
            <td width="100%" align="right" height="25px">
                 
                <asp:Label ID="lblUserWellcomeName" runat="server"></asp:Label>
                 
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
                    <td width="100%">
                        <table width="85%" align="center">
                            <tr>
                                                            
                                                            <td id="homeforwardimage" width="4%">
                                                            Home
                                                            </td>
                                                            <td width="2%">
                                                                <img src="images/Forward ICon.png" style="height: 10px" />
                                                            </td>
                                                            <td id="homeforwardimage" width="10%" >
                                                                My Wardrobe
                                                            </td>
                                                            <td width="2%">
                                                                <img src="images/Forward ICon.png" style="height: 10px" />
                                                            </td>
                                                            <td id="homeforwardimage" width="10%" >
                                                                Account Info
                                                            </td>
                                                            <td width="72%">
                                                            </td>
                            </tr>
                        </table>
                    </td> 
            </tr>
        <tr>
                        <td width="100%">
                            <table width="85%" align="center">
                                <tr>
                                        <td width="40%" align="center">
                
                                    <div class="one1-px">
                                    </div>
                        </td>
                        <td id="midheading" width="20%" align="center">
                                MY WARDROBE
                        </td>
                        <td width="40%" align="center">
                
                                    <div class="one1-px">
                                    </div>
                        </td>

                                </tr>
                            </table>
                        </td>
                                            </tr>
                    
                     <tr>
                                    <td width="100%" height="30px"></td>
                    </tr>
        <tr>
            <td width="100%" align="center">
                 <table style="font-weight:white; height: 43px; width: 85%;">
                   
                    
                    <tr>
                       <td width="100%">
	<table width="100%" align="center" height="auto">
      <tr>
       <td width="29%" valign="bottom"  style="padding-bottom:0px">
            <td width="29%" valign="bottom"  style="padding-bottom:0px">
            <asp:ImageButton runat="server" ID="btnSave"  width="250px" height="60px" ImageUrl="~/Images/Account_InfoDark.png" PostBackUrl="~/AccountInfo.aspx" />
		<%--<img src="images/Account_Info.png"  width="240" height="70" /></td>--%>
		 <td width="26%" style="padding-bottom:2px"  >
             <asp:ImageButton runat="server" ID="ImageButton1"  width="220" height="50" ImageUrl="~/Images/My_Measurement.png" PostBackUrl="~/MyMeasurementInfo.aspx" />
	     <%-- <img src="images/My_MeasurementDark.png"  width="270" height="80"/> </td>--%>
		  <td width="26%" style="padding-bottom:2px"  >
               <asp:ImageButton runat="server" ID="ImageButton2"  width="220" height="50" ImageUrl="~/Images/Order_History.png" PostBackUrl="~/MyOrderHistory.aspx" />
	      <%--<img src="images/Order_History.png"  width="240" height="70"/></td>--%>
		  <td width="27%"  align="right" style="padding-bottom:0px"  >
              <asp:ImageButton runat="server" ID="ImageButton3"  width="220" height="50" ImageUrl="~/Images/Loyalty_Points.png" PostBackUrl="~/MyRedeemableCredit.aspx" />
		    <%--<img src="images/Loyalty_Points.png" width="240" height="70"/>--%>

		</td>

		</td>
		 
	   </tr>
                                <tr >
		<td  colspan="5">
		  <div class="blck-px">              </div>
		</td>
	   </tr>
                                
                            </table>
                        </td>
                    </tr>
                               <%-- <tr>
                                    <td width="100%" align="center">
                
                                                <div class="one1-px">
                                                </div>
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td width="100%" height="30px"></td>
                                </tr>
                    <tr>
                        <td id="midtext" width="100%" align="justify">
                            Welcome to your personal page. here u can find all registed personal data such as address, previous orders and measurements profile. you can amend this data to make sure your information is up-to-date.
                        </td>
                    </tr>
                    <tr>
                                    <td width="100%" height="30px"></td>
                                </tr>
                    <tr>
                        <td id="fab" width="100%" align="left">
                            Personal Details
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center">
                
                                    <div class="one1-px">
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" height="30px" align="left">
                
                         <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Bold="true"></asp:Label>           
                         </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center">
                            <table width="100%">
                                <tr>
                                    <td width="35%" align="left">
                                        <table width="100%" >
                                            <tr>
                                                <td id="midtext" width="30%">
                                                    Name:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text1" style="height: 25px; width: 250px;">--%>
                                                    <asp:TextBox runat="server" ID="txtFirstName" MaxLength="50" style="height: 25px; width: 250px;"/>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvFirstName" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="Red" ErrorMessage="<br/> Enter First Name" SetFocusOnError="true" ValidationGroup="Update" />
                                                </td>
                                            </tr>
                                             <tr>
                                                <td width="100%" height="10px"></td>
                                            </tr>
                                            <tr>
                                                <td id="midtext" width="30%" align="left">
                                                    EmailID:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text2" style="height: 25px; width: 250px;">--%>
                                                    <asp:TextBox runat="server" ID="txtEmailID" MaxLength="50" style="height: 25px; width: 250px;" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="100%" height="10px"></td>
                                            </tr>
                                            <tr>
                                                <td id="midtext" width="30%" align="left">
                                                   Date of Birth:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text3" style="height: 25px; width: 250px;">--%>
                                                    <asp:TextBox runat="server" ID="txtDateOfBirth" style="height: 25px; width: 250px;" />
                                                    <asp:CompareValidator runat="server" ID="cmpDateOfBirth" ControlToValidate="txtDateOfBirth" Operator="DataTypeCheck" ForeColor="Red" ErrorMessage="<br/>Invalid date" SetFocusOnError="true" Display="Dynamic" ValidationGroup="Update" Type="Date"></asp:CompareValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="1%"></td>
                                    <td width="35%" align="left">
                                        <table width="100%" >
                                            <tr>
                                                <td id="midtext" width="30%">
                                                    Last Name:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text4" style="height: 25px; width: 250px;">--%>
                                                    <asp:TextBox runat="server" ID="txtLastName" MaxLength="50" style="height: 25px; width: 250px;" />
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvLastName" ControlToValidate="txtLastName" Display="Dynamic" ForeColor="Red" ErrorMessage="<br/> Enter Last Name" SetFocusOnError="true" ValidationGroup="Update" />
                                                </td>
                                            </tr>
                                             <tr>
                                                <td width="100%" height="10px"></td>
                                            </tr>
                                            <tr>
                                                <td id="midtext" width="30%" align="left">
                                                    Gender:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text5" style="height: 25px; width: 250px;">--%>
                                                    <%--<asp:TextBox runat="server" ID="txtGender" MaxLength="50" style="height: 25px; width: 250px;" />--%>
                                                    <asp:RadioButtonList runat="server" ID="rdoGender" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="Male" Text="M"></asp:ListItem>
                                                        <asp:ListItem Value="Female" Text="F"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="100%" height="10px"></td>
                                            </tr>
                                            <tr>
                                                <td id="midtext" width="30%" align="left">
                                                   City:
                                                </td>
                                                <td width="70%" align="left">
                                                    <%--<input type="text" id="text6" style="height: 25px; width: 250px;">--%>
                                                    <asp:TextBox runat="server" MaxLength="50" ID="txtCity" style="height: 25px; width: 250px;" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="29%"></td>
                                </tr>
                                
                            </table>
                        </td>
                    </tr>
                                <tr>
                                    <td width="100%" height="10px"></td>
                                </tr>
                                <tr>
                                    <td width="100%" align="left"> UPDATE</td>
                                </tr>
                                <tr>
                                    <td width="100%" height="30px"></td>
                                </tr>
                                <tr>
                                    <td width="100%">
                                        <table width="100%">
                                            <tr>
                                                <td id="fab" width="36%" align="left">
                                                    Shipping Address
                                                </td>
                                                <td id="fab" width="35%" align="left">
                                                    Billing Address
                                                </td>
                                                <td width="39%">
                                        
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100%" align="center">
                
                                                <div class="one1-px">
                                                </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100%" align="center">
                                        <table width="100%">
                                            <tr>
                                                <td width="28%" align="left">
                                                    <table width="100%" >
                                                        <tr>
                                                            <td id="midtext" width="30%">
                                                                Address Line1:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text7" style="height: 25px; width:175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtShipAddLine1" MaxLength="100" style="height: 25px; width:175px;" />
                                                                <asp:RequiredFieldValidator runat="server" ID="rfvShipAdd1" ControlToValidate="txtShipAddLine1" Display="Dynamic" ForeColor="Red" ErrorMessage="<br/> Enter Address" SetFocusOnError="true" ValidationGroup="Update" />
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                                Address Line2:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text8" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtShipAddLine2" MaxLength="100" style="height: 25px; width: 175px;" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                               City:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text9" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtShipCity"  MaxLength="50" style="height: 25px; width: 175px;" />
                                                                <asp:RequiredFieldValidator runat="server" ID="rfvShipCity" ControlToValidate="txtShipCity" Display="Dynamic" ForeColor="Red" ErrorMessage="<br/> Enter City" SetFocusOnError="true" ValidationGroup="Update" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%">
                                                                State/Province:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text13" style="height: 25px; width:175px;">--%>
                                                                <asp:TextBox runat="server"  MaxLength="50" ID="txtShipState" style="height: 25px; width:175px;" />
                                                                <asp:RequiredFieldValidator runat="server" ID="rfvShipState" ControlToValidate="txtShipState" Display="Dynamic" ForeColor="Red" ErrorMessage="<br/> Enter State" SetFocusOnError="true" ValidationGroup="Update" />
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>    
                                                        <td id="midtext" width="30%">
                                                               Country:
                                                            </td>
                                                                                <td width="70%" align="left" >
                                                                                <%--<select style="height: 25px; width: 180px;">
                                                                                  <option value="ind">India</option>
                                                                                  <option value="USA">USA</option>
                                                                                  <option value="China">China</option>
                                                                                  <option value="Canada">Canada</option>
                                                                                </select>--%>
                                                                                    <asp:DropDownList runat="server" ID="ddlShipCountry" style="height: 25px; width: 180px;">
                                                                                        <asp:ListItem Text="<--Select-->" Value="0"></asp:ListItem>
                                                                                        <asp:ListItem Text="India" Value="1"></asp:ListItem>
                                                                                    </asp:DropDownList>       
                                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                                Zip:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text14" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtShipZip" MaxLength="8" style="height: 25px; width: 175px;" />
                                                                <asp:RangeValidator runat="server" ID="rngShipZip" ValidationGroup="Update" MinimumValue="000000" MaximumValue="999999" ErrorMessage="<br/>Enter valid Zip Code" ForeColor="Red" ControlToValidate="txtShipZip" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>
                                                                <asp:CompareValidator runat="server"  ID="cmpShipZip" ForeColor="Red" Operator="DataTypeCheck" ControlToValidate="txtShipZip" Display="Dynamic" ErrorMessage="<br/>Invalid Zip Code" SetFocusOnError="true" ValidationGroup="Update" Type="Integer"></asp:CompareValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                               Mobile:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text15" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtShipMobile" MaxLength="12" style="height: 25px; width: 175px;" />
                                                                <asp:RangeValidator runat="server" ID="rngShipMobile" ValidationGroup="Update" MinimumValue="0" MaximumValue="9999999999" ErrorMessage="<br/>Please check the mobile number" ForeColor="Red" ControlToValidate="txtShipMobile" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>
                                                                <asp:CompareValidator runat="server"  ID="cmpShipMobile" ForeColor="Red" Operator="DataTypeCheck" ControlToValidate="txtShipMobile" Display="Dynamic" ErrorMessage="<br/>Enter valid mobile number" SetFocusOnError="true" ValidationGroup="Update" Type="Double"></asp:CompareValidator>
                                                            
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="8%"></td>
                                                <td width="28%" align="left">
                                                    <table width="100%" >
                                                        <tr>
                                                            <td id="midtext" id="midtext" width="30%">
                                                                Address Line1:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text10" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillAddLine1" MaxLength="100" style="height: 25px; width: 175px;" />
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                                Address Line2:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text11" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillAddLine2" MaxLength="100" style="height: 25px; width: 175px;" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                              City:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text12" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillCity" MaxLength="50" style="height: 25px; width: 175px;" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                          
                                                            <td width="100%" height="10px"></td>
                                                      
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%">
                                                                State/Province:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text16" style="height: 25px; width:175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillState" MaxLength="50" style="height: 25px; width: 175px;" />
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>    
                                                        <td id="midtext" width="30%">
                                                                Country:
                                                            </td>
                                                                                <td width="70%" align="left" >
                                                                                <%--<select style="height: 25px; width: 180px;">
                                                                                  <option value="ind">India</option>
                                                                                  <option value="USA">USA</option>
                                                                                  <option value="China">China</option>
                                                                                  <option value="Canada">Canada</option>
                                                                                </select>--%> 
                                                                                <asp:DropDownList runat="server" ID="ddlBillCountry" style="height: 25px; width: 180px;">
                                                                                    <asp:ListItem Text="<--Select-->" Value="0"></asp:ListItem>
                                                                                    <asp:ListItem Text="India" Value="1"></asp:ListItem>
                                                                                </asp:DropDownList>        
                                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                                Zip:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text17" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillZip" MaxLength="12" style="height: 25px; width: 175px;"  />
                                                                <asp:RangeValidator runat="server" ID="RangeValidator1" ValidationGroup="Update" MinimumValue="000000" MaximumValue="999999" ErrorMessage="<br/>Enter valid Zip Code" ForeColor="Red" ControlToValidate="txtBillZip" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>
                                                                <asp:CompareValidator runat="server"  ID="CompareValidator1" ForeColor="Red" Operator="DataTypeCheck" ControlToValidate="txtBillZip" Display="Dynamic" ErrorMessage="<br/>Invalid Zip Code" SetFocusOnError="true" ValidationGroup="Update" Type="Integer"></asp:CompareValidator>
                                                           
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%" height="10px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="midtext" width="30%" align="left">
                                                               Mobile:
                                                            </td>
                                                            <td width="70%" align="left">
                                                                <%--<input type="text" id="text18" style="height: 25px; width: 175px;">--%>
                                                                <asp:TextBox runat="server" ID="txtBillMobile" MaxLength="12" style="height: 25px; width: 175px;" />
                                                                <asp:RangeValidator runat="server" ID="RangeValidator2" ValidationGroup="Update" MinimumValue="0" MaximumValue="9999999999" ErrorMessage="<br/>Please check the mobile number" ForeColor="Red" ControlToValidate="txtBillMobile" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>
                                                                <asp:CompareValidator runat="server"  ID="CompareValidator2" ForeColor="Red" Operator="DataTypeCheck" ControlToValidate="txtBillMobile" Display="Dynamic" ErrorMessage="<br/>Enter valid mobile number" SetFocusOnError="true" ValidationGroup="Update" Type="Double"></asp:CompareValidator>
                                                            
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="36%"></td>
                                            </tr>
                                            
                                
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100%" height="10px"></td>
                                </tr>
                                <tr>
                                    <td width="100%">
                                        <table width="100%">
                                            <tr>
                                                <td id="midtext" width="100%" align="left">
                                                    <%--<input type="checkbox" name="vehicle" value="Bike"> Billing Address same as Shipping Address--%>
                                                    <asp:CheckBox runat="server" ID="chkBillAddress" AutoPostBack="true" OnCheckedChanged="chkBillAddress_CheckedChanged" Text="  Billing Address same as Shipping Address" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:left;">
                                                    <asp:Button runat="server" ID="btnUpdate" Text="Update" ValidationGroup="Update" OnClick="btnUpdate_Click" />
                                                </td>                                           
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                     

                </table>
            </td>
        </tr>

    </table>
                    </div>                    
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
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
