<%@page import="bean.chitiethdbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.thanhtoanbean"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
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
<title>Chi tiết hóa đơn</title>
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
	min-height:545px;
	margin-top: 75px;
	text-align: center;
	
    background-color: #f5f5f5;
    width: 100%;
}

tr{
	border-radius: 2px;
}

td,th{
	border: 0.5px solid #363636;
	background-color: #ffffff;
}

.bang{
	/* margin-top: 40px; */
    width: 1274px;
    margin-left: 7%;
    margin-right: 7%;
}

a:hover{
	text-decoration: none;
}

.nutback{
	padding: 10px;
	color: #ffffff;
	background-color: #1464F4;
	border-radius: 5px; 
}

.nutback:hover{
	color: #363636;
	background-color: #ffffff;
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
			<a onclick="openPopup()" class="nut" href="#"><span>Mua sắm</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Giỏ hàng</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span style="color: #5b93f7">Thanh toán</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Lịch sử</span></a>
		</div>
		<div class="right">
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
			<a class="nut" href="user"><span>Mua sắm</span></a>
			<a class="nut" href="htgio"><span>Giỏ hàng</span></a>
			<a class="nut" href="listthanhtoan?DangNhap=<%=session.getAttribute("DangNhap")%>"><span style="color: #5b93f7">Thanh toán</span></a>
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
		<div style="height: 15px;"></div>
		<a class="nutback" href="listthanhtoan?DangNhap=<%=session.getAttribute("DangNhap")%>">Quay lại</a>
		<p style="font-weight: bold;font-size: 30px;margin-bottom: -5px;">Dưới đây là các sản phẩm của đơn hàng có mã hóa đơn</p>
		<p style="font-size:40px ;font-weight: 1000;color: red;"><%=session.getAttribute("mahoadon") %></p>
				
				
				
			
		
		<div style="height: 30px;"></div>
		<div>
			
			<table class="bang">
			<tr>
				<th>STT</th>
				<th>Mã chi tiết</th>
				<th>Mã xe</th>
				<th style="width: 170px;">Sản phẩm</th>
				<th>Tên xe</th>
				<th>Tên hãng xe</th>
				<th>Số lượng</th>
				<th>Giá</th>
				<th>Thành tiền</th>
			</tr>
			
			<%
			int i=1;
			if(request.getAttribute("dschitiethd")!=null){
				ArrayList<chitiethdbean> dschitiethd = (ArrayList<chitiethdbean>) request.getAttribute("dschitiethd");
				for(chitiethdbean ct: dschitiethd){
			%>
			<tr>
				<td><%=i %></td>
				<td style="color: #ff0000;font-weight: bold;"><%=ct.machitiethd %></td>
				<td><%=ct.maxe %></td>
				<td>
					<img style="width: 170px; height: 100px;" src="<%=ct.anh%>">
				</td>
				<td><%=ct.tenxe %></td>
				<td><%=ct.tenhangxe %></td>
				<td><%=ct.soluongmua %></td>
				<td><%=ct.gia %></td>
				<td style="color: #ff0000;"><%=ct.thanhtien %></td>
				
			</tr>
			<%
			i=i+1;
			}}
			%>
		</table>
		</div>
	</div>
	
	
	
	
	
	
	
	<div style="height: 50px;background-color: #F5F5F5;"></div>
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