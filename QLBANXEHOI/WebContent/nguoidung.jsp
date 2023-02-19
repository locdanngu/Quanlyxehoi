<%@page import="bean.xebean"%>
<%@page import="bo.xebo"%>
<%@page import="bean.hangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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
}

.input{
	margin-bottom: 20px;
	height: 40px;
	margin-right: 20px;
	padding: 6px 12px 6px 12px;
	box-sizing: border-box;
    border-radius: 5px;
    font-family: Mulish;
    font-size: 12px;
    border: 1.5px solid #E5E5E5;
}

.input2{
	margin-bottom: 20px;
	height: 40px;
	margin-right: 20px;
	padding: 6px 12px 6px 12px;
	border-radius: 0px;
    
    font-family: Mulish;
    font-size: 12px;
    border: 1.5px solid #E5E5E5;
}

.but3{
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
	padding: 0px 10px 3.5px 10px;
	border-radius: 5px;
	background-color: #ffffff;
	color: #1464f4;
	
}

.but3:hover{
	color: #363636;
	background-color: #ededed;
	text-decoration: none;
}

.form{
	display: flex;
    width: 100%;
    justify-content: center;
    height: 40px;
    margin-bottom: 15px;
}

.list{
	margin-top: 40px;
	display: flex;
    flex-wrap: wrap;
}


.khoi{
	margin-left: 39px;
    width: 240px;
    height: 260px;
    margin-top: 40px;
    background-color: #f8f8f8;
    margin-right: 39px;
    box-shadow: rgba(6, 24, 44, 0.4) 0px 0px 0px 2px, rgba(6, 24, 44, 0.65) 0px 4px 6px -1px, rgba(255, 255, 255, 0.08) 0px 1px 0px inset;
}

.content4 {
   height: 160px;
   width: 240px;
  /*  margin-right: 35px; */
  /*  margin-bottom: 20px; */
   overflow: hidden;
 }
 .zoomin4 img {
   height: 160px;
   width: 240px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 .zoomin4 img:hover {
     transform: scale(1.1);
 }


.buybut{
	margin-top: 15px;
	border: 1px solid #363636;
	
}

.buybut:hover{
	text-decoration: none;
	background-color: #1464f4;
	color:#ffffff;
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

.fa.fa-angle-left{
	color: #363636;
}

.fa.fa-angle-left:hover{
	color: #ffffff;
}

.fa.fa-angle-right{
	color: #363636;
}
.fa.fa-angle-right:hover{
	color: #ffffff;
}


.paginum{
	color: #363636;
}

.paginum:hover{
	text-decoration: none;
	color: #ffffff;
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
		<div class="form">
			<form  action="user" method="post">
				<div>
					<span>Hãng xe: </span>
					<select class="input2" name="tenhangxe">
						<option value="null">Không</option>
						<%
						if(request.getAttribute("dshang")!=null){
							ArrayList<hangbean> dshang = (ArrayList<hangbean>) request.getAttribute("dshang");
							for(hangbean h : dshang){
						%>
						<option value="<%=h.getTenhangxe()%>"><%=h.getTenhangxe() %></option>
						<%
						}}
						%>
					</select>
					<button style="margin-right: 20px;height: 40px;" class="but3"><i class="fa fa-search" aria-hidden="true"></i></button>
				</div>
				
			</form>
			<form action="user" method="post">
				<input class="input" type="text" name="GTTK" placeholder="Nhập tên xe muốn tìm">
				<button style="height: 40px;" class="but3"><i class="fa fa-search" aria-hidden="true"></i></button>
			</form>
			
		</div>
		<a style="margin-top: 10px" href="user" class="but3">Đặt lại</a>
		
		
		<div class="list">
			
			<%
			if(request.getAttribute("dsxe")!=null){
				ArrayList<xebean> dsxe = (ArrayList<xebean>) request.getAttribute("dsxe");
				for(xebean x: dsxe){
			%>
			<div class="khoi" >
				<div class="zoomin4 content4">
			 		<a href="in4xe?tenxe=<%=x.getTenxe()%>&maxe=<%=x.getMaxe()%>&anh=<%=x.getAnh()%>&tenhangxe=<%=x.getTenhangxe()%>&anhhangxe=<%=x.getAnhhangxe()%>&gia=<%=x.getGia()%>&soluong=<%=x.getSoluong()%>&ngaynhap=<%=x.getNgaynhap()%>"><img src="<%=x.getAnh()%>"></a>
			 	</div>
				<div style="margin-top: 10px;display: grid;">
					<span><%=x.getTenxe() %></span>
					<%-- <span><%=x.getMaxe() %></span> --%>
					<span>Giá :<%=x.getGia() %></span>
					<a class="buybut" href="giohang?hd=add&mx=<%=x.getMaxe()%>&tx=<%=x.getTenxe()%>&gia=<%=x.getGia()%>&anh=<%=x.getAnh()%>">Đặt mua</a>
				</div>
			</div>
			
			<%
			}}
			%>
		</div>
		
		<div class="pagination-container">
			<ul class="pagination">
				<%
				if(session.getAttribute("tenhangxe")!=null && session.getAttribute("GTTK")==null){
				%>
				<c:forEach begin="1" end="${endPage }" var="i">
					<li class="pagi" ><a class="paginum" href="user?page=${i }&tenhangxe=<%=session.getAttribute("tenhangxe")%>">${i }</a></li>
				</c:forEach>
				<%}else if(session.getAttribute("tenhangxe")==null && session.getAttribute("GTTK")==null){ %>
				<c:forEach begin="1" end="${endPage }" var="i">
					<li class="pagi" ><a class="paginum" href="user?page=${i }">${i }</a></li>
				</c:forEach>
				<%}else if(session.getAttribute("tenhangxe")==null && session.getAttribute("GTTK")!=null){ %>
				<c:forEach begin="1" end="${endPage }" var="i">
					<li class="pagi" ><a class="paginum" href="user?page=${i }&GTTK=<%=session.getAttribute("GTTK")%>">${i }</a></li>
				</c:forEach>
				<%} %>
			</ul>
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
			<a class="fblink" href="https://www.facebook.com/tranvanloc2001/"><i class="fa fa-facebook-square" aria-hidden="true"></i> facebook</a>
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