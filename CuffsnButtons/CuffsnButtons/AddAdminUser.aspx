﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdminUser.aspx.cs" Inherits="CuffsnButtons.AddAdminUser" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
    
    <link href="Styles/sun.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Styles/cuff.css"/>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="slide.js"></script>
<!--slider-->
    <title>Cuff & Botton</title>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body class="fullbody">
    <form runat="server" id="frmAddAdminUser">
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
         <asp:ScriptManager runat="server" ID="scManager"></asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="upAccountInfo">
                <ContentTemplate>
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
                 <table style="font-weight:white; height: 43px; width: 1200px;">
                    <tr>
                       
                        <td width="14%" align="left">
                            <a id="submenu" href="Shirts.html">SHIRT</a></td>
                        <td width="19%" align="center">
                            <a id="A3" href="Shirts.html">PANTS</a>
                        </td>
                        <td width="21%" align="center">
                            <a id="A4" href="Shirts.html">THE SUIT</a>
                        </td>
                        <td width="20%" align="center">
                            <a id="A5" href="Shirts.html">BLAZERS</a>
                        </td>
                        <td width="26%" align="right">
                            <a id="A6" href="Shirts.html">DESIGNER COLLECTION</a>
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
                    <td witdh="100%">
                        <table width="100%" style="min-height:400px;vertical-align:text-top;"  id="Table1">
                            <tr>
							  <td valign="top" align="left" rowspan="2" width="20%"  style="background-color:#6E6E6E;color:white;font-family:'Times New Roman'; font-size:11pt;">
                                  <b>MASTER ENTRY FORM 
                                  <ul>
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
							   <td width="60%" valign="top" align="left">
                                   <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Bold="true"></asp:Label>
                                   <div id="divT" style="vertical-align:top;">
							     <table style="width:100%;">
            <tr>
                <th colspan="2" width="100%" align="center" style="background-color:#A4A4A4;color:white;">
                    Create User Admin Type
                </th>
            </tr>
                                     </tr>   
                                       <tr>
									  <td colspan="2" valign="top" width="50%">
                                          <fieldset><legend>Admin Users  List</legend>
                                          <table width="100%">
                                              <tr><td align="center">
                                            <asp:Label runat="server" ID="lblGridRcrd"></asp:Label>
                                          <asp:GridView Width="90%" ID="gvDetails"  runat="server" AllowPaging="true" PageSize="5"
                                                        AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#A4A4A4"
                                                         HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" OnPageIndexChanging="gvDetails_PageIndexChanging"
                                                          onrowediting="gvDetails_RowEditing"
                                                        onrowcommand="gvDetails_RowCommand"
                                          >
                                                        <Columns>
                                                           <asp:BoundField DataField="Name" HeaderText="Name" />
                                                            <asp:BoundField DataField="EmailID" HeaderText="Email" />
                                                            
                                                            <asp:templatefield>
                                                                <itemtemplate>
                                                                    *************
                                                                    <asp:HiddenField runat="server" ID="hdnUserPwd" Value='<%# Eval("Password") %>' />
                                                                </itemtemplate>
                                                            </asp:templatefield> 
                                                           
                                                             <%--<asp:templatefield>
                                                                <itemtemplate>
                                                                    <asp:HiddenField runat="server" ID="hdnUser" Value='<%# Eval("UserID") %>' />
                                                                    <asp:LinkButton CausesValidation="false" runat="server" Id="lnkUpdate" CommandName="xyx" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' Text="Update"  ></asp:LinkButton>         
                                                                </itemtemplate>
                                                            </asp:templatefield> --%>
                                                        </Columns>

									                  </asp:GridView> </td></tr></table> </fieldset> </td>
								   </tr>
            <tr>
                <td width="15%">First Name </td>
                <td>
                    <asp:TextBox runat="server" ID="txtFirstName" />
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" Display="Dynamic" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr>
                <td width="15%">Last Name </td>
                <td>
                    <asp:TextBox runat="server" ID="txtLastName" />
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" Display="Dynamic" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="15%">Email</td>
                <td>
                    <asp:TextBox runat="server" ID="txtEmail" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="15%">Choose a Password </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="txtPassword" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    <%--<asp:CompareValidator runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ID="cvPassword" Display="Dynamic"></asp:CompareValidator>--%>
                </td>
            </tr>
            <tr>
                <td width="15%">Confirm Password </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="txtConfirmPassword" />
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" Display="Dynamic" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ID="cvConfirmPassword" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
                            <tr>
									  <td colspan="2"><asp:HiddenField runat="server" ID="hdnUserID" /> </td>
								   </tr>
            <tr>
                <td colspan="2" width="100%" align="left" style="background-color:#A4A4A4;color:white;">
                    <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
                </td>
            </tr>
        </table>
                                       </div>
                              </td> 
                            </tr>
                      </table>
			  </td>
	  </tr>          
        
                                            <tr>
                                                <td width="100%" height="10px"></td>
                                            </tr>
                                            
                </table>
                    </ContentTemplate>
            </asp:UpdatePanel>
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
                                                <td id="Td2" width="12%" align="center">
                                                    Free Shipping
                                                </td>
                                                <td width="2%" align="left">
                                                    <img src="images/alerations.png" style="height: 26px;" />
                                                </td>
                                                <td id="Td3" width="12%" align="center">
                                                    Free Alterations
                                                </td>
                                                <td width="2%" align="left">
                                                    <img src="images/14.png" style="height: 26px;" />
                                                </td>
                                                <td id="Td4"  width="22%" align="center">
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
                                    <td width="100%" height="80px"></td>
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
                                            <td id="Td5" width="12%">
                                              <a href="OurPolices.html" id="White">  OUR POLICIES </a>
                                            </td>
                                            <td id="Td6" width="16%">
                                              <a href="knowyourfabric.html" id="White">   KNOW YOUR FABRIC </a>
                                            </td>
                                             <td id="Td7" width="18%">
                                               <a href="knowyourtailoring.html" id="White">  KNOW YOUR TAILORING </a>
                                            </td>
                                            <td id="Td8" width="10%">
                                               <a href="sample.html" id="White">  SAMPLE KIT </a>
                                            </td>
                                            <td id="Td9" width="10%">
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
           <%-- </td>
        </tr>

    </table>--%>
    </form>
</body>
</html>
