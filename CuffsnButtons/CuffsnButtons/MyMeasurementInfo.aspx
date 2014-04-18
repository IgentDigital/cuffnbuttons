<%@ Page Title="Cuff & Botton" Language="C#" AutoEventWireup="true" CodeBehind="MyMeasurementInfo.aspx.cs" Inherits="CuffsnButtons.MyMeasurementInfo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
	<link rel="stylesheet" href="Styles/themes/base/jquery.ui.all.css" />
	<script src="Scripts/ui/jquery-1.7.1.min.js"></script>
	<script src="Scripts/ui/jquery.bgiframe-2.1.2.js"></script>
	<script src="Scripts/ui/jquery.ui.core.js"></script>
	<script src="Scripts/ui/jquery.ui.widget.js"></script>
	<script src="Scripts/ui/jquery.ui.mouse.js"></script>
	<script src="Scripts/ui/jquery.ui.button.js"></script>
	<script src="Scripts/ui/jquery.ui.draggable.js"></script>
	<script src="Scripts/ui/jquery.ui.position.js"></script>
	<script src="Scripts/ui/jquery.ui.resizable.js"></script>
	<script src="Scripts/ui/jquery.ui.dialog.js"></script>
	<script src="Scripts/ui/jquery.effects.core.js"></script>
     <link rel="stylesheet"  type="text/css" href="Styles/sun.css" />
	<%--<link rel="stylesheet" href="../demos.css">--%>
	<style>
		
		label, input { display:block; }
		input.text { margin-bottom:12px; width:95%; padding: .4em; }
		fieldset { padding:0; border:0; margin-top:25px; }
		h1 { font-size: 1.2em; margin: .6em 0; }
		div#users-contain { width: 350px; margin: 20px 0; }
		div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
	</style>
    <style>
        .style1{ font-family:"keep Calm"; font-size:12px}
    </style>   
	<script>
	    $(document).ready(function () {
	        $("#cstmSize").hide();

	    });

	    $(document).ready(function () {
	        $("#btnCstmsize").click(function () {
	            $("#cstmSize").show();
	            $("#stdSize").show();
	            $("#btnCstmsize").hide();
	            $("#hdnStandardCustom").val('2');
	        });

	        $("#btnStndsize").click(function () {
	            $("#cstmSize").hide();
	            $("#stdSize").show();
	            $("#btnCstmsize").show();
	            $("#hdnStandardCustom").val('1');
	        });
	    });



	    function lookup4(ProfileName, Size, Fit, Parameter, hdnUserId) {
	        var abc;
	        $.ajax({
	            type: "POST",
	            url: "MyMeasurementInfo.aspx/GetFunction4",
	            data: "{txtStandardSizeName : '" + ProfileName + "', ddlSize : '" + Size + "', ddlFit : '" + Fit + "', Parameter : '" + Parameter + "', hdnUserId : " + hdnUserId + "}",
	            contentType: "application/json; charset=utf-8",
	            datatype: "json",
	            success: function (SubItemCode) {
	                abc = SubItemCode.d;
	                $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	            }
	        });
        } //lookup
        function lookup4_update(ProfileName, Size, Fit, Parameter, userId, StdID) {
            //alert('Ritesh');
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction4_update",
                data: "{txtStandardSizeName : '" + ProfileName + "', ddlSize : '" + Size + "', ddlFit : '" + Fit + "', Parameter : '" + Parameter + "',StdID : " + StdID.toString() + ",hdnUserId : " + userId.toString() + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('f');
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	            }
	        });
        } //lookup

        function lookup3(ProfileName, Collar, ShirtLength, LongSleeves, ShortSleeves, Parameter, hdnUserId, Size, Fit) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction3",
                data: "{txtStandardSizeName : '" + ProfileName + "', ddlCollar : '" + Collar + "', ddlShirtLength : '" + ShirtLength + "', ddlLongSleeves : '" + LongSleeves + "', ddlShortSleeves : '" + ShortSleeves + "', Parameter : '" + Parameter + "',hdnUserId : '" + hdnUserId + "',Size : '" + Size + "', Fit :'" + Fit + "'}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
                }
            });
        } //lookup
        function lookup3Update(ProfileName, Size, Fit, Collar, ShirtLength, LongSleeves, ShortSleeves, Parameter, userId, stndrSizeId) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction3_update",
                data: "{txtStandardSizeName : '" + ProfileName + "', ddlCollar : '" + Collar + "', ddlShirtLength : '" + ShirtLength + "', ddlLongSleeves : '" + LongSleeves + "', ddlShortSleeves : '" + ShortSleeves + "', Parameter : '" + Parameter + "', userId :" + userId.toString() + ",stndrSizeId : " + stndrSizeId.toString() + ",Size : " + Size + ", Fit : " + Fit + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	            }
	        });
        } //lookup

        function lookup7(ProfileName) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/show_standardsize",
                data: "{txtProfileName : " + ProfileName + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    //$('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	                document.getElementById("div_cntnt").innerHTML = abc;
	            }
	        });
        } //lookup

        function lookup9(ProfileName) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/show_Body_measurement",
                data: "{txtProfileName : " + ProfileName + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    //$('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	                document.getElementById("div_bodyMeasureMent").innerHTML = abc;
	            }
	        });
        } //lookup

        function lookup8(ProfileName) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/show_cust_measurement",
                data: "{txtProfileName : " + ProfileName + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    //alert('Ritesh');
                    abc = SubItemCode.d;
                    //$('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	                document.getElementById("div_custmr_msrmnt").innerHTML = abc;
	                //document.getElementById("div_bodyMeasureMent").innerHTML = abc;

	            }
	        });
        } //lookup

        function lookup2(ProfileName, Hfeet, Hinches, weight, collar, shoulder, Chest, Stomach, Hip, ShirtLength, LongSleeves, ShortSleeves, Arm, Wrist, Fit, hdnUserId) {
            var abc;
            //alert("{ProfileName : '" + ProfileName + "',Hfeet : '" + Hfeet + "', Hinches : '" + Hinches + "', weight : '" + weight + "', collar : '" + collar + "', shoulder : '" + shoulder + "', Hip : '" + Hip + "', ShirtLength : '" + ShirtLength + "', LongSleeves : '" + LongSleeves + "', ShortSleeves : '" + ShortSleeves + "', Arm : '" + Arm + "', Wrist : '" + Wrist + "', Fit : '" + Fit + "', hdnUserId : " + hdnUserId + "}");
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction2",
                data: "{ProfileName : '" + ProfileName + "',Hfeet : '" + Hfeet + "', Hinches : '" + Hinches + "', weight : '" + weight + "', collar : '" + collar + "', shoulder : '" + shoulder + "', Hip : '" + Hip + "', ShirtLength : '" + ShirtLength + "', LongSleeves : '" + LongSleeves + "', ShortSleeves : '" + ShortSleeves + "', Arm : '" + Arm + "', Wrist : '" + Wrist + "', Fit : '" + Fit + "', Chest : '" + Chest + "', Stomach : '" + Stomach + "', hdnUserId : " + hdnUserId + "}",//string Chest, string Stomach
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc);
                    //alert(abc);
                }
            });
        } //lookup

        function lookup2_update(ProfileName, Hfeet, Hinches, weight, collar, shoulder, Chest, Stomach, Hip, ShirtLength, LongSleeves, ShortSleeves, Arm, Wrist, Fit, hdnUserId, hdnStandardSizeId) {
            var abc;
            //alert("{ProfileName : '" + ProfileName + "',Hfeet : '" + Hfeet + "', Hinches : '" + Hinches + "', weight : '" + weight + "', collar : '" + collar + "', shoulder : '" + shoulder + "', Hip : '" + Hip + "', ShirtLength : '" + ShirtLength + "', LongSleeves : '" + LongSleeves + "', ShortSleeves : '" + ShortSleeves + "', Arm : '" + Arm + "', Wrist : '" + Wrist + "', Fit : '" + Fit + "', hdnUserId : " + hdnUserId + "}");
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction2_update",
                data: "{ProfileName : '" + ProfileName + "',Hfeet : '" + Hfeet + "', Hinches : '" + Hinches + "', weight : '" + weight + "', collar : '" + collar + "', shoulder : '" + shoulder + "', Hip : '" + Hip + "', ShirtLength : '" + ShirtLength + "', LongSleeves : '" + LongSleeves + "', ShortSleeves : '" + ShortSleeves + "', Arm : '" + Arm + "', Wrist : '" + Wrist + "', Fit : '" + Fit + "', Chest : '" + Chest + "', Stomach : '" + Stomach + "', hdnUserId : " + hdnUserId + ",hdnStandardSizeId : " + hdnStandardSizeId + "}",//string Chest, string Stomach
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc);
	                //alert(abc);
	            }
	        });
        } //lookup




        function lookup1(Length, Chest, Waist, Hip, Sleeves, Shoulder) {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction1",
                data: "{txtLength : '" + Length + "', txtChest : '" + Chest + "', txtWaist : '" + Waist + "', txtHip : '" + Hip + "', txtSleeves : '" + Sleeves + "', txtShoulder : '" + Shoulder + "'}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
                }
            });
        } //lookup

        function lookup(ProfileName, Length, Chest, Waist, Hip, Sleeves, Shoulder, Neck, Cuff_Wrist, hdnUserId)//txtProfileName
        {
            var abc;
            //alert(hdnUserId);
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction",
                data: "{txtProfileName : '" + ProfileName + "', txtLength : '" + Length + "', txtChest : '" + Chest + "', txtWaist : '" + Waist + "', txtHip : '" + Hip + "', txtSleeves : '" + Sleeves + "', txtShoulder : '" + Shoulder + "', txtNeck : '" + Neck + "',txtCuff_Wrist : '" + Cuff_Wrist + "' ,hdnUserId : " + hdnUserId + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
                }
            });
        } //lookup

        function lookup_update(ProfileName, Length, Chest, Waist, Hip, Sleeves, Shoulder, Neck, Cuff_Wrist, hdnUserId, stdId)//txtProfileName
        {
            var abc;
            $.ajax({
                type: "POST",
                url: "MyMeasurementInfo.aspx/GetFunction_Update",
                data: "{txtProfileName : '" + ProfileName + "', txtLength : '" + Length + "', txtChest : '" + Chest + "', txtWaist : '" + Waist + "', txtHip : '" + Hip + "', txtSleeves : '" + Sleeves + "', txtShoulder : '" + Shoulder + "', txtNeck : '" + Neck + "',txtCuff_Wrist : '" + Cuff_Wrist + "' ,hdnUserId : " + hdnUserId + ",stdId : " + stdId + "}",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                success: function (SubItemCode) {
                    abc = SubItemCode.d;
                    $('#<%= lblMessage.ClientID %>').html(abc); //alert(abc);
	            }
	        });
        } //lookup
        $(function () {
            // a workaround for a flaw in the demo system (http://dev.jqueryui.com/ticket/4375), ignore!
            $("#dialog:ui-dialog").dialog("destroy");

            var name = $("#name"),
                allFields = $([]).add(name),
                tips = $(".validateTips");

            var BodyMeasurementName = $("#txtBodyMeasurement"),
                allFields = $([]).add(BodyMeasurementName),
                tips = $(".validateTips");

            var BlazerName = $("#txtBlazerName"),
                allFields = $([]).add(BlazerName),
                tips = $(".validateTips");

            var StandardSizeName = $("#txtStandardSizeName"),
                allFields = $([]).add(StandardSizeName),
                tips = $(".validateTips");

            function updateTips(t) {
                tips
                    .text(t)
                    .addClass("ui-state-highlight");
                setTimeout(function () {
                    tips.removeClass("ui-state-highlight", 1500);
                }, 500);
            }

            function checkLength(o, n, min, max) {
                if (o.val().length > max || o.val().length < min) {
                    o.addClass("ui-state-error");
                    updateTips("Length of " + n + " must be between " +
                        min + " and " + max + ".");
                    return false;
                } else {
                    return true;
                }
            }

            function checkNumeric(o, n) {
                //alert(isNaN(o.val()));
                if (isNaN(o.val())) {
                    o.addClass("ui-state-error");
                    updateTips("Value of " + n + " must be numeric ");
                    return false;
                } else {
                    return true;
                }
            }

            function ddlcheckLength(o, n, min, max) {
                if (o.val().length > max || o.val().length < min) {
                    o.addClass("ui-state-error");
                    updateTips(n + " Required Field. " + ".");
                    return false;
                } else {
                    return true;
                }
            }


            function checkRegexp(o, regexp, n) {
                if (!(regexp.test(o.val()))) {
                    o.addClass("ui-state-error");
                    updateTips(n);
                    return false;
                } else {
                    return true;
                }
            }

            $("#BlazerForm").dialog({
                autoOpen: false,
                height: 600,
                width: 550,
                modal: true,
                buttons: {
                    "Save Measurement": function () {
                        var bValid = true;
                        allFields.removeClass("ui-state-error");

                        //bValid = bValid && checkLength(BlazerName, "username", 3, 16);

                        //bValid = bValid && checkRegexp(BlazerName, /^[a-z]([0-9a-z_])+$/i, "Username may consist of a-z, 0-9, underscores, begin with a letter.");

                        if (bValid) {
                            lookup1($("#txtBlazerLength").val(), $("#txtBlazerChest").val(), $("#txtBlazerWaist").val(), $("#txtBlazerHip").val(), $("#txtBlazerSleeves").val(), $("#txtBlazerShoulder").val())
                            $(this).dialog("close");
                        }
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                    }
                },
                close: function () {
                    allFields.val("").removeClass("ui-state-error");
                }
            });

            $("#BodyMeasurement").dialog({
                autoOpen: false,
                height: 600,
                width: 550,
                modal: true,
                buttons: {
                    "Save Measurement": function () {
                        var bValid = true;
                        allFields.removeClass("ui-state-error");

                        bValid = bValid && checkLength($("#txtBodyMeasurement"), "Profile Name", 3, 30);

                        //bValid = bValid && checkRegexp($("#txtBodyMeasurement"), /^[a-z]([0-9a-z_])+$/i, "Profile Name may consist of a-z, 0-9, underscores, begin with a letter.");
                        bValid = bValid && ddlcheckLength($("#ddlHeight"), "Height feet", 1, 10);
                        bValid = bValid && ddlcheckLength($("#ddlHeightInch"), "Height Inches", 1, 10);
                        bValid = bValid && checkLength($("#txtBodyWeight"), "Weight", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyWeight"), "Weight");
                        bValid = bValid && checkLength($("#txtBodyCollar"), "Collar", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyCollar"), "Collar");
                        bValid = bValid && checkLength($("#txtBodyShoulder"), "Shoulder", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyShoulder"), "Shoulder");
                        bValid = bValid && checkLength($("#txtBodyChest"), "Chest", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyChest"), "Chest");
                        bValid = bValid && checkLength($("#txtBodyStomach"), "Stomach", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyStomach"), "Stomach");
                        bValid = bValid && checkLength($("#txtBodyHip"), "Hip", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyHip"), "Hip");
                        bValid = bValid && checkLength($("#txtBodyShirtLength"), "Length", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyShirtLength"), "Length");
                        bValid = bValid && checkLength($("#txtBodyShortSleeveLength"), "Short sleeve Lengh", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyShortSleeveLength"), "Short sleeve Lengh");
                        bValid = bValid && checkLength($("#txtBodyLongSleeveLength"), "Long sleeve Lengh", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyLongSleeveLength"), "Long sleeve Lengh");
                        //bValid = bValid && ddlcheckLength($("#ddlBodyFit"), "Fit", 1, 10);
                        bValid = bValid && checkLength($("#txtBodyWrist"), "Cuff or Wrist", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyWrist"), "Cuff or Wrist");
                        bValid = bValid && checkLength($("#txtBodyArm"), "Arms", 1, 10);
                        bValid = bValid && checkNumeric($("#txtBodyArm"), "Arms");
                        if (bValid) {
                            if ($("#hidden_mode").val() == "Add") {
                                lookup2($("#txtBodyMeasurement").val(), $("#ddlHeight").val(), $("#ddlHeightInch").val(), $("#txtBodyWeight").val(), $("#txtBodyCollar").val(), $("#txtBodyShoulder").val(), $("#txtBodyChest").val(), $("#txtBodyStomach").val(), $("#txtBodyHip").val(), $("#txtBodyShirtLength").val(), $("#txtBodyLongSleeveLength").val(), $("#txtBodyShortSleeveLength").val(), $("#txtBodyArm").val(), $("#txtBodyWrist").val(), $("#ddlBodyFit").val(), $("#hdnUserId").val())
                                lookup9($("#hdnUserId").val());
                                $(this).dialog("close");
                            }
                            else {
                                lookup2_update($("#txtBodyMeasurement").val(), $("#ddlHeight").val(), $("#ddlHeightInch").val(), $("#txtBodyWeight").val(), $("#txtBodyCollar").val(), $("#txtBodyShoulder").val(), $("#txtBodyChest").val(), $("#txtBodyStomach").val(), $("#txtBodyHip").val(), $("#txtBodyShirtLength").val(), $("#txtBodyLongSleeveLength").val(), $("#txtBodyShortSleeveLength").val(), $("#txtBodyArm").val(), $("#txtBodyWrist").val(), $("#ddlBodyFit").val(), $("#hdnUserId").val(), $("#hdnStandardSizeId").val());
                                lookup9($("#hdnUserId").val());
                                $(this).dialog("close");
                            }
                        }
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                    }
                },
                close: function () {
                    allFields.val("").removeClass("ui-state-error");
                }
            });

            $("#dialog-form").dialog({
                autoOpen: false,
                height: 600,
                width: 550,
                modal: true,
                buttons: {
                    "Save Measurement": function () {
                        var bValid = true;
                        allFields.removeClass("ui-state-error");
                        //alert('abc');
                        bValid = bValid && checkLength($("#txtProfileName"), "Profile Name", 3, 30);

                        //bValid = bValid && checkRegexp($("#txtProfileName"), /^[a-z]([0-9a-z_])+$/i, "Profile Name may consist of a-z, 0-9, underscores, begin with a letter.");
                        bValid = bValid && checkLength($("#txtLength"), "Length", 1, 10);
                        bValid = bValid && checkNumeric($("#txtLength"), "Length");
                        bValid = bValid && checkLength($("#txtChest"), "Chest", 1, 10);
                        bValid = bValid && checkNumeric($("#txtChest"), "Chest");
                        bValid = bValid && checkLength($("#txtWaist"), "Waist", 1, 10);
                        bValid = bValid && checkNumeric($("#txtWaist"), "Waist");
                        bValid = bValid && checkLength($("#txtHip"), "Waist", 1, 10);
                        bValid = bValid && checkNumeric($("#txtHip"), "Waist");
                        bValid = bValid && checkLength($("#txtHip"), "Hip", 1, 10);
                        bValid = bValid && checkNumeric($("#txtHip"), "Hip");
                        bValid = bValid && checkLength($("#txtSleeves"), "Sleeves", 1, 10);
                        bValid = bValid && checkNumeric($("#txtSleeves"), "Sleeves");
                        bValid = bValid && checkLength($("#txtShoulder"), "Shoulder", 1, 10);
                        bValid = bValid && checkNumeric($("#txtShoulder"), "Shoulder");
                        bValid = bValid && checkLength($("#txtNeck"), "Neck", 1, 10);
                        bValid = bValid && checkNumeric($("#txtNeck"), "Neck");
                        bValid = bValid && checkLength($("#txtCuff_Wrist"), "Cuff or Wrist", 1, 10);
                        bValid = bValid && checkNumeric($("#txtCuff_Wrist"), "Cuff or Wrist");
                        //bValid = bValid && checkNumeric($("#txtLength"), "Length");
                        //bValid = bValid && checkLength($("#txtLength"), "Length", 3, 16);



                        //bValid = bValid && checkRegexp(name, /^[a-z]([0-9a-z_])+$/i, "Username may consist of a-z, 0-9, underscores, begin with a letter.");

                        //alert(bValid);
                        if (bValid) {
                            //alert($("#hidden_mode").val());
                            //alert('Ritesh' + $("#hdnUserId").val());
                            if ($("#hidden_mode").val() == "Add") {

                                lookup($("#txtProfileName").val(), $("#txtLength").val(), $("#txtChest").val(), $("#txtWaist").val(), $("#txtHip").val(), $("#txtSleeves").val(), $("#txtShoulder").val(), $("#txtNeck").val(), $("#txtCuff_Wrist").val(), $("#hdnUserId").val())
                                $(this).dialog("close");
                                lookup8($("#hdnUserId").val());
                            }
                            else {
                                lookup_update($("#txtProfileName").val(), $("#txtLength").val(), $("#txtChest").val(), $("#txtWaist").val(), $("#txtHip").val(), $("#txtSleeves").val(), $("#txtShoulder").val(), $("#txtNeck").val(), $("#txtCuff_Wrist").val(), $("#hdnUserId").val(), $("#hdnStandardSizeId").val())
                                $(this).dialog("close");
                                lookup8($("#hdnUserId").val());
                            }

                        }
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                    }
                },
                close: function () {
                    allFields.val("").removeClass("ui-state-error");
                }
            });


            $("#StandardSize").dialog({
                autoOpen: false,
                height: 600,
                width: 550,
                modal: true,
                buttons: {
                    "Save Measurement": function () {
                        //alert($("#hidden_mode").val());
                        var bValid = true;
                        allFields.removeClass("ui-state-error");

                        bValid = bValid && checkLength($("#txtStandardSizeName"), "Profile Name", 3, 50);

                        //bValid = bValid && checkRegexp($("#txtStandardSizeName"), /^[a-z]([0-9a-z_])+$/i, "Profile Name may consist of a-z, 0-9, underscores, begin with a letter.");

                        //if ($("#hdnStandardCustom").val() == 1)
                        //{
                        //    bValid = bValid && checkNumeric($("#txtStandardSizeName"), "Profile Name");
                        //    bValid = bValid && checkNumeric($("#ddlSize"), "Profile Name");
                        //    bValid = bValid && checkNumeric($("#ddlFit"), "Profile Name");
                        //}
                        //else
                        //{
                        //    bValid = bValid && checkNumeric($("#ddlCollar"), "Profile Name");
                        //    bValid = bValid && checkNumeric($("#ddlShirtLength"), "Profile Name");
                        //    bValid = bValid && checkNumeric($("#ddlFit"), "Profile Name");
                        //    bValid = bValid && checkNumeric($("#ddlFit"), "Profile Name");
                        //}
                        //alert(1);
                        if (bValid) {
                            if ($("#hidden_mode").val() == "Add") {
                                if ($("#hdnStandardCustom").val() == 1) {
                                    //alert(44);
                                    //lookup3($("#txtStandardSizeName").val(), $("#ddlSize").val(), $("#ddlFit").val(), $("#ddlCollar").val(), $("#ddlShirtLength").val(), $("#ddlLongSleeves").val(), $("#ddlShortSleeves").val(), $("#hdnStandardCustom").val())
                                    lookup4($("#txtStandardSizeName").val(), $("#ddlSize").val(), $("#ddlFit").val(), $("#hdnStandardCustom").val(), $("#hdnUserId").val())
                                }
                                else {
                                    //alert(3);
                                    lookup3($("#txtStandardSizeName").val(), $("#ddlCollar").val(), $("#ddlShirtLength").val(), $("#ddlLongSleeves").val(), $("#ddlShortSleeves").val(), $("#hdnStandardCustom").val(), $("#hdnUserId").val(), $("#ddlSize").val(), $("#ddlFit").val())
                                    //alert(5);
                                }
                                lookup7($("#hdnUserId").val());
                                $(this).dialog("close");
                            }
                            else {
                                //alert($("#hdnStandardCustom").val());
                                if ($("#hdnStandardCustom").val() == 1) {
                                    //alert(44);
                                    //lookup3($("#txtStandardSizeName").val(), $("#ddlSize").val(), $("#ddlFit").val(), $("#ddlCollar").val(), $("#ddlShirtLength").val(), $("#ddlLongSleeves").val(), $("#ddlShortSleeves").val(), $("#hdnStandardCustom").val())
                                    lookup4_update($("#txtStandardSizeName").val(), $("#ddlSize").val(), $("#ddlFit").val(), $("#hdnStandardCustom").val(), $("#hidden_usrId").val(), $("#hdnStandardSizeId").val())
                                }
                                else {
                                    //alert($("#hidden_usrId").val());
                                    lookup3Update($("#txtStandardSizeName").val(), $("#ddlSize").val(), $("#ddlFit").val(), $("#ddlCollar").val(), $("#ddlShirtLength").val(), $("#ddlLongSleeves").val(), $("#ddlShortSleeves").val(), $("#hdnStandardCustom").val(), $("#hidden_usrId").val(), $("#hdnStandardSizeId").val())
                                }
                                lookup7($("#hdnUserId").val());

                                $(this).dialog("close");
                            }
                        }
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                    }
                },
                close: function () {
                    allFields.val("").removeClass("ui-state-error");
                }
            });


            $("#btnbodymeasure")
               .button()
               .click(function () {
                   $('#<%= lblMessage.ClientID %>').html('');
                   $('#<%= txtBodyMeasurement.ClientID %>').val('');
                   $('#<%= txtBodyWeight.ClientID %>').val('');
                   $('#<%= txtBodyCollar.ClientID %>').val('');
                   $('#<%= txtBodyChest.ClientID %>').val('');
                   $('#<%= txtBodyShoulder.ClientID %>').val('');
                   $('#<%= txtBodyStomach.ClientID %>').val('');
                   $('#<%= txtBodyHip.ClientID %>').val('');
                   $('#<%= txtBodyShirtLength.ClientID %>').val('');
                   $('#<%= txtBodyLongSleeveLength.ClientID %>').val('');
                   $('#<%= txtBodyShortSleeveLength.ClientID %>').val('');
                   $('#<%= txtBodyArm.ClientID %>').val('');
                   $('#<%= txtBodyWrist.ClientID %>').val('');
                   document.getElementById('hidden_mode').value = "Add";
                   $("#BodyMeasurement").dialog("open");
               });

            $("#btnshrtmeasure")
               .button()
               .click(function () {
                   $('#<%= lblMessage.ClientID %>').html('');
                   $('#<%= txtLength.ClientID %>').val('');
                   $('#<%= txtChest.ClientID %>').val('');
                   $('#<%= txtWaist.ClientID %>').val('');
                   $('#<%= txtHip.ClientID %>').val('');
                   $('#<%= txtSleeves.ClientID %>').val('');
                   $('#<%= txtNeck.ClientID %>').val('');

                   $('#<%= txtShoulder.ClientID %>').val('');
                   $('#<%= txtCuff_Wrist.ClientID %>').val('');
                   $("#dialog-form").dialog("open");
                   document.getElementById('hidden_mode').value = "Add";
               });

            $("#btn_sendshrt")
               .button()
               .click(function () {
                   $('#<%= lblMessage.ClientID %>').html('');

                   $('#<%= txtBlazerLength.ClientID %>').val('');
                   $('#<%= txtBlazerChest.ClientID %>').val('');
                   $('#<%= txtBlazerWaist.ClientID %>').val('');
                   $('#<%= txtBlazerHip.ClientID %>').val('');
                   $('#<%= txtBlazerSleeves.ClientID %>').val('');
                   $('#<%= txtBlazerShoulder.ClientID %>').val('');
                   document.getElementById('hidden_mode').value = "Add";
                   $("#BlazerForm").dialog("open");
               });

            $("#btn_stdsize")
               .button()
               .click(function () {
                   document.getElementById('hidden_mode').value = "Add"
                   //alert($("#hidden_mode").val());
                   $('#<%= lblMessage.ClientID %>').html('');
                   $("#ddlSize").val();
                   $("#ddlFit").val();
                   $("#ddlCollar").val();
                   $("#ddlShirtLength").val();
                   $("#ddlLongSleeves").val();
                   $("#ddlShortSleeves").val();
                   $("#txtStandardSizeName").val();
                   $("#cstmSize").hide();
                   $("#stdSize").show();
                   $("#btnCstmsize").show();
                   $("#hdnStandardCustom").val('1');
                   document.getElementById('hidden_mode').value = "Add";
                   $("#StandardSize").dialog("open");
               });







        });

           function get_dialouge(txtStandardSizeName, ddlCollar, ddlShirtLength, ddlLongSleeves, ddlShortSleeves, hdnStandardCustom, usrId, stndId) {
               //alert('w');
               $('#<%= lblMessage.ClientID %>').html('');
	        document.getElementById('hidden_mode').value = "Update";
	        document.getElementById('hidden_usrId').value = usrId;


	        //document.getElementById('txtStandardSizeName').value =
	        //document.getElementById('ddlCollar').value =
	        //document.getElementById('ddlShirtLength').value =
	        //document.getElementById('ddlLongSleeves').value =
	        //document.getElementById('ddlShortSleeves').value =
	        //document.getElementById('hdnStandardCustom').value =
	        $("#txtStandardSizeName").val(txtStandardSizeName);

	        $("#ddlCollar").val(ddlCollar);
	        $("#ddlShirtLength").val(ddlShirtLength);
	        $("#ddlLongSleeves").val(ddlLongSleeves);
	        $("#ddlShortSleeves").val(ddlShortSleeves);
	        $("#hdnStandardCustom").val(hdnStandardCustom);
	        $("#hidden_mode").val('2');
	        $("#hidden_usrId").val(usrId);
	        $("#cstmSize").show();
	        $("#stdSize").hide();
	        //$("#hdnStandardCustom").val('2');
	        $("#hdnStandardSizeId").val(stndId);
	        $("#StandardSize").dialog("open");
	    }

	    function get_dialouge_standardSize(txtStandardSizeName, ddlSize, ddlFit, hdnStandardCustom, usrId, stndId) {
	        //alert('w');
	        $('#<%= lblMessage.ClientID %>').html('');
	        document.getElementById('hidden_mode').value = "Update";
	        document.getElementById('hidden_usrId').value = usrId;
	        $("#txtStandardSizeName").val(txtStandardSizeName);
	        $("#ddlSize").val(ddlSize);
	        $("#ddlFit").val(ddlFit);
	        $("#hdnStandardCustom").val(hdnStandardCustom);
	        $("#hidden_mode").val('2');
	        $("#hidden_usrId").val(usrId);
	        $("#cstmSize").hide();
	        $("#stdSize").show();
	        $("#hdnStandardSizeId").val(stndId);
	        $("#StandardSize").dialog("open");
	    }

	    function get_dialouge_standardSize_nw(stndId, usrId, txtStandardSizeName, ddlSize, ddlFit, hdnStandardCustom) {
	        //alert('w');
	        $('#<%= lblMessage.ClientID %>').html('');
	        document.getElementById('hidden_mode').value = "Update";
	        document.getElementById('hidden_usrId').value = usrId;
	        $("#txtStandardSizeName").val(txtStandardSizeName);
	        $("#ddlSize").val(ddlSize);
	        $("#ddlFit").val(ddlFit);
	        $("#hdnStandardCustom").val(hdnStandardCustom);
	        $("#hidden_mode").val('1');
	        $("#hidden_usrId").val(usrId);
	        $("#cstmSize").hide();
	        $("#stdSize").show();
	        $("#hdnStandardSizeId").val(stndId);
	        $("#StandardSize").dialog("open");
	    }

	    function get_dialouge_standardSize_customize(stndId, usrId, txtStandardSizeName, ddlSize, ddlFit, hdnStandardCustom, collar, shirtlength, longsleeve, shortsleeve) {
	        //alert('w');
	        $('#<%= lblMessage.ClientID %>').html('');
	        document.getElementById('hidden_mode').value = "Update";
	        document.getElementById('hidden_usrId').value = usrId;
	        $("#txtStandardSizeName").val(txtStandardSizeName);
	        $("#ddlSize").val(ddlSize);
	        $("#ddlFit").val(ddlFit);
	        $("#ddlCollar").val(collar);
	        $("#ddlShirtLength").val(shirtlength);
	        $("#ddlLongSleeves").val(longsleeve);
	        $("#ddlShortSleeves").val(shortsleeve);
	        $("#hdnStandardCustom").val(hdnStandardCustom);
	        $("#hidden_mode").val('2');
	        $("#hidden_usrId").val(usrId);
	        $("#cstmSize").show();
	        $("#stdSize").show();
	        $("#btnCstmsize").hide();
	        //$("#hdnStandardCustom").val('2');
	        $("#hdnStandardSizeId").val(stndId);
	        $("#StandardSize").dialog("open");
	    }




	    function get_dialouge_CustomrMeasurement(ProfileName, Length, Chest, Waist, Hip, Sleeves, Shoulder, Neck, Cuff_Wrist, hdnUserId, stndId) {
	        alert(hdnUserId);
	        $("#txtProfileName").val(ProfileName);
	        $("#txtLength").val(Length);
	        $("#txtChest").val(Chest);
	        $("#txtWaist").val(Waist);
	        $("#txtHip").val(Hip);
	        $("#txtSleeves").val(Sleeves);
	        $("#txtShoulder").val(Shoulder);
	        $("#txtNeck").val(Neck);
	        $("#txtCuff_Wrist").val(Cuff_Wrist);
	        $("#hdnUserId").val(hdnUserId)
	        document.getElementById('hidden_mode').value = "Update";
	        $("#hdnStandardSizeId").val(stndId);
	        $("#dialog-form").dialog("open");
	    }

	    function get_dialouge_BodyMeasurement(ProfileName, Height, Weigh, collar, shoulder, chest, stomach, hip, shirtLength, longsleeves, shortsleeves, Arm, wrist, fit, hdnUserId, stndId) {
	        $("#txtBodyMeasurement").val(ProfileName);
	        //alert(Height);
	        $("#ddlHeight").val(Height.toString().split(".")[0]);
	        $("#ddlHeightInch").val(Height.toString().split(".")[1]);
	        $("#txtBodyWeight").val(Weigh);
	        $("#txtBodyCollar").val(collar);
	        $("#txtBodyShoulder").val(shoulder);
	        $("#txtBodyChest").val(chest);
	        $("#txtBodyStomach").val(stomach);
	        $("#txtBodyHip").val(hip);
	        $("#txtBodyShirtLength").val(shirtLength);
	        $("#txtBodyLongSleeveLength").val(longsleeves);
	        $("#txtBodyShortSleeveLength").val(shortsleeves);
	        $("#txtBodyArm").val(Arm);
	        $("#txtBodyWrist").val(wrist);
	        $("#ddlBodyFit").val(fit);
	        $("#hdnUserId").val(hdnUserId);


	        document.getElementById('hidden_mode').value = "Update";
	        $("#hdnStandardSizeId").val(stndId);
	        $("#BodyMeasurement").dialog("open");
	    }
	</script>
 <%--    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="Scripts/slide.js"></script>--%>
    <!--slider-->
<link rel="stylesheet" type'"text/css" href="Styles/sun.css" />
<!--slider-->
    <title>Cuff & Botton</title>
    <style>
          #background
  {
  width:120%;
  height:130px;
  background:url(images/Black_Texture___Ray_by_Ethenyl.jpg) repeat;
  margin-left:-130px;
  }
        #Besp {color:#878787; font-size:14px; text-decoration:none;font-family:keep calm;}
        #num {color:#878787; font-size:12px; text-decoration:none;font-family:keep calm;}
        #submenu {color:#878787;text-decoration: none;font-weight:bold;font-size:17px;font-family:keep calm;}
        #midheading {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keep calm;}
        #homeforwardimage{color:#3b3b3b; font-size:13px;font-family:keep calm;}
        #midtext{color:#878787; font-size:16px;font-weight:bold;font-family:keep calm;}
        #fab {color:#3b3b3b;text-decoration: none;font-weight:bold;font-size:22px;font-family:keep calm;}
         #White {color:White;text-decoration: none;font-weight:bold;font-size:14px;font-family:keep calm;}
         .one-px
        {
            width:110%; height:3px; 
            background-color:#878787;
            margin-left:-20px;
        }
        .one1-px
        {
            width:1200px; height:2px; 
            background-color:#878787;
            
        }
		.font{font-family:"keep Calm"; color:#878787}
.blck-px
        {
            width:100%; height:3px; 
            background-color:#3b3b3b; margin-top:-4px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
.two-px
        {
            width:100%; height:3px; 
            background-color:#878787; margin-top:-3px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
			}
    </style>
    </head>
<body width="100%">
    <form id="frm_measurement" runat="server" >
        <asp:HiddenField runat="server" ID="hdnUserId" />
         <asp:HiddenField runat="server" ID="hdnStandardSizeId" />
       <div class="demo">
           
    <div id="dialog-form" title="Add shirt Measurement" style="font-family:'Times New Roman';font-size:12pt;font-style:bold">
	    <p class="validateTips">All form fields are required.</p>
        <fieldset>
		    <%--<label for="name">Name</label>--%>
<%--		    <input type="text" name="name" id="name"  />--%>
            <table style="width:100%;" class="style1">
              <tr>
                <td>Profile Name</td>
                <td>
                    <asp:TextBox runat="server" ID="txtProfileName" Width="70%" class="text ui-widget-content ui-corner-all" />                    
                </td>
            </tr>
             <tr>
                <td>Length</td>
                <td>
                    <asp:TextBox runat="server" ID="txtLength" />                    
                </td>
            </tr>
            <tr>
                <td>Chest</td>
                <td>
                    <asp:TextBox runat="server" ID="txtChest" />
                </td>
            </tr>
            <tr>
                <td>Waist</td>
                <td>
                    <asp:TextBox runat="server" ID="txtWaist" />
                </td>
            </tr>
            <tr>
                <td>Hip</td>
                <td>
                    <asp:TextBox runat="server" ID="txtHip" />
                </td>
            </tr>
            <tr>
                <td>Sleeves</td>
                <td>
                    <asp:TextBox runat="server" ID="txtSleeves" />
                </td>
            </tr>
            <tr>
                <td>Shoulder</td>
                <td>
                    <asp:TextBox runat="server" ID="txtShoulder" />
                </td>
            </tr>
            <tr>
                <td>Neck</td>
                <td>
                    <asp:TextBox runat="server" ID="txtNeck" />
                </td>
            </tr>
             <tr>
                <td>Cuff/Wrist</td>
                <td>
                    <asp:TextBox runat="server" ID="txtCuff_Wrist" />
                </td>
            </tr>
            </table>
	    </fieldset>
    </div>




           <div id="BodyMeasurement" title="Add Body Measurement" style="font-family:'Times New Roman';font-size:12pt;">
	    <p class="validateTips">All form fields are required.</p>
        <fieldset>
		    <%--<label for="name">Name</label>--%>
		    <%--<input type="text" name="" id="txtBodyMeasurement"  />--%>
            <table align="center">
                <tr>
                <td>Profile Name</td>
                <td>
                   <asp:TextBox runat="server" ID="txtBodyMeasurement" class="text ui-widget-content ui-corner-all"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Height</td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlHeight">
                         <asp:ListItem Text="Feet" Value=""></asp:ListItem>
                         <asp:ListItem Text="1" Value="1"></asp:ListItem>
                         <asp:ListItem Text="2" Value="2"></asp:ListItem>
                         <asp:ListItem Text="3" Value="3"></asp:ListItem>
                         <asp:ListItem Text="4" Value="4"></asp:ListItem>
                         <asp:ListItem Text="5" Value="5"></asp:ListItem>
                         <asp:ListItem Text="6" Value="6"></asp:ListItem>
                         <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList runat="server" ID="ddlHeightInch">
                         <asp:ListItem Text="Inches" Value=""></asp:ListItem>
                         <asp:ListItem Text="1" Value="1"></asp:ListItem>
                         <asp:ListItem Text="2" Value="2"></asp:ListItem>
                         <asp:ListItem Text="3" Value="3"></asp:ListItem>
                         <asp:ListItem Text="4" Value="4"></asp:ListItem>
                         <asp:ListItem Text="5" Value="5"></asp:ListItem>
                         <asp:ListItem Text="6" Value="6"></asp:ListItem>
                         <asp:ListItem Text="7" Value="7"></asp:ListItem>
                         <asp:ListItem Text="8" Value="8"></asp:ListItem>
                         <asp:ListItem Text="9" Value="9"></asp:ListItem>
                         <asp:ListItem Text="10" Value="10"></asp:ListItem>
                         <asp:ListItem Text="11" Value="11"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Weight</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyWeight" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Collar</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyCollar" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Shoulder</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyShoulder" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Chest*</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyChest" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Stomach</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyStomach" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hip</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyHip" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Shirt Length</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyShirtLength" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Long sleeve length</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyLongSleeveLength" placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Short sleeve length&nbsp;<span style="font-size:9px; " />  (optional)</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyShortSleeveLength"  placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Arm</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyArm"  placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Wrist</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBodyWrist"  placeholder="Inches"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>fit</td>
                <td>
                    <asp:TextBox runat="server" Visible="false" ID="txtBodyFit"></asp:TextBox>
                    <asp:DropDownList runat="Server" ID="ddlBodyFit">
                        
                         <asp:ListItem Text="Regular fit" Value="Regular fit"></asp:ListItem>
                         <asp:ListItem Text="Slim fit" Value="Slim fit"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
                </table>
	    </fieldset>
    </div>

    
       
                     <div id="BlazerForm" title="Add Blazer Measurement" style="font-family:'Times New Roman';font-size:12pt;">
	        <p class="validateTips">All form fields are required.</p>
            <fieldset>
		   <%-- <label for="name">Name</label>
		    <input type="text" name="" id="txtBlazerName"  />--%>
            <table width="100%">
                 <tr>
                <td>Profile Name</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerName" class="text ui-widget-content ui-corner-all" />                    
                </td>
            </tr>
             <tr>
                <td>Length</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerLength" />                    
                </td>
            </tr>
            <tr>
                <td>Chest</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerChest" />
                </td>
            </tr>
            <tr>
                <td>Waist</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerWaist" />
                </td>
            </tr>
            <tr>
                <td>Hip</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerHip" />
                </td>
            </tr>
            <tr>
                <td>Sleeves</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerSleeves" />
                </td>
            </tr>
            <tr>
                <td>Shoulder</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerShoulder" />
                </td>
            </tr>
            <tr>
                <td>Neck (N.T.)</td>
                <td>
                    <asp:TextBox runat="server" ID="txtBlazerNeck" />
                </td>
            </tr>
            </table>
	      </fieldset>
            </div>


           <div id="StandardSize" title="Standard Size" style="font-family:'Times New Roman';font-size:12pt;">
	            <p class="validateTips">All form fields are required.</p>
                <fieldset>
		            <%--<label for="name">Name</label>
		            <input type="text" name="" id="txtStandardSizeName"  />--%>
                    <table width="100%">
                         <tr>
                            <td>Profile Name</td>
                            <td><asp:TextBox runat="server" ID="txtStandardSizeName" class="text ui-widget-content ui-corner-all"></asp:TextBox></td>
                            <asp:HiddenField runat="server" ID="hdnStandardCustom" Value="1" />
                        </tr>
                    </table>
                    <div id="stdSize">
                    <table>
                       
                        <tr>
                            <td>Select size (N.T.)</td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlSize">
                                    <asp:ListItem Text="37(14.75)" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="38(14.75)" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="39(14.75)" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="40(14.75)" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="41(14.75)" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Select fit</td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlFit">
                                    <asp:ListItem Text="Regularfit" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Slimfit" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr><td colspan="2"><input type="button" id="btnCstmsize" value="Customize" /> </td></tr>
                        </table>
                        </div>
                        <div id="cstmSize">
                                    <table>
                                        <tr>
                                            <td>Collar</td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="ddlCollar">
                                                    <asp:ListItem Text="14.75" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="14.75" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="14.75" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="14.75" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Shirt Length</td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="ddlShirtLength">
                                                    <asp:ListItem Text="28" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="30" Value="2"></asp:ListItem>
                                                     <asp:ListItem Text="32" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="34" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Long Sleeves</td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="ddlLongSleeves">
                                                    <asp:ListItem Text="24" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="25" Value="2"></asp:ListItem>
                                                     <asp:ListItem Text="26" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="27" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Short Sleeves</td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="ddlShortSleeves">
                                                    <asp:ListItem Text="24" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="25" Value="2"></asp:ListItem>
                                                     <asp:ListItem Text="26" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="27" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                         <tr><td colspan="2"><input type="button" id="btnStndsize" value="Only Standard Size" /><input type="hidden" value="Add" id="hidden_mode" name="hidden_mode" /><input type="hidden" id="hidden_usrId" name="hidden_usrId" /> </td></tr>
                                    </table>
                               </div>
                    
	            </fieldset>
            </div>



    </div><!-- End demo -->



   <%-- <div class="demo-description">
        <p>Use a modal dialog to require that the user enter data during a multi-step process.  Embed form markup in the content area, set the <code>modal</code> option to true, and specify primary and secondary user actions with the <code>buttons</code> option.</p>
    </div><!-- End demo-description -->--%>

    <table width="1200px" align="center" height="auto">
        <tr>
            <td width="100%" height="30px">
                 
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%">
                    
                    <tr>
                        <td width="10%" align="left" valign="middle">
                            <a href="Default.html">
                                    <img src="images/cuff_button.png" border="0" 
                                style="height: 30px; " /></a>
                        </td>
                        
                                    <td id="Besp" width="24%" align="center" valign="bottom">
                                        BESPOKE TAILORING
                                    </td>
                                    <td id="Besp" width="1%" align="center" valign="bottom">
                                        |
                                    </td>
                                    <td id="Besp" width="16%"  align="center" valign="bottom">
                                        OUR PROMISE
                                    </td>
                                    <td id="Besp" width="1%" align="center" valign="bottom">
                                        |
                                    </td>
                                    <td id="Besp" width="7%"  align="center" valign="bottom">
                                        BLOG
                                    </td>
                                    <td id="Besp" width="1%" align="center" valign="bottom">
                                        |
                                    </td>
                                    <td id="Besp" width="7%"  align="center" valign="bottom">
                                        FAQs
                                    </td>
                                    
                                
                        <td width="6%" align="left">

                        </td>
                        <td id="num" width="12%" align="right" valign="bottom">
                                +91-9999999999
                        </td>
                        <td width="15%" align="center" valign="bottom">
                            <table width="100%">
                                <tr>
                                    <td width="40%" valign="bottom" align="right">
                                        <a href="Default.html">
                                        <img src="images/account.png" border="0" 
                                            style="height: 30px; " /></a>
                                    </td>
                                    <td width="40%" valign="bottom" align="right">
                                        <a href="Default.html">
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
            <td width="100%" valign="top" align="right" height="35px">
                 
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
                 <table style="font-weight:white; height: 43px; width: 1200px;">
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
	   <tr>
		<td>&nbsp; </td>
	   </tr>
		
			
		<tr> 
		    <td  colspan="4" class="font"> 
	 <p  >Click on an existing profile to select, or click "ADD" to add a new profile.</p>
	 </td>
    </tr>
	  <tr>
		<td> <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Bold="true"></asp:Label></td>
	   </tr>
   
		
	<tr>
	  <td colspan="2"  style="font-family:keep calm;color:#3b3b3b">
	   Standard Size	  </td>
	  <td colspan="2" >
	    <table align="right" >
		  <tr>
		    <td style="color:white; font-family:'keep Calm'"><input type="button" id="btn_stdsize" value="Add" /></td>
		  </tr>
		 </table>
	  </td>
	 </tr>
	 <tr>
    <td colspan="4"  >
	   <div class="two-px">              </div>	</td>
  </tr> 
<%--  <tr>
		<td>&nbsp; </td>
	</tr>--%>
    <tr>
<td style="text-align:left;" colspan="4"> <div style="max-height:180px;overflow:scroll;" id="div_cntnt">
    No Record...
 </div></td>
  </tr> 
  <%--<tr>
		<td>&nbsp; </td>
  </tr>--%>
   <tr>
		<td>&nbsp; </td>
	   </tr>
	<tr>
	  <td colspan="2"  style="font-family:keep calm;color:#3b3b3b">
	    Apparel Measurements	  </td>
	  <td colspan="2" >
	    <table  align="right">
		  <tr>
		    <td style="color:white; font-family:'keep Calm'"><input type="button" id="btnshrtmeasure" value="Add" /></td>
		  </tr>
		 </table>
	  </td>
	 </tr>
	 <tr>
    	<td colspan="4">
	   	<div class="two-px">              </div>	</td>
  	</tr>
        <tr>
	 <td style="text-align:left;" colspan="4"> <div style="max-height:180px;overflow:scroll;" id="div_custmr_msrmnt">
    No Record...
 </div></td>
            </tr>
   <tr>
		<td>&nbsp; </td>
	   </tr>
	    <tr>
		<td height="26">&nbsp; </td>
	   </tr>
	<tr>
	  <td colspan="2"  style="font-family:keep calm;color:#3b3b3b">
	  Body Measurement	  </td>
	  <td colspan="2" >
	    <table align="right">
		  <tr>
		    <td style="color:white; font-family:'keep Calm'"><input type="button" id="btnbodymeasure" value="Add" /></td>
		  </tr>
		 </table>
	  </td>
	 </tr>
	 <tr>
    	<td colspan="4">
	   	<div class="two-px">              </div>	</td>
  	</tr> 
	 <tr>
		<td>&nbsp; </td>
	   </tr>
      <tr>
		 <td style="text-align:left;" colspan="4"> <div style="max-height:180px;overflow:scroll;" id="div_bodyMeasureMent">
    No Record...
 </div></td>
	  </tr>
    <tr>
		<td>&nbsp; </td>
	   </tr>
	   <tr>
		<td>&nbsp; </td>
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
                                            <tr>
                                                <td width="100%" align="left">
                                                    <div id="background">
														<table width="1200px" align="center">
														<tr>
															<td width="100%" height="10px">
																
															</td>
														</tr>
														<tr>
															<td width="100%" align="center">
																<table width="100%" align="center">
																	<tr>
																		<td id="White" width="10%">
																			ABOUT US
																		</td>
																		<td id="White" width="12%">
																			OUR POLICIES
																		</td>
																		<td id="White" width="16%">
																			KNOW YOUR FABRIC
																		</td>
																		 <td id="White" width="18%">
																			KNOW YOUR TAILORING
																		</td>
																		<td id="White" width="10%">
																			SAMPLE KIT
																		</td>
																		<td id="White" width="10%">
																			CONTACT US
																		</td>
																		<td width="10%">
																
																		</td>
																		<td width="19%" align="right">
																				<input type="text" id="textbox" placeholder="Enter Shipping No."
																					style="height: 20px; width: 200px;" />
																		</td>
																		<td width="4%" align="right">
																				<img src= images/trck_order.png  height=" 25px;" />                                                                      </td>
                                                                     </tr>
                                        
                                                                 </table>
                                                             </td>
                                                       </tr>
                                                       
                                       <tr>
                                            <td width="100%">
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td width="100%">
                                                <table width="100%">
                                                    <tr>
                                                        <td id="White" width="50%">
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
                                                    </div>
                                                </td>
                                            </tr>
</table>
            </td>
        </tr>          
        
                                           
            </td>
        </tr>

    </table>
       
        </form>
   
</body>
</html>