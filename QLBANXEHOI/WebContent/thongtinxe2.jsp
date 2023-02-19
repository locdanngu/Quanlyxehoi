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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Trang chủ người dùng</title>
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
	text-decoration:none;
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
	top: 12px;
}

 .footer{
 	width: 100%;
 	height: 200px;
 	background-color: #e9ecf0;
 	display: flex;
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

.body{
	min-height:545px;
	margin-top: 120px;
	text-align: center;
	margin-left: 7%;
    /* justify-content: center; */
    /* left: 10%; */
    margin-right: 7%;
    max-width: 1274px;
    width: 1274px;
    background-color: #ffffff;
}

.tit{
	color: #1f2125;
    font-size: 35px;
    font-weight: 300;
    line-height: 50px;
    letter-spacing: .08em;
    text-transform: uppercase;
    margin-bottom: 20px;
}

.tit1{
	font-size: 24px;
    line-height: 30px;
    color: #1f2125;
    font-weight: 600;
}
.tit2{
	color: #fff;
    font-weight: 700;
    font-size: 16px;
    height: 45px;
    text-align: center;
    background: #1464f4;
    border-radius: 25px;
    line-height: 45px;
    width: 270px;
    font-size: 1rem;
    font-weight: 400;
    margin: 20px 0px 10px 0px;
}

.leftbody{
	margin-left: 45px;
    margin-top: 50px;
	
}

.but99{
	font-size: 16px;
	font-weight: 500;
	padding: 10px;
	border-radius: 5px;
	background-color: #1464f4;
	color: #ffffff;
	margin-right: 15px;
}

.but99:hover{
	color: #363636;
	background-color: #ededed;
	text-decoration: none;
}

.content4 {
   height: 500px;
   width: 850px;
  /*  margin-right: 35px; */
  /*  margin-bottom: 20px; */
   overflow: hidden;
 }
 .zoomin4 img {
   height: 500px;
   width: 850px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 .zoomin4 img:hover {
     transform: scale(1.4);
 }

</style>
<body>
	<div class="header">
		<%
		if (session.getAttribute("DangNhap") == null) {
		%>
		<div class="left">
			<a href="trangchu"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara2.png"></a>
		</div>
		<div class="left2">
			<a class="nut" href="trangchu"><span>Trang chủ</span></a> 
			<a onclick="openPopup()" class="nut" href="#"><span style="color: #5b93f7">Mua sắm</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Giỏ hàng</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Thanh toán</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Lịch sử</span></a>
		</div>
		<div style="top:26px;" class="right">
			<a class="nut"><i class="fa fa-search" aria-hidden="true"></i></a>
			<a class="nut2" href="login">Đăng nhập</a> 
			<a class="nut3" href="register">Đăng ký</a>
		</div>
		<%
		}else{
		%>
		<div class="left">
			<a href="trangchu"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara2.png"></a>
		</div>
		<div class="left2">
			<a class="nut" href="trangchu"><span>Trang chủ</span></a> 
			<a class="nut" href="user"><span style="color: #5b93f7">Mua sắm</span></a>
			<a class="nut" href="htgio"><span>Giỏ hàng</span></a>
			<a class="nut" href="listthanhtoan?DangNhap=<%=session.getAttribute("DangNhap")%>"><span>Thanh toán</span></a>
			<a class="nut" href="lichsu?DangNhap=<%=session.getAttribute("DangNhap")%>"><span>Lịch sử</span></a>
		</div>
		<div class="right">
			<div class="dropdown">
				<button type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border: 0px;" class="nut3"><%=session.getAttribute("DangNhap") %> <i class="fa fa-user-circle-o" aria-hidden="true"></i></button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			    	<a class="dropdown-item" href="#">Thông tin</a>
			    	<a class="dropdown-item" href="logout2">Đăng xuất</a>
				</div>
			</div>
		</div>
	    <%
	    }
		%>
	</div>
	
	
	<div class="body">
		<p class="tit">Thông số kỹ thuật của xe: <span style="color: #EE2C37;"><%=session.getAttribute("tenxe") %></span></p>
		<div style="display: flex;justify-content: space-between;">
			<div class="leftbody">
				<p class="tit1">Mã số xe: <span style="color: #EE2C37;"><%=session.getAttribute("maxe") %></span></p>
				<div>
					<p class="tit1"><span style="color: #EE2C37;"><%=session.getAttribute("tenhangxe") %></span> </p>
					<img style="width: 40px;height: 40px;border-radius: 50%;" src="<%=session.getAttribute("anhhangxe")%>">
				</div>
				<p class="tit2">Giá: <%=session.getAttribute("gia") %></p>
				<p class="tit1">Ngày nhập: <span style="color: #EE2C37;"><%=session.getAttribute("ngaynhap") %></span></p>
				<p class="tit1">Hiện tại: <span style="color: #EE2C37;"><%=session.getAttribute("soluong") %></span> có sẵn</p>
				<div style="margin-top: 75px;">
					<a class="but99" href="user"><i class="fa fa-arrow-left" aria-hidden="true"></i> Mặt hàng khác</a>
					<a class="but99" href="giohang?hd=add&mx=<%=session.getAttribute("maxe")%>&tx=<%=session.getAttribute("tenxe")%>&gia=<%=session.getAttribute("gia")%>&anh=<%=session.getAttribute("anh")%>"><i class="fa fa-cart-plus" aria-hidden="true"></i> Thêm vào giỏ</a>
				</div>
			</div>
			<div class="zoomin4 content4">
				<img style="width: 850px;height: 500px;" src="<%=session.getAttribute("anh")%>">
			</div>
		</div>
	</div>
	
	
	
	
	<div style="height: 50px;"></div>
	<div class="footer">
		<div>
			<div class="leftfoot">
				<img style="width: 80px;height: 80px;" src="logo2.png">
				<p style="font-weight: bold;color: #ee2c37;margin-left: -17px;">LỘC STORAGE</p>
			</div>
		</div>
		<div class="bodyfoot">
			<p>Đề tài quản lý buôn bán xe hơi</p>
			<p>Người thực hiện: Trần Văn Lộc</p>
			<p>Thời gian bắt đầu: 16/12/2022</p>
		</div>
		<div class="rightfoot">
			<p>Thông tin liên hệ</p>
			<p><i class="fa fa-phone" aria-hidden="true"></i> 0977481545</p>
			<a class="fblink" href=""><i class="fa fa-facebook-square" aria-hidden="true"></i> facebook</a>
		</div>
	</div>
	
	<div title="Về đầu trang" id="top-up"><i class="fas fa-arrow-circle-up"></i></div>
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

</script>
</html>