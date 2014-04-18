<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customize.aspx.cs" Inherits="CuffsnButtons.Customize" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--slider-->
<link rel="stylesheet" type="text/css" href="Styles/style.css"/>
<link rel="stylesheet" type="text/css" href ="Styles/sun.css"/>
<link rel="stylesheet"  type="text/css" href="Styles/cuff.css" />
<link rel="stylesheet"  type="text/css" href="Styles/customize.css" />

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="slide.js"></script>
    <%-- following Ritesh chages-10apr--%>
    <link href="Styles/jquery.shoppingCart.css" rel="stylesheet" />

    <script type="text/javascript" src="Scripts/jquery-latest.1.5.1.js"></script>
    <script type="text/javascript" src="Scripts/jquery.modaldialog.js"></script>
<%-- above are Ritesh chages-10apr--%>
<!--slider-->
    <title>Cuff & Botton</title>
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
font-size: 11px;
 font-family:Verdana;
}
.summ_main_title {
font-family: 'KeepCalm';
font-size: 16px;
padding: 5px;
color: #000;
border-bottom: 1px solid #e4e4e4;
margin-bottom: 10px;
width: 630px;
float: left;
}
.summ_title {
font-family: 'KeepCalm';
font-size: 12px;
width: 100px;
float: left;
padding: 6px;
margin-bottom: 1px;
color: #000;
}
.summ_desc {
font-family: 'KeepCalm';
font-size: 11px;
color: #666666;
width: 100px;
float: left;
padding: 6px;
margin-bottom: 1px;
}
.summ_title2 {
font-family: 'KeepCalm';
font-weight: bold;
font-size: 14px;
width: 100px;
float: left;
padding: 6px;
margin-top: -1px;
color: #000;
margin-bottom: 1px;
}
.summ_desc2 {
font-family: 'KeepCalm';
font-size: 12px;
color: #666666;
width: 230px;
float: left;
padding-left: 6px;
}
    </style> 
    
    <script language="javascript" type="text/javascript">
        var tabindex = 0;
        var myButtons = new Array("fabric", "style", "btnSleeves", "btnCollar", "btnCuff", "btnPlacket", "btnPocket", "btnButtons", "btnBottomCut", "btnBack", "btnMonogram", "Measurement");

        function moveNext() {
            tabindex = tabindex + 1;
            document.getElementById(myButtons[tabindex]).click();

        }

        function movePrev() {
            tabindex = tabindex - 1;
            document.getElementById(myButtons[tabindex]).click();

        }

        function mainMenuChange(ObjMenu) {
            var MenuDiv = document.getElementById(ObjMenu).id;
            //alert(MenuDiv);
            if (MenuDiv == '1_fabric') {
                tabindex = 0;
                document.getElementById("fabric").src = 'images/Fabric_dark.png';
                document.getElementById("style").src = 'images/Style_light.png';
                document.getElementById("Measurement").src = 'images/Measurements_light.png';

                document.getElementById("1_fabric").style.display = 'block';
                document.getElementById("2_style").style.display = 'none';
                document.getElementById("3_Measurements").style.display = 'none';
            }
            else if (MenuDiv == '2_style') {
                tabindex = 1;
                document.getElementById("fabric").src = 'images/Fabric_light.png';
                document.getElementById("style").src = 'images/Style_dark.png';
                document.getElementById("Measurement").src = 'images/Measurements_light.png';

                document.getElementById("1_fabric").style.display = 'none';
                document.getElementById("2_style").style.display = 'block';
                document.getElementById("3_Measurements").style.display = 'none';
            }
            else if (MenuDiv == '3_Measurements') {
                tabindex = 11;
                document.getElementById("fabric").src = 'images/Fabric_light.png';
                document.getElementById("style").src = 'images/Style_light.png';
                document.getElementById("Measurement").src = 'images/Measurements_dark.png';

                document.getElementById("1_fabric").style.display = 'none';
                document.getElementById("2_style").style.display = 'none';
                document.getElementById("3_Measurements").style.display = 'block';
            }

        }


        function changeSubPart(objMenu, objSubMenu) {
            //alert(objSubMenu.id);
            if (objSubMenu.parentNode.getElementsByTagName("div")[0].innerText == "RolledUp") {
                //alert(2);

                document.getElementById("imgCuffs_Left").style.display = 'none';
                //document.getElementById("imgCuffs").style.display = 'none';
            }
            else if (objSubMenu.parentNode.getElementsByTagName("div")[0].innerText == "Short") {
                document.getElementById("imgCuffs_Left").style.display = 'none';
                document.getElementById("imgCuffs").style.display = 'none';
            }
            else if (objSubMenu.parentNode.getElementsByTagName("div")[0].innerText == "Long") {
                document.getElementById("imgCuffs_Left").style.display = 'block';
                document.getElementById("imgCuffs").style.display = 'block';
            }
            document.getElementById("sd_title_" + objMenu).innerText = objSubMenu.parentNode.getElementsByTagName("div")[0].innerText;
            //alert(objSubMenu.parentNode.parentNode.parentNode.parentNode.parentNode.getElementById("sd_title"));
            //objSubMenu.parentNode.parentNode.parentNode.parentNode.parentNode.getElementById("sd_title").innerText = objSubMenu.parentNode.getElementsByTagName("div")[0].innerText;
            //alert(objSubMenu.parentNode.getElementsByTagName("input")[0].attributes);
            //alert(2);
            if (objSubMenu.parentNode.getElementsByTagName("input")[0].attributes[3] != null) {
                document.getElementById("sd_desc_" + objMenu).innerText = objSubMenu.parentNode.getElementsByTagName("input")[0].attributes[3].value;
            }
            //alert(3);
            //alert(objSubMenu.parentNode.getElementsByTagName("input")[1].attributes[3] != null);
            if (objSubMenu.parentNode.getElementsByTagName("input")[1].attributes[3] != null) {
                //alert(31);
                document.getElementById("img" + objMenu).src = objSubMenu.parentNode.getElementsByTagName("input")[1].attributes[3].value;
            }
            //alert(4);
            document.getElementById("img" + objMenu).attributes[1].value = objSubMenu.id;

            //alert(5);
            var inputs = objSubMenu.parentNode.parentNode.parentNode.parentNode.getElementsByTagName("td");
            for (var i = 0; i < inputs.length; i++) {
                inputs[i].style.border = "";
            }
            //alert(6);
            objSubMenu.parentNode.style.border = "thin solid Gray";
            //alert(7);
            //              if ((selSubMenu_Sleeves != null) && (selSubMenu_Sleeves != objSubMenu))
            //              {
            //              
            //    //              if (selSubMenu.parentNode.parentNode.parentNode.parentNode.parentNode.id == objSubMenu.parentNode.parentNode.parentNode.parentNode.parentNode.id) 
            //    //              {
            //                        selSubMenu_Sleeves.parentNode.parentNode.style.border = "";
            //    //              }
            //              }
            //selSubMenu_Sleeves = objSubMenu;
            //            alert(selSubMenu);
            //"background-color: rgb(255, 255, 255); border-color: rgb(0, 0, 0);"

        }

        function showSummaryDiv() {
            document.getElementById("summary").style.display = 'block';
            document.getElementById("summary").style.top = '780px';
            document.getElementById("summary").style.left = '300px';
        }

        function hideSummaryDiv() {
            document.getElementById("summary").style.display = 'none';
        }

        function checkAvailability() {
            if (document.getElementById("hdnQuantityLeft").value > 0) {
                //alert(1);
                document.getElementById("hdnbackyoke").value = "-";
                document.getElementById("hdncollar").value = document.getElementById("imgCollar").attributes[1].value.split('-')[1];
                document.getElementById("hdnfront").value = "-";
                document.getElementById("hdnsleeves").value = document.getElementById("imgSleeves").attributes[1].value.split('-')[1];
                document.getElementById("hdncuffs").value = document.getElementById("imgCuffs").attributes[1].value.split('-')[1];
                document.getElementById("hdnplanket").value = document.getElementById("imgPlacket").attributes[1].value.split('-')[1];
                document.getElementById("hdnrightpocket").value = "-";
                document.getElementById("hdntopbutton").value = "-";
                document.getElementById("hdnback").value = "-";
                document.getElementById("hdnbottomcut").value = "-";
                document.getElementById("hdnleftpocket").value = "-";
                document.getElementById("hdnbutton").value = document.getElementById("imgButton").attributes[1].value.split('-')[1];
                //alert(2);
//                document.getElementById("sm_fabric").innerText = document.getElementById("hdnFabricName").value;
//                document.getElementById("sm_sleeve").innerText = document.getElementById("imgSleeves").attributes[1].value.split('-')[1];
//                document.getElementById("sm_collar").innerText = document.getElementById("imgCollar").attributes[1].value.split('-')[1];
//                document.getElementById("sm_cuff").innerText = document.getElementById("imgCuffs").attributes[1].value.split('-')[1];
//                document.getElementById("sm_placket").innerText = document.getElementById("imgPlacket").attributes[1].value.split('-')[1];
//                //document.getElementById("sm_pocket").innerText = document.getElementById("imgSleeve").attributes[1].value;
//                //document.getElementById("sm_btqty").innerText = document.getElementById("imgSleeve").attributes[1].value;
//                //document.getElementById("sm_back").innerText = document.getElementById("imgSleeve").attributes[1].value;
//                //document.getElementById("sm_bottom").innerText = document.getElementById("imgSleeve").attributes[1].value;
//                document.getElementById("sm_button").innerText = document.getElementById("imgButton").attributes[1].value.split('-')[1];


                document.getElementById("hdnbackyokeVal").value = "0";
                document.getElementById("hdncollarVal").value = document.getElementById("imgCollar").attributes[1].value.split('-')[0];
                document.getElementById("hdnfrontVal").value = "0";
                document.getElementById("hdnsleevesVal").value = document.getElementById("imgSleeves").attributes[1].value.split('-')[0];
                document.getElementById("hdncuffsVal").value = document.getElementById("imgCuffs").attributes[1].value.split('-')[0];
                document.getElementById("hdnplanketVal").value = document.getElementById("imgPlacket").attributes[1].value.split('-')[0];
                document.getElementById("hdnrightpocketVal").value = "0";
                document.getElementById("hdntopbuttonVal").value = "0";
                document.getElementById("hdnbackVal").value = "0";
                document.getElementById("hdnbottomcutVal").value = "0";
                document.getElementById("hdnleftpocketVal").value = "0";
                document.getElementById("hdnbuttonVal").value = document.getElementById("imgButton").attributes[1].value.split('-')[0];
                //alert(3);
                lookup(-1);
            }
            else
            { alert('Sold Out!!'); }
        }
        function getSummary() {
            //alert(document.getElementById("hdnFabricName").value);
            document.getElementById("sm_fabric").innerText = document.getElementById("hdnFabricName").value;
            document.getElementById("sm_sleeve").innerText = document.getElementById("imgSleeves").attributes[1].value.split('-')[1];
            document.getElementById("sm_collar").innerText = document.getElementById("imgCollar").attributes[1].value.split('-')[1];
            document.getElementById("sm_cuff").innerText = document.getElementById("imgCuffs").attributes[1].value.split('-')[1];
            document.getElementById("sm_placket").innerText = document.getElementById("imgPlacket").attributes[1].value.split('-')[1];
            //document.getElementById("sm_pocket").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //document.getElementById("sm_btqty").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //document.getElementById("sm_back").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //document.getElementById("sm_bottom").innerText = document.getElementById("imgSleeve").attributes[1].value;
            document.getElementById("sm_button").innerText = document.getElementById("imgButton").attributes[1].value.split('-')[1];
            //document.getElementById("sm_monoplace").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //document.getElementById("sm_monocolor").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //document.getElementById("sm_monotext").innerText = document.getElementById("imgSleeve").attributes[1].value;
            //sm_collarstiffness

            //sm_cuffstiffness

            //document.getElementById("style").click();

        }

        function SubMenuChange(ObjMenu) {
            //alert(ObjMenu);
            var SubMenuDiv = document.getElementById(ObjMenu).id;
            //alert(SubMenuDiv);
            if (SubMenuDiv == 'Sleeves') {

                //                document.getElementById("1_fabric").style.display = 'none';
                //                document.getElementById("2_Style").style.display = 'block';
                document.getElementById("btnSleeves").src = 'images/Sleeves_dark.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'block';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Collar') {
                //                document.getElementById("1_fabric").style.display = 'none';
                //                document.getElementById("2_Style").style.display = 'block';
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_dark.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'block';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Cuff') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_dark.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'block';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Placket') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_dark.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'block';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'BottomCut') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_dark.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'block';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Back') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_dark.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'block';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Pocket') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_dark.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'block';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'none';
            }
            else if (SubMenuDiv == 'Buttons') {
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_dark.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_light.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'block';
                document.getElementById("Monogram").style.display = 'none';
            }

            else if (SubMenuDiv == 'Monogram') {

                //alert(1);
                document.getElementById("2_style").style.display = 'block';
                document.getElementById("3_Measurements").style.display = 'none';
                document.getElementById("btnSleeves").src = 'images/Sleeves_light.png';
                document.getElementById("btnCollar").src = 'images/Collar_light.png';
                document.getElementById("btnCuff").src = 'images/Cuff_light.png';
                document.getElementById("btnPlacket").src = 'images/Placket_light.png';
                document.getElementById("btnBottomCut").src = 'images/BottomCut_light.png';
                document.getElementById("btnBack").src = 'images/Back_light.png';
                document.getElementById("btnPocket").src = 'images/Pocket_light.png';
                document.getElementById("btnButtons").src = 'images/Buttons_light.png';
                document.getElementById("btnMonogram").src = 'images/Monogram_dark.png';

                document.getElementById("Sleeves").style.display = 'none';
                document.getElementById("Collar").style.display = 'none';
                document.getElementById("Cuff").style.display = 'none';
                document.getElementById("Placket").style.display = 'none';
                document.getElementById("BottomCut").style.display = 'none';
                document.getElementById("Back").style.display = 'none';
                document.getElementById("Pocket").style.display = 'none';
                document.getElementById("Buttons").style.display = 'none';
                document.getElementById("Monogram").style.display = 'block';
            }
        }

        function del_r(index_i) {
            //alert(location);
            lookup(index_i);
        }

        function lookup(index_i) {
            //alert('Rites');
            var varbackyoke = $("#hdnbackyoke").val();
            var varcollar = $("#hdncollar").val();
            var varfront = $("#hdnfront").val();
            var varsleeves = $("#hdnsleeves").val();
            var varcuffs = $("#hdncuffs").val();
            var varplanket = $("#hdnplanket").val();
            var varrightpocket = $("#hdnrightpocket").val();
            var vartopbutton = $("#hdntopbutton").val();
            var varback = $("#hdnback").val();
            var varbottomcut = $("#hdnbottomcut").val();
            var varleftpocket = $("#hdnleftpocket").val();
            var varbutton = $("#hdnbutton").val();
            //alert('5');
            var varDescription = $("#hdnbackyokeVal").val() + "*";
            varDescription = varDescription + $("#hdncollarVal").val() + "*";
            varDescription = varDescription + $("#hdnfrontVal").val() + "*";
            varDescription = varDescription + $("#hdnsleevesVal").val() + "*";
            varDescription = varDescription + $("#hdncuffsVal").val() + "*";
            varDescription = varDescription + $("#hdnplanketVal").val() + "*";
            varDescription = varDescription + $("#hdnrightpocketVal").val() + "*";
            varDescription = varDescription + $("#hdntopbuttonVal").val() + "*";
            varDescription = varDescription + $("#hdnbackVal").val() + "*";
            varDescription = varDescription + $("#hdnbottomcutVal").val() + "*";
            varDescription = varDescription + $("#hdnleftpocketVal").val() + "*";
            varDescription = varDescription + $("#hdnbuttonVal").val() + "*";
            //alert('6');
            //default value set for variable test only
            varDescription = "hdnbackyokeVal*hdncollarVal*hdnfrontVal*hdnsleevesVal*hdncuffsVal*hdnplanketVal*hdnrightpocketVal*hdntopbuttonVal*hdnbackVal*hdnbottomcutVal*hdnleftpocketVal*hdnbuttonVal";


            var varbackyoke = 1; //$("#hdnbackyoke").val();
            var varcollar = 1; //$("#hdncollar").val();
            var varfront = 1; //$("#hdnfront").val();
            var varsleeves = 1; //$("#hdnsleeves").val();
            var varcuffs = 1; //$("#hdncuffs").val();
            var varplanket = 1; //$("#hdnplanket").val();
            var varrightpocket = 1; //$("#hdnrightpocket").val();
            var vartopbutton = 1; //$("#hdntopbutton").val();
            var varback = 1; //$("#hdnback").val();
            var varbottomcut = 1; //$("#hdnbottomcut").val();
            var varleftpocket = 1; //$("#hdnleftpocket").val();
            var varbutton = 1; //$("#hdnbutton").val();
            //alert('7');
            var abc;
            $.ajax({
                type: "POST",
                url: "Customize.aspx/shoppingCard",
                data: "{test : " + index_i + ", backyoke : " + varbackyoke + ", collar : " + varcollar + ", front : " + varfront + ", sleeves : " + varsleeves + ", cuffs : " + varcuffs + ", planket : " + varplanket + ", rightpocket : " + varrightpocket + ", topbutton : " + vartopbutton + ", back : " + varback + ", bottomcut : " + varbottomcut + ", leftpocket : " + varbottomcut + ", button : " + varbutton + ", Description : '" + varDescription + "'}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Abc');
                    abc = SubItemCode.d;
                    //alert(abc);

                    $.modaldialog.success(abc);
                }
            });
            //alert('8');
        } //lookup
    </script>
</head>

    
<!--header onload="javascript:mainMenuChange('2_style')"-->
<body class="fullbody" >
<form id="Form1" runat="server">
<%--field add by Ritesh chages-10apr--%>
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

    <asp:HiddenField runat="server" ID="hdnbackyokeVal" />
    <asp:HiddenField runat="server" ID="hdncollarVal" />
    <asp:HiddenField runat="server" ID="hdnfrontVal" />
    <asp:HiddenField runat="server" ID="hdnsleevesVal" />
    <asp:HiddenField runat="server" ID="hdncuffsVal" />
    <asp:HiddenField runat="server" ID="hdnplanketVal" />
    <asp:HiddenField runat="server" ID="hdnrightpocketVal" />
    <asp:HiddenField runat="server" ID="hdntopbuttonVal" />
    <asp:HiddenField runat="server" ID="hdnbackVal" />
    <asp:HiddenField runat="server" ID="hdnbottomcutVal" />
    <asp:HiddenField runat="server" ID="hdnleftpocketVal" />
    <asp:HiddenField runat="server" ID="hdnbuttonVal" />
    
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
							 <td width="2%" valign="bottom" style=" font-family: 'KeepCalm';
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
					  <td width="1%" valign="bottom" align="center" style=" font-family: 'KeepCalm';
  font-size: 14px; color:#878787">| </td>
					  <td width="7%" style=" font-family: 'KeepCalm';
  font-size: 14px; " valign="bottom" align="center" ><a href="blog.html" style="text-decoration:none; " id="Besp"  class="if">BLOG </a></td>
						<td width="2%" valign="bottom" style=" font-family: 'KeepCalm';
  font-size: 14px; color:#878787">| </td>
						<td width="6%" align="center" style=" font-family: 'KeepCalm';
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
                                                                Customize
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
            <td width="100%" align="center">
                <table width="100%">
                    
                    <tr>
                        <td width="35%">
                            <div class="one1-px">
                            </div>
                        </td>
                        <td id="midheading" width="30%" align="center"> CUSTOMIZE YOUR SHIRT</td>
                        <td width="35%">
                            <div class="one1-px">
                            </div>  
                        </td>
                    </tr>
                </table>
                
            </td>
        </tr>
        <tr>
            <td width="100%" height="20px">
            </td>
        </tr>
         <tr>
            <td width="100%" align="center">
                <table width="95%">
                    <tr>
                        <!--Left td-->
                        <td width="30%" valign="top">
                        <div id="summary" style="display: none;">
                        
                            <div id="summary_wrapper">
                           
                                <div class="summ_main_title">Summary</div>
                                <div class="summ_closebt"><a href="javascript:hideSummaryDiv();" class="close_summary"><img src="http://www.vitruvien.com/images/close.png" border="0" width="24" height="24"></a></div>
                                <div class="clear"></div>
                                 <table><tr><td>
 <div class="summ_title">Fabric: </div><div class="summ_desc" id="sm_fabric"></div><div class="clear"></div>
                            <div class="summ_title">Sleeve: </div><div class="summ_desc" id="sm_sleeve"></div><div class="clear"></div>

                    <div class="summ_title">Collar: </div>

                    <div class="summ_desc" id="sm_collar">Classic</div>

                    
                    <div class="summ_title2">&nbsp; </div>
                    <div class="summ_desc2">
                        <div style="width:60px; float:left; font-size: 10px;">
                            <strong>Stiffness:</strong>
                        </div>
                        <div style="width:50px; float:left; font-size: 10px;" id="sm_collarstiffness">Soft</div>
                        
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>

                    <div class="summ_title">Cuff: </div><div class="summ_desc" id="sm_cuff">Single Button</div>

                    <div class="summ_title2">&nbsp; </div> <div class="summ_desc2"><div style="width:60px; float:left; font-size: 10px;">
                    <strong>Stiffness:</strong></div><div style="width:50px; float:left; font-size: 10px;" id="sm_cuffstiffness">Soft</div><div class="clear"></div></div>

                    <div class="clear"></div>

                    <div class="summ_title">Placket: </div><div class="summ_desc" id="sm_placket">American</div><div class="clear"></div>
                    </td>
                    <td>
                    <div class="summ_title">Pocket: </div><div class="summ_desc" id="sm_pocket">Square</div><div class="clear"></div>

                    
                    
                    <div class="summ_desc2">
                        <div style="width:60px; float:left; font-size: 10px;"><strong>Quantity:</strong></div>
                        <div style="width:50px; float:left; font-size: 10px;" id="sm_btqty">One</div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                        <div class="summ_title">Back: </div>
                        <div class="summ_desc" id="sm_back">No Pleats</div>
                        <div class="clear"></div>
                        <div class="summ_title">Bottom Cut: </div>
                        <div class="summ_desc" id="sm_bottom">Round</div>
                        <div class="clear"></div>
                        <div class="summ_title">Button: </div>
                        <div class="summ_desc" id="sm_button">White</div>
                        <div class="clear"></div>
                        <div class="summ_title">Monogram: </div>
                       
                        <div class="summ_title2">&nbsp; </div>
                        <div class="summ_desc2">
                            <div style="width:43px; float:left; font-size: 11px;">
                                <strong>Color:</strong>
                            </div>
                            <div style="float:left; font-size: 10px;padding-right: 10px;" id="sm_monocolor">None</div>
                            <div style="width:50px; float:left; font-size: 10px;">| &nbsp;&nbsp;<strong>Text: </strong></div>
                            <div style="width:44px; float:left; font-size: 10px;" id="sm_monotext">None</div>
                            <div class="clear"></div>
                        </div>
                        </td></tr></table>
                        <div class="clear"></div>
                       </div> 
                       </div>
                            <div id="manequinn">

                            <div id="yoke_back" class="mann">
                                <asp:Image ID="imgBackYoke" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="front" class="mann">
                                <asp:Image ID="imgFront" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="placket1" class="mann">
                                <asp:Image ID="imgPlacket" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="sleeves1" class="mann">
                                <asp:Image ID="imgSleeves" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="cuffs_right" class="mann">
                                <asp:Image ID="imgCuffs" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="cuffs_Left" class="mann">
                                <asp:Image ID="imgCuffs_Left" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="collar1" class="mann">
                                <asp:Image ID="imgCollar" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="buttons_leftplacket" class="mann">
                                <asp:Image ID="imgButton" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>
                            
                            <div id="buttons_btdown" class="mann">
                                <asp:Image ID="imgTopButton" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>
                            
                            <div id="buttons_Monogram" class="mann">
                                <asp:Image ID="imgMonogram" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>

                            <div id="buttons_Pocket" class="mann">
                                <asp:Image ID="imgPocket" tag="" runat="server" width="390" height="511" style="display: inline;"/>
                            </div>
                      </div>
                            <table width="100%">
                                            <tr>
                                                <td width="35%" align="left" id="price">
                                                    Style Summary
                                                </td>
                                                <td width="25%" align="left" id="Td35">
                                                    <a href="javascript:getSummary();showSummaryDiv();" id="toggle_summary" class="active">
                                                        <img src="images/Plus.png" style="height:30px">
                                                    </a>
                                                </td>
                                                <td width="40%" align="right" id="midheading">
                                                    Rs. <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
                                                    <asp:HiddenField ID="hdnFabricName" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                        <table>
                            <tr>
                                    <td  width="30%" height="5px"><asp:HiddenField ID="hdnQuantityLeft" runat="server" /></td>
                                </tr>
                                <tr>
                                            <td width="30%" align="left" id="red" id="background1">
                                                   Basic Fibric Price</br>Rs. 
                                                <asp:Label ID="lblBasePrice" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                    <td id="Td34" width="30%" height="5px"></td>
                                </tr>
                                <tr>
                                    <td width="30%" height="5px">
                                        <table width="100%" >
                                            <tr>
                                                <td id="red" width="50%" align="left">Customization Charges</br>Rs. 100</td>
                                                <td id="red1" width="50%" align="right">Expected Delivery Time</br><asp:Label ID="lblExpectedDays" runat="server" Text="Label"></asp:Label> Days</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                
                                
                            </table>
                        
                                

                        </td>
                        <!--Left tb-->
                        <td width="7%"></td>
                        <!--right tb-->
                        <td width="63%" valign="top">
                        <div class="customize">
                        <table width="100%">
                                                <tr>
                                                     <td width="29%" align="left">
                                                        <!--<a href="javascript:mainMenuChange(this);"></a> -->
                                                           
                                                            <img id="fabric" src="images/Fabric_dark.png" border="0" 
                                                            style="height: 40px;"  onclick="javascript:mainMenuChange('1_fabric');"/>
                                                          
                                                     </td>
                                                     <td width="7%" align="center">
                                                        <img src="images/Forwrd_Icon.png" border="0" 
                                                            style="height: 15px; " />
                                                            
                                                     </td>
                                                     <td width="28%" align="left">
                                                        
                                                            <img id="style" src="images/Style_light.png" border="0" 
                                                            style="height: 40px; " onclick="javascript:mainMenuChange('2_style');"/>
                                                               
                                                     </td>
                                                     <td width="7%" align="center">
                                                        <img src="images/Forwrd_Icon.png" border="0" 
                                                            style="height: 15px; " />
                                                            
                                                     </td>
                                                     <td width="29%" align="left">
                                                        
                                                            <img id="Measurement" src="images/Measurements_light.png" border="0" 
                                                            style="height: 40px; " onclick="javascript:mainMenuChange('3_Measurements');" />   
                                                     </td>
                                                </tr>
                                            </table>
                        

                   
                        <div class="customize_left" id="1_fabric" style="height:450px">

                        <div align="center">

                            <table width="100%">
						   <tr>
						    <td width="25%" align="left"> 	
                             				  
								   <asp:DropDownList 
                                       ID="ddlPattern" runat="server" 
                                       
                                       AutoPostBack="True" Width="95%" Font-Names="Verdana" Font-Size="8pt" 
                                       ForeColor="#666666" 
                                       onselectedindexchanged="ddlPattern_SelectedIndexChanged">
                                   </asp:DropDownList>
                                   
							  </td>
							  
							<td width="25%">
	                     						  
								   <asp:DropDownList 
                                       ID="ddlFabric" runat="server" 
                                       
                                       AutoPostBack="True" Font-Names="Verdana" Font-Size="8pt" 
                                       ForeColor="#666666" Width="95%" 
                                       onselectedindexchanged="ddlFabric_SelectedIndexChanged">
                                   </asp:DropDownList>
								 </td>

						   	<td width="25%">			  
								        <asp:DropDownList ID="ddlColor" runat="server" 
                                             AutoPostBack="True" 
                                            Font-Names="Verdana" Font-Size="8pt" ForeColor="#666666" Width="95%" 
                                            onselectedindexchanged="ddlColor_SelectedIndexChanged">
                                        </asp:DropDownList>
</td>  
								       
	                               
								   </tr>
								   </table>
 									
                        </div> 


                
                 <div style="vertical-align:top;width:100%;">
                    <asp:DataList ID="FabricList" runat="server" DataKeyField="SKUID" RepeatDirection="Horizontal"
							RepeatColumns="4"   Width="100%" Cellpadding="8" 
                         cellspacing="8" onitemcommand="FabricList_ItemCommand"
                         >
                     <ItemTemplate>
                         <div>
                         <asp:imagebutton id="Imagebutton1" runat="server" 
                                 ImageUrl='<%# DataBinder.Eval(Container.DataItem, "FabricImageURL") %>' 
                                 CommandArgument='<%#DataBinder.Eval(Container.DataItem, "SKUID")%>' 
                                 commandname="Transfer"  width="120px" Height="100px" ImageAlign="Middle" BorderStyle="Ridge" BorderWidth="1px" BorderColor="Gray">
									</asp:imagebutton>
                             <div class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SKUName")%>
									</div>
									<div class="shirt-title"><b>Rs.
										<%# DataBinder.Eval(Container.DataItem, "Price") %></b>
									</div>
                             <asp:HiddenField ID="hdnQuantity"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Quantity") %>' />
                                    </div>
                     </ItemTemplate>
                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="2px" />
                         <ItemStyle  BorderColor="#cccccc" BorderStyle="Solid" 
                         BorderWidth="1px" Width="150px" Height="130px" HorizontalAlign="Center"/>
                         
                 </asp:DataList>
                </div>            
                
  

          <!--<div class="fbfilter2" style="text-align:center">
          <a href="javascript:void(0)" class="pgprev"><img src="http://www.vitruvien.com/images/pgprev.jpg" border="0"></a><input type="text" id="currpgval" maxlength="2" style="width: 16px; text-align: center" value="7">
          &nbsp;&nbsp;/&nbsp;<input readonly="readonly" type="text" id="totpgval" maxlength="2" style="border: none;width: 16px; text-align: center; background:none" value="3">  <a href="javascript:void(0)" class="pgnext"><img src="http://www.vitruvien.com/images/pgnext.jpg" border="0"></a>
     </div>-->
                               

                        </div>

                        <div id="2_style" class="tablevel1" style="display:none" >
                         <div id="Div1"  class="tablevel1">
                            <table width="100%">
                                                <tr>
                                                    <td width="20%" valign="top">
                                                         <table width="100%">
                                                            <tr>
                                                                <td width="100%" height="55px">
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnSleeves" src="images/Sleeves_dark.png" border="0" style="height: 35px;" onclick="javascript:SubMenuChange('Sleeves');" />
                                                                       
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnCollar" src="images/Collar_light.png" border="0" style="height: 35px;"  onclick="javascript:SubMenuChange('Collar');"/>
                                                                      
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnCuff" src="images/Cuff_light.png" border="0" style="height: 35px;" onclick="javascript:SubMenuChange('Cuff');"/>
                                                                       
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnPlacket" src="images/Placket_light.png" border="0" style="height: 35px; " onclick="javascript:SubMenuChange('Placket');"/>
                                                                      
                                                                </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnPocket" src="images/Pocket_light.png" border="0" style="height: 35px; " onclick="javascript:SubMenuChange('Pocket');" />
                                                                       
                                                                </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnButtons" src="images/Buttons_light.png" border="0" style="height: 35px; " onclick="javascript:SubMenuChange('Buttons');"/>
                                                                     
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnBottomCut" src="images/BottomCut_light.png" border="0" style="height: 35px; "  onclick="javascript:SubMenuChange('BottomCut');"/>
                                                                      
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnBack" src="images/Back_light.png" border="0" style="height: 35px; " onclick="javascript:SubMenuChange('Back');" />
                                                                       
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    
                                                                        <img id="btnMonogram" src="images/Monogram_Light.png" border="0" style="height: 35px; " onclick="javascript:SubMenuChange('Monogram');"/>
                                                                      
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" height="25px">
                                                                    
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="10%" align="center" valign="top">
                                                        <img src="images/Vertical_double_line.png" border="0" style="height:450px" />
                                                    </td>
                                                    <td width="70%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="100%" height="40px"></td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%">
                                                                    <table width="100%">
                                                                        <tr>
                                                                            <td style="width: 66%">
                                                                            <div id="Sleeves" style="display:block">
                                                                                <asp:DataList ID="ProductPartList_Sleeves" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                 <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>'
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Sleeves',this);" name="image1"
                                 />
                                                                                        
                                    <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>
									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                    
                                                                                    </ItemTemplate>
                                                                                    <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  
                                                                    <asp:Label ID="sd_title_Sleeves" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Sleeves" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                            </div>
                                                                            <div id="Collar" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Collar" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                       <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>'
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Collar',this);"
                                 />
                                                                                         <div class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>
									</div> <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                       <br />
                                                                                       </div>
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                    <asp:Label ID="sd_title_Collar" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Collar" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                               </div>
                                                                            <div id="Cuff" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Cuff" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Cuffs',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                       </div>
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                    <asp:Label ID="sd_title_Cuff" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Cuff" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                             </div>  
                                                                            <div id="Placket" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Placket" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Placket',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                       
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_Placket" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Placket" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>
                                                                            <div id="BottomCut" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_BottomCut" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('BottomCut',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                       
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_BottomCut" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_BottomCut" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>
                                                                            <div id="Back" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Back" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Back',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                       
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_Back" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Back" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>
                                                                            <div id="Pocket" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Pocket" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                   <ItemTemplate>
                                                                                   
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle"  onclick="javascript:changeSubPart('Pocket',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                                                                    <br />
                                                                                      
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_Pocket" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Pocket" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>
                                                                            <div id="Buttons" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Buttons" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle" onclick="javascript:changeSubPart('Button',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                    <br />
                                                                                      
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_Button" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Button" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>
                                                                             <div id="Monogram" style="display:none">
                                                                                <asp:DataList ID="ProductPartList_Monogram" runat="server" 
                                                                                    RepeatDirection="Horizontal" RepeatColumns="4" DataKeyField="SubPartTypeID" 
							   Width="100%" ><ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Height="120px" Width="120px" />
                                                                                    <ItemTemplate>
                                                                                    
                                                                                    <img id='<%# DataBinder.Eval(Container.DataItem, "SKUSubPartMapID") %>' + '-' + '<%# DataBinder.Eval(Container.DataItem, "SubPartName") %>' 
                                 src='<%# DataBinder.Eval(Container.DataItem, "IconURL") %>' 
                                   width="100px" Height="100px" ImageAlign="Middle" onclick="javascript:changeSubPart('Monogram',this);"
                                 />
                                                                                        
                                                                                         <div  class="shirt-title">
										<%# DataBinder.Eval(Container.DataItem, "SubPartName")%>

									</div> 
                                    <asp:HiddenField ID="hdnDescription"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Description") %>' />
                                    <asp:HiddenField ID="hdnSKUPartImage"  runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "SKUPartImage") %>' />
                                    <br />
                                                                                      
                                                                                    </ItemTemplate>
                                                                                     <SelectedItemStyle BorderColor="#999999" BorderStyle="Solid" 
                         BorderWidth="1px" />
                                                                                </asp:DataList>
                                                                                <table  width="100%">
                                                                                <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <asp:Label ID="sd_title_Monogram" runat="server" Text="" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <asp:Label ID="sd_desc_Monogram" runat="server" Text="" style="font-family:'KeepCalm';font-size:x-small;"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr></table>
                                                                                </div>

                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                           <!-- <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="center">
                                                                    <div class="one1-px">
                                                                    </div>  
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                  <div id="sd_title" style="font-family:'KeepCalm';font-size:medium;font-weight:bold"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" >
                                                                   <div id="sd_desc" style="font-family:'KeepCalm';font-size:x-small"></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="100%" align="left" height="50px">
                                                                </td>
                                                            </tr>-->
                                                            
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>

                        </div>
                           
                        </div> 

                        
                        <div id="3_Measurements" class="tablevel1" style="display: none;height:450px">
                        <table width="30%" align="center" class="style1" style="padding-top:50px">
  <tr> 
    <td>Length</td>
    <td>
	  <table >
	    <tr>
  <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Chest</td>
    <td>
	  <table >
	    <tr>
		   <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Waist</td>
    <td>
	  <table >
	    <tr>
		    <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td width="10%">Hip</td>
    <td>
	  <table >
	    <tr>
		   <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Sleeves</td>
    <td>
	  <table >
	    <tr>
		   <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Shoulder</td>
    <td>
	  <table >
	    <tr>
		    <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Neck</td>
    <td>
	  <table >
	    <tr>
		   <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
 <tr> 
    <td>Cuff/Wrist</td>
    <td>
	  <table >
	    <tr>
		  <td >
		<input name="collar" type="text" size="10" autocomplete="off" rel="set" placeholder="Inches" />
	      </td>
		 </tr>
	  </table>
	 </td>
 </tr>
  
 <tr>
  <td align="right"> 
    <input type="button" value="save" />
  </td>
  <td>
	<input type="button" value="cancel" />
  </td>
 </tr>

</table>
                        </div>
                        
                        
    <div class="pns">
        <div class="tprev" style="width:90px; float:left;">
        
        <img src="images/prev.png" border="0" style="height:40px" onclick="javascript:movePrev();">
        </div>
        <div class="tnext" style="width:90px; float:right;">
            
                <img src="images/Next_customize.png" style="height:40px" onclick="javascript:moveNext();">
           
        </div>
        <a href="javascript:void(0)" style="width: 90px; float: right; display: none;" id="nxttc" onclick="return false;" class="add_to_cart" rel="Freshman White"><img src="http://www.vitruvien.com/images/per_cart.jpg" border="0"></a>
                           
        <div class="clear"></div>
    </div>                    
                    </div>
                        </div>
                        </td>
                        <!--right tb-->
                    </tr>
                </table>
            </td>
            <!--mid table-->
        </tr>
                                <tr>
                                    <td width="100%">
                                        <table width="100%">
                                            <tr>
                                                <td width="40%" align="center">
                                                   <img src="images/Addtobag.png" style="height:40px" onclick="javascript:checkAvailability();">
                                                   <%-- <asp:ImageButton ID="imgAddtocart" ImageUrl="images/Addtobag.png" Style="height:40px;"
    OnClientClick="javascript:lookup(-1);" />--%>
                                                </td>
                                                <td width="60%" align="right">
                                                    <a href="Style.htm">
                                                    &nbsp;</a></td>
                                            </tr>
                                        </table>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td width="100%" height="20px"></td>
                                </tr>
                                <tr>
                                    <td width="100%">
                                        <table width="100%">
                                            <tr>
                                                <td width="40%" align="center">
                                                    
                                                </td>
                                                <td width="60%" align="right">
                                                   <a href="Style.htm">
                                                     <!--<img src="images/Next_customize.png" style="height:40px">-->
                                                   </a>
                                                </td>
                                            </tr>
                                        </table>
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

