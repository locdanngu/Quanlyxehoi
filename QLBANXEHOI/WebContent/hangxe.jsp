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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Quản lý hãng xe</title>
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
	
    margin-top: 72px;
   	background-color: #454d56;
   	width: 100%;
   	height: 100%;
	
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

.find{
	justify-content: center;
    display: flex;
    margin-top: 20px;
}

.but3:hover{
	background-color: #ffffff;
}

.bang{
	margin-top: 30px;
    width: 84%;
    margin-left: 7%;
    text-align: center;
}

a:hover{
	text-decoration: none;
	color: #ffffff;
}

.pagination-container{
	margin-top: 60px;
    margin-left: 0px;
    justify-content: center;
    display: flex;
}	

.pagi{
	border: 0.1px solid #20b2ff;
	width: 36px; 
	height: 36px;
	padding-top:5px;
	text-align: center;
	margin-right: 10px;
	border-radius: 50%;
	/* color: #363636; */
	background-color: white;
}

.pagi:hover{
	/* border: 0.1px solid #363636; */
	background-color: #20b2ff;
	
}

th{
	background-color: #222222;
	color: #ffffff;
}


.paginum{
	color: #363636;
}

.paginum:hover{
	text-decoration: none;
	color: #ffffff;
}

.container3{
	width: 100px;
	height: 0;
	display: flex;
	align-items: center;
	justify-content: center;
}

.popup3{
	box-shadow: 10px 10px 10px #AAA;
	height: 500px;
	width: 400px;
	background-color: #f5f7fb;
	border-radius: 6px;
	position: absolute;
	top: 375px;
	left: 620px;
	text-align: center;
	visibility: hidden; 
	border: 2px solid black;
	transform: translate(-50%,-50%) scale(0.1); 
	transition: transform 0.4s, top 0.4s;
}

.open-popup3{
	visibility: visible;
	transform: translate(-50%,-50%) scale(1);
	margin-left: 115px;
}

.linkadd:hover{
	border-bottom: 1px solid #ffffff;
}

.input-box{
	margin-top: 20px;
    border-radius: 5px;
    width: 280px;
    height: 40px;
    padding-left: 10px;
}

.dep{
	border-radius: 2px;
}

.dep:hover{
	background-color: #ffffff;
	
}

td{
	border: 0.5px solid #ffffff;
	color: #ffffff;
}


.badge{
	padding: 1px 4px;
	position: relative;
    top: -10px;
}

#file-input {
    display: none;
}

.preview {
    position:fixed;    
    align-items: center;
    justify-content: center;
    flex-direction: column;
    width: 100%;
    max-width: 300px;
    margin: 0px;
    
    
}

.img99{
    width: 100%;
    object-fit: cover;
    margin-bottom: 20px;
}

label {
    font-weight: 600;
    cursor: pointer;
    color: #fff;
    border-radius: 8px;
    padding: 10px 20px;
    background-color: rgb(101, 101, 255);
}
</style>
<body>
	<div class="header">
		<%
		if (session.getAttribute("DangNhapAD") == null) {
		%>
		<div class="left">
			<a href="trangchu"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara3.png"></a>
		</div>
		<div class="left2">
			<a  class="nut" href="trangchu"><span class="cn">Trang chủ</span></a> 
			<a style="border-bottom: 3px solid #ffffff;" onclick="openPopup()" class="nut" href="#"><span class="cn">Xe</span></a>
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
			<a class="nut" href="trangchuadmin"><span class="cn">Trang chủ</span></a> 
			<a  class="nut" href="qlxe"><span class="cn">Xe</span></a>
			<a style="border-bottom: 3px solid #ffffff;" class="nut" href="qlhangxe"><span class="cn">Hãng xe</span></a>
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
		<div style="height: 30px;"></div>
		
		<a class="linkadd" onclick="openPopup3()" style="margin-left: 48%;" href="#">Thêm hãng xe</a>
		<table class="bang">
			<tr>
				<th>Mã hãng xe</th>
				<th style="width: 165px;">Ảnh hãng xe</th>
				<th>Tên hãng xe</th>
				<th>Thao tác</th>
			</tr>
			<!-- <tr style="height: 15px;"></tr>
 -->			<%
			if(request.getAttribute("dshang")!=null){
			ArrayList<hangbean> dshang = (ArrayList<hangbean>) request.getAttribute("dshang");
			for(hangbean h : dshang){
			%>
		<!-- 	<tr style="height: 15px;"></tr> -->
			<tr>
				<td><%=h.getMahangxe() %></td>
				<td><img style="width: 40px;height: 40px;border-radius: 50% " src="<%=h.getAnhhangxe() %>"></td>
				<td><%=h.getTenhangxe() %></td>
				<td>
					<a style="margin-right: 10px;" href="thongtinhangxe?mhx=<%=h.getMahangxe()%>&ahx=<%=h.getAnhhangxe()%>&thx=<%=h.getTenhangxe()%>">Sửa</a> | 
					<a style="margin-left: 10px;" href="deletehangxe?mhx=<%=h.getMahangxe()%>">Xóa</a>
				</td>
			</tr>
			
			<%}} %>
		</table>
		
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
	
	<div class="container3">
		<div class="popup3" id="popup3">
			<form action="addhangxe" method="post">
				<button class="dep" style="border: 0px;margin-left: 350px;" onclick="closePopup3()" type="button"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
				<h1>Thêm một hãng xe</h1>
				<input style="margin-top: 30px;" class="input-box" type="text" name="addtenhangxe" required="required" value="" placeholder="Nhập tên hãng xe">

				<div style="display: grid;margin-left: 50px;margin-top: 30px;" class="preview">
					<img style="width: 250px;" class="img99" id="img-preview" src="./img.jpg"/>  
					<label for="file-input">Chọn ảnh xe</label>
					<input style="margin-bottom: 20px;" required="required" class="input-box" type="file" name="addfile" value="" id="file-input">
			    </div>
				<div style="">
					<button class="dep" style="margin-top: 270px;" type="submit" value="submit">Thêm hãng xe</button>
				</div>
			</form>
		</div>
	</div>
	
	
</body>
<script>

const input = document.getElementById('file-input');
const image = document.getElementById('img-preview');

input.addEventListener('change', (e) => {
    if (e.target.files.length) {
        const src = URL.createObjectURL(e.target.files[0]);
        image.src = src;
    }
});	



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

let popup3 = document.getElementById("popup3");

function openPopup3(){
	popup3.classList.add("open-popup3");
}

function closePopup3(){
	popup3.classList.remove("open-popup3");
}
</script>
</html>