<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link type="image/png" sizes="16x16" rel="icon" href="logo.png">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Đăng nhập/Đăng ký tài khoản</title>
</head>
<style>
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

* {
	box-sizing: border-box
}

body {
	margin: 0px;
	font-family: Times New Roman;
}

.header {
	position: fixed;
	top: 0px;
	width: 100%;
	height: 72px;
	background-color: #ffffff;
	justify-content: space-between;
	display: flex;
	z-index: 1000;
	box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
}

.back {
	width: 100%;
	padding-top: 850px;
	padding: 0px;
	height: 744.8px;
}

.logo {
	width: 150px;
	height: 65px;
	padding: 10px 0px 10px 0px;
}

.nut {
	text-decoration: none;
	color: #313443;
	font-size: 18px;
	font-weight: 500;
	margin-right: 20px;
	padding: 10px 10px 10px 10px;
}

.nut:hover {
	background-color: #ededed;
	border-radius: 5px;
	text-decoration: none;
	
}

.nut2 {
	text-decoration: none;
	color: #313443;
	font-size: 16px;
	font-weight: 500;
	margin-right: 30px;
}

.nut2:hover {
	color: #5b93f7;
}

.nut3 {
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
	padding: 10px;
	border-radius: 5px;
	background-color: #1464f4;
	color: #ffffff;
}

.nut3:hover {
	color: #363636;
	background-color: #ededed;
	text-decoration: none;
	
}

.left {
	position: fixed;
	left: 7%;
}

.left2 {
	position: fixed;
	top: 26px;
	left: 300px;
}

.right {
	position: fixed;
	right: 7%;
	top: 26px;
}

 .footer{
 	width: 100%;
 	height: 200px;
 	background-color: #e9ecf0;
 	display: flex;
 	border-top: 1px solid red;
 }
 
 .leftfoot{
 	left: 90px;
    position: relative;
    margin-top: 55px;
 }
 
 .bodyfoot{
 	position: relative;
    margin-top: 40px;
    left: 400px;
    font-size: 20px;
    font-weight: 500;
    color: #1F2125;
 }
 
 .rightfoot{
 	position: relative;
 	font-size: 20px;
    font-weight: 500;
    color: #1F2125;
    margin-top: 50px;
    left: 780px;
 }
 
 .fblink:hover{
 	text-decoration: none;
 }
 
#top-up {
	font-size: 3rem;
	cursor: pointer;
	position: fixed;
	z-index: 9999;
	color:#004993;
	bottom: 20px;
	right: 15px;
	display: none;
}
#top-up:hover {
	color: #333
}


.logincontent{
	font-size: 18px;
    font-family: Mulish;
    font-weight: bold;
    line-height: normal;
    color: #312F49;
    margin-top: 40px;
}
.body{
	background-color: #ffffff;
	text-align: center;
    width: 800px;
    position: absolute;
    left: 25%;
    height: 770px;
    right: 25%;
    top: 10%;
    border: 1px solid #ededed;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

hr {
    border: none;
    height: 2px;
    /* Set the hr color */
    color: #3779c9; /* old IE */
    background-color: #3779c9; /* Modern Browsers */
}
.box{
	margin-top: 50px;
}
.input{
	width: 640px;
	margin-bottom: 20px;
	padding: 6px 12px 6px 12px;
	height: 40px;
    border: 1.5px solid #E5E5E5;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border-radius: 5px;
    font-family: Mulish;
    font-size: 12px;
}

.checkbox{
	position: absolute;
    left: 80px;
    top:610px;
}

.linkforgot{
	position: absolute;
    right: 80px;
}

a:hover{
	text-decoration: none;
}

.loginbut{
	width: -webkit-fill-available;
    margin-top: 50px;
    font-family: Mulish;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 12px;
    border-radius: 5px;
    height: 40px;
    background-color: #3779c9;
    border: 0px;
    color: #ffffff;
}

.loginbut:hover{
	color: #3779c9;
	background-color: #ffffff;
	border: 0.5px solid #3779c9;
}

.loginlink{
	position: relative;
    top: 60px;
    left: 50px;
}

.container{
	width: 100px;
	height: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	
}

.popup{
	box-shadow: 10px 10px 10px #AAA;
	height: 400px;
	width: 400px;
	background-color: #f5f7fb;
	border-radius: 6px;
	position: fixed;
	top: 320px;
	left: 650px;
	text-align: center;
	visibility: hidden;
	border: 2px solid black;
	transform: translate(-50%,-50%) scale(0.1);
	transition: transform 0.4s, top 0.4s;
}

.open-popup{
	visibility: visible;
	transform: translate(-50%,-50%) scale(1);
	margin-left: 115px;
} 

.but2:hover{
	color:#EE2C37;
}

.but2{
	background-color: #f5f7fb;
	border: 0px;
	margin-left: 350px;
}

 .but3{
 	padding: 10px 10px 10px 10px;
 	color : #1465f4;
 	
 }
 
 .but3:hover{
 	background-color: #1464f4;
 	text-decoration: none;
 	border-radius:5px;
 	color: #ffffff;
 }
</style>
<body>
	<div class="header">
		<div class="left">
			<a href="trangchu"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara2.png"></a>
		</div>
		<div class="left2">
			<a class="nut" href="trangchu"><span style="">Trang chủ</span></a> 
			<%
			if (session.getAttribute("DangNhap") == null) {
			%>
			<a onclick="openPopup()" class="nut" href="#"><span>Mua sắm</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Giỏ hàng</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Thanh toán</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Lịch sử</span></a>
			<%
			}else{
			%>
			<a class="nut" href=""><span>Mua sắm</span></a>
			<%
			}
			%>
		</div>
		<div class="right">
			<a style="margin-right: 10px;" class="nut2" href="login">Đăng nhập</a> <a class="nut3" href="register">Đăng
				ký</a>

		</div>
	</div>
	
	
	<div class="body">
		<div class="box">
			<img style="width: 180px; height: 50px;" src="gara2.png">
			<p class="logincontent">Đăng ký / Register</p>
			<hr style="color: #3779c9;width: 640px">
		</div>
		<form style="display: inline-grid;" action="registeruser" method="post">
			<input class="input" type="text" required="required" name="usernamedk" placeholder="Nhập tên đăng nhập / Username">
			<input class="input" type="password" required="required" name="passworddk" placeholder="Nhập mật khẩu / Password">
			<input class="input" type="password" required="required" name="passworddk2" placeholder="Nhập lại mật khẩu / Password aggain">
			<input class="input" type="text"  name="namedk" placeholder="Nhập họ tên / Name">
			<input class="input" type="text"  name="addressdk" placeholder="Nhập địa chỉ / Address">
			<input class="input" type="text"  name="phonedk" placeholder="Nhập só điện thoại / Phone">
			<input class="input" type="text"  name="emaildk" placeholder="Nhập email / Email">
			<div class="checkbox">
				<input type="checkbox" required="required">
				<span>Tôi đồng ý với điều khoản người dùng</span>
			</div>
			<div>
				<button class="loginbut">ĐĂNG KÝ / REGISTER</button>
			</div>
		</form>
		<div style="margin-top: -90px;">
			
			<div>
				<p style="position: relative;top: 100px;left: -80px;">Bạn đã có tài khoản?</p>
				<a class="loginlink" href="login">Đăng nhập ngay</a>
			</div>
		</div>
		
	</div>
	
	
	<div class="container">
		<div class="popup" id="popup">
	                	<button class="but2" style="" onclick="closePopup()" type="button"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
	                    <h1>Bạn phải đăng nhập trước</h1>
	                    <img style="width: 180px;" src="canhbao.png">
	                    <div style="margin-top: 30px;">
	                    	<a class="but3" style="margin-right: 40px;" onclick="closePopup()" href="#">Hủy</a>
	                  	    <a class="but3" href="login">Đăng nhập</a>
	                    </div>
	                    
	            </div>
	</div>
	
	
	
	
</body>
<script>

//kéo xuống khoảng cách 500px thì xuất hiện nút Top-up
var offset = 500;
// thời gian di trượt 0.75s ( 1000 = 1s )
var duration = 750;
$(function(){
$(window).scroll(function () {
if ($(this).scrollTop() > offset)
$('#top-up').fadeIn(duration);else
$('#top-up').fadeOut(duration);
});
$('#top-up').click(function () {
$('body,html').animate({scrollTop: 0}, duration);
});
});

let popup = document.getElementById("popup");

function openPopup(){
	popup.classList.add("open-popup");
}

function closePopup(){
	popup.classList.remove("open-popup");
}

</script>
</html>