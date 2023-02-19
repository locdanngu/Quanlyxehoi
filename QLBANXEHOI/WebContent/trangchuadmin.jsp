<%@page import="bean.xebean"%>
<%@page import="bean.hangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bo.xebo"%>
<%@page import="bo.hangbo"%>
<%@page import="dao.xedao"%>
<%@page import="dao.hangdao"%>
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
<title>Trang chủ ADMIN</title>
</head>
<style>
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

* {
	box-sizing: border-box
}

body {
	margin: 0px;
	font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
}

.header {
	position: fixed;
	top: 0px;
	width: 100%;
	height: 72px;
	background-color: #222222;
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
	border: 0.5px solid #ffffff;
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

.body{
	height: 715px;
    background-color: #454d55;
	
}

.cn{
	color: #ffffff;
	
}

.tb{
	width: 300px;
	height: 200px;
	border-radius: 10px;
	
	margin-right: 70px;
}

.nd{
	font-size: 30px;
    padding: 35px;
    color: #ffffff;
}


.badge{
	padding: 1px 4px;
	position: relative;
    top: -10px;
}

h1{
	font-family: inherit;
    font-weight: 500;
    line-height: 1.2;
    color: inherit;
}

.headbody{
	margin-left: 7%;
}

.hv{
	width: 90px;
    height: 90px;
    padding: 25px;
    border-radius: 20px;
}

.khoi{
	margin-right: 30px;
	border-radius: 10px;
    background-color: #343a40;
    width: 300px;
    height: 110px;
    display: flex;
    padding: 10px;
}

.con{
	font-weight: bold;
    font-size: 25px;
    color: #ffffff;
}

.footbody{
	background-color: #343a40;
    margin-left: 7%;
    width: 1289px;
    margin-top: 45px;
    height: 370px;
    padding: 20px;
    border-radius: 15px;
}
</style>
<body>
	<div class="header">
		<%
		if (session.getAttribute("DangNhapAD") == null) {
		%>
		<div class="left">
			<a href="trangchuadmin"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara3.png"></a>
		</div>
		<div class="left2">
			<a style="border-bottom: 3px solid #ffffff;" class="nut" href="trangchuadmin"><span class="cn">Trang chủ</span></a> 
			<a onclick="openPopup()" class="nut" href="#"><span class="cn">Xe</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span class="cn">Hãng xe</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span class="cn">Xác nhận đơn</span></a>
		</div>
		<div style="margin-top: 14px;" class="right">
			<a class="nut2" href="loginAD">Đăng nhập</a> 
		</div>
		<%
		}else{
		%>
		<div class="left">
			<a href="trangchuadmin"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara3.png"></a>
		</div>
		<div class="left2">
			<a style="border-bottom: 3px solid #ffffff;" class="nut" href="trangchuadmin"><span class="cn">Trang chủ</span></a> 
			<a class="nut" href="qlxe"><span class="cn">Xe</span></a>
			<a class="nut" href="qlhangxe"><span class="cn">Hãng xe</span></a>
			<a class="nut" href="qldon"><span class="cn">Xác nhận đơn</span><span class="badge bg-danger"><%=session.getAttribute("xn") %></span></a>
		</div>
		<div class="right">
			<div class="dropdown">
				<button type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border: 0px;" class="nut3"><%=session.getAttribute("DangNhapAD") %> <i class="fa fa-user-circle-o" aria-hidden="true"></i></button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			    	<a class="dropdown-item" href="logout2AD">Đăng xuất</a>
				</div>
			</div>
		</div>
	    <%
	    }
		%>
	</div>
	<div class="body">
		<div class="headbody">
			<div style="height: 90px"></div>
			<h1 style="color: #ffffff;">Thống kê</h1>
			<div style="display: flex;">
				<div class="khoi">
					<div style="background-color: #28a745" class="hv">
						<i style="font-size: 35px;color: #ffffff;" class="fa fa-car" aria-hidden="true"></i>					
					</div>
					<div style="margin-left: 20px;">
						<p class="con">Tổng Xe</p>
						<p class="con"><%=session.getAttribute("ccar") %></p>
					</div>
				</div>
				
				<div class="khoi">
					<div style="background-color: #17a2b8" class="hv">
						<i style="padding-left: 5px;font-size: 35px;color: #ffffff;" class="fa fa-building" aria-hidden="true"></i>					
					</div>
					<div style="margin-left: 20px;">
						<p class="con">Tổng Hãng xe</p>
						<p class="con"><%=session.getAttribute("chang") %></p>
					</div>
				</div>
				
				<div class="khoi">
					<div style="background-color: #ffc107" class="hv">
						<i style="font-size: 35px;color: #ffffff;padding-left: 3px;" class="fa fa-bars" aria-hidden="true"></i>					
					</div>
					<div style="margin-left: 20px;">
						<p class="con">Số đơn</p>
						<p class="con"><%=session.getAttribute("xn") %></p>
					</div>
				</div>
				
				
				<div class="khoi">
					<div style="background-color: #dc3545" class="hv">
						<i style="font-size: 35px;color: #ffffff;padding-left: 4px" class="fa fa-times-circle" aria-hidden="true"></i>					
					</div>
					<div style="margin-left: 20px;">
						<p class="con">Từ chối</p>
						<p class="con"><%=session.getAttribute("kxn") %></p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footbody">
			<p style="font-size: 30px;color: #ffffff">Doanh thu: <%=session.getAttribute("dt") %> $</p>
			<p style="font-size: 30px;color: #ffffff">...</p>
		</div>
	</div>
	
	
	
	
	
	<div title="Về đầu trang" id="top-up"><i class="fas fa-arrow-circle-up"></i></div>
	
	<div class="container">
		<div class="popup" id="popup">
	                	<button class="but2" style="" onclick="closePopup()" type="button"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
	                    <h1>Bạn phải đăng nhập trước</h1>
	                    <img style="width: 180px;" src="canhbao.png">
	                    <div style="margin-top: 30px;">
	                    	<a class="but3" style="margin-right: 40px;" onclick="closePopup()" href="#">Hủy</a>
	                  	    <a class="but3" href="loginAD">Đăng nhập</a>
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