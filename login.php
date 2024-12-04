<?php include('header.php'); ?>
<?php include('db_connect.php'); ?>
<?php 
session_start();
if(isset($_SESSION['login_id']))
header("location:index.php?page=home");

?>
<!DOCTYPE html>
<!-- saved from url=(0075)https://temp.account-alphadatapros.com/Login?ReturnUrl=%2fAdmin%2fDashboard -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>WIP AlphaDataPros</title><meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"><link rel="shortcut icon" type="image/x-icon" href="https://temp.account-alphadatapros.com/Content/img/1stProcessLogo.jpg"><link rel="stylesheet" type="text/css" href="./1st Process_files/auth.css"><link rel="stylesheet" type="text/css" href="./1st Process_files/semantic.min.css"><link rel="stylesheet" href="./1st Process_files/icon.css"><link rel="stylesheet" href="./1st Process_files/flag.min.css">

    <script src="./1st Process_files/jquery-3.2.1.min.js"></script>
    <script src="./1st Process_files/semantic.min.js"></script>
    <script src="./1st Process_files/jquery.mask.js"></script>
    <script src="./1st Process_files/auth.js"></script>
    <script src="./1st Process_files/common.js"></script>

    <style>
        body
        {
            background-image:url('../../Content/img/large-login-bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>

</head>
<body cz-shortcut-listen="true">
	<style>
	.footer
	{
		position:fixed;
		bottom:0;
		background: rgba(204, 204, 204, 0.8);
		text-align: center;
		left: 0;
  		width: 100%;
  		padding: 0.5ex;
  		font-weight: bold;
	}
	</style>
		<form name="login-form" method="post" id="login-form">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTExMzQ1MTgxZGS2kxEw0gDNd4wb1xYc6a7E2PCvB/oKMS8Op2+sUEeiIA==">
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2D4BD54E">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAaBgEBPc+098M2/Ap7OQHXiGAYGC+2NqjcLsoC6PBGOPXjjswiyhm+g6KodwobC/fOwS4xnW8ZIVB06X7opsHDkWdnK8oBYn1/v4BomT2WQGakI4jpM78tpJNqhUiJG6T13GUjy3VptRlGgJgtrAyl1DWbczlB2lUFgp+vInIrefw==">
</div>
	        

    <style>
        .ui.segment.custom-top-border {
            background-color:#2C5063; 
            border-top-left-radius:2em !important; 
            border-top-right-radius:2em !important; 
            padding:1ex;
            height:2ex;
        }
        .ui.segment.custom-top-border-classic {
            border-top-left-radius:1em !important; 
            border-top-right-radius:1em !important; 
        }
        .ui.segment.custom-bottom-border {
            border-bottom-left-radius:1em !important; 
            border-bottom-right-radius:1em !important; 
        }
        .ui.segment.custom-opacity {
            background: rgb(204, 204, 204); /* Fallback for older browsers without RGBA-support */
            background: rgba(204, 204, 204, 0.8);
        }
        .custom-border {
            border-radius: 2em!important;
            background-color: rgb(225,229,230)!important;

            -webkit-box-shadow: 0 10px 6px -6px #777!important;
            -moz-box-shadow: 0 10px 6px -6px #777!important;
            box-shadow: 0 10px 6px -6px #777!important;
        }
        .align-left {
            text-align:left;
        }
        .margin-top-1 {
            margin-top: 1em!important;
        }
        .margin-top-1pt5 {
            margin-top: 1.5em!important;
        }
        .button-rounded-corner{
            border-radius: 2em!important;
        }
        .custom-hyperlink-color{
            color:rgb(44,81,99)!important;
        }

        .custom-margin-top {
            margin-top:10em;
        }


        @media only screen and (max-width: 600px) and (orientation: portrait) {
            .custom-margin-top {
                /*margin-top:5em!important;*/
                margin-top:10%;
            }
        }

        @media only screen and (max-height: 600px) and (orientation: landscape) {
            .custom-margin-top {
                margin-top:10%;
            }
        }
    </style>

    <div class="ui middle aligned center aligned grid container">
        <div class="sixteen wide mobile thirteen wide tablet five wide computer column">
            <div class="ui large form custom-margin-top">
                <div class="ui segments" style="border:none;">
                    <div class="ui segment custom-top-border"></div>
                    <div class="ui segment custom-opacity custom-bottom-border" style="padding:2em;">
                        <img src="./1st Process_files/1stprocessLogo.png" style="width:25%;margin-top:1em;margin-bottom:2em;">
                        <p style="text-align:left;margin-bottom:1em;">
                            <strong>WELCOME</strong> <br>
                            <small>Please login to continue</small>
                        </p>
                        <div class="field">
                            <div class="ui left icon input">
                                <i class="user icon"></i>
                                <input name="username" type="text" id="username" class="custom-border" placeholder="Username">
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input name="password" type="password" id="password" class="custom-border" placeholder="Password">
                            </div>
                        </div>
                        <input type="submit" name="ctl00$ContentPlaceHolder1$btnLogin" value="Login" onclick="DisplayLoading(&#39;&#39;);" id="ctl00_ContentPlaceHolder1_btnLogin" class="ui fluid button Login button-rounded-corner">
                        <a id="ctl00_ContentPlaceHolder1_aForgotPassword" class="custom-hyperlink-color" href="https://temp.account-alphadatapros.com/Authentication/ForgotCredentials.aspx"><small>Forgot Password</small></a>
                        <div class="margin-top-1">
                            <small>
                            <p>
                                New here? Create your account as <br>
                                <a href="https://temp.account-alphadatapros.com/Application/CreateCustomerAccount" class="custom-hyperlink-color">Personal</a> | <a href="https://temp.account-alphadatapros.com/Application/CreateMerchantAccount" class="custom-hyperlink-color">Business</a> | <a href="https://temp.account-alphadatapros.com/Application/ResellerSignUp.aspx" class="custom-hyperlink-color">Agent</a> <br>
                                Need Support? Call us 877-664-7646
                            </p>
                            </small>
                        </div>
                    </div>
                </div>
                <div class="ui segment custom-opacity custom-top-border-classic custom-bottom-border">
                    <div class="ui one column centered grid">
                        <div class="column">
                            <div style="text-align:center;"><a href="https://temp.account-alphadatapros.com/Application/Disclaimer.aspx" target="_blank" class="custom-hyperlink-color">Disclaimer</a></div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


	        <div id="mdlSystemMessage" class="mini ui modal">
	            <i class="close icon"></i>
	            <div class="header">
	                System Message
	            </div>
	            <div class="content">
	                test
	            </div>
	            <div class="actions">
	                <input type="submit" name="ctl00$btnCloseModal" value="OK" id="ctl00_btnCloseModal" class="ui positive button">
	            </div>
	        </div>

	        <div id="mdlErrorMessage" class="mini ui modal">
	            <i class="close icon"></i>
	            <div class="header">
	                Error Message
	            </div>
	            <div class="content">
	                test
	            </div>
	            <div class="actions">
	                <input type="submit" name="ctl00$btnClose" value="OK" id="ctl00_btnClose" class="ui negative deny button">
	            </div>
	        </div>

	    </form>
	    <div class="footer">
	    	© All rights reserved
	    	<br>
	    	2685 South Rainbow, Blvd Ste 100 Las Vegas Nevada 89146 USA
	    </div>
    <div id="loading" class="ui dimmer">
        <div id="loadingText" class="ui text loader">Validating...</div>
    </div>
    


</body>

<script>
    $('#login-form').submit(function(e){
        alert('test');
        e.preventDefault()
        
        $('#login-form').prepend('<div id="info" class="alert alert-info">Logging in ... please wait</div>');
        if($(this).find('.alert-danger').length > 0 )
            $(this).find('.alert-danger').remove();
        
            $.ajax({
                url:'ajax.php?action=login',
              method:'POST',
              data:$(this).serialize(),
              error:err=>{
                console.log(err)
              $('#login-form button[type="button"]').removeAttr('disabled').html('Login');

              },
              success:function(resp){
                  console.log(resp);
                  if(resp == 1){
                    
                      location.href ='home.php';
                  }
                  else if(resp == 3){
                    $('#info').remove();    
                      $('#login-form').prepend('<div class="alert alert-danger">User Locked Out.</div>');
                      $('#login-form button[type="button"]').removeAttr('disabled').html('Login');
                                              
                  }
                  else{
                      $('#info').remove();  
                      $('#login-form').prepend('<div class="alert alert-danger">Invalid User Credentials!</div>');
                      $('#login-form button[type="button"]').removeAttr('disabled').html('Login');
                    
                  }
              }
          })
    })
</script>   

</html>
