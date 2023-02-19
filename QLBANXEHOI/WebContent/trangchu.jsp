<%@page import="java.util.ArrayList"%>
<%@page import="bean.trangchubean"%>
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
<title>Trang chủ - Hệ thống bán xe hơi</title>
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
	text-decoration: none;
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

/* Slideshow container */
.slideshow-container {
    width: 100%;
    position: relative;
    margin: auto;
    margin-top: 72px;
    min-height: 744.8px;
    max-height: 744.8px;
    height: 744.8px;
}
/* Ẩn các slider */
.mySlides {
    display: none;
}
/* Định dạng nội dung Caption */
.text {
    color: #f2f2f2;
    font-size: 40px;
    padding: 8px 12px;
    position: absolute;
    bottom: 8px;
    width: 100%;
    text-align: center;
}

    /* định dạng các chấm chuyển đổi các slide */
.dot {
    cursor:pointer;
    height: 13px;
    width: 13px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.8s ease;
}
/* khi được hover, active đổi màu nền */
.active, .dot:hover {
    background-color: #717171;
}

/* Thêm hiệu ứng khi chuyển đổi các slide */
.fade {
    -webkit-animation-name: fade;
    -webkit-animation-duration: 7s;
    animation-name: fade;
    animation-duration: 7s;
}

@-webkit-keyframes fade {
    from {opacity: .4} 
    to {opacity: 1}
}

@keyframes fade {
	from {opacity: .4} 
	to {opacity: 1}
}


h3{
	margin-left: 7%;
	font-family: Mulish;
    font-weight: 300;
    font-style: normal;
    font-size: 30px;
}



.thongtinxe{
	text-decoration: none;
	color: #363636;
	font-size: 20px;
}

.thongtinxe:hover{
	color: #5b93f7;
}

.chitietxe{
	margin-bottom: 0px;
}

.thongtinxe2{
	text-decoration: none;
	color: #363636;
	font-size: 20px;
	width: 610px;
	
}

.thongtinxe4{
	text-decoration: none;
	color: #363636;
	font-size: 20px;
	width: 850px;
	text-align: center;
}

.thongtinxe2:hover{
	color: #5b93f7;
}

.thongtinxe3{
	text-decoration: none;
	color: #363636;
	font-size: 20px;
	/* width: 610px; */
}

.thongtinxe3:hover{
	color: #5b93f7;
}

.chitietxe2{
	margin-bottom: 0px;
	width: 610px;
}

hr{
	
	margin-left: 7%;
	margin-right: 7%;
}

 .content {
   height: 200px;
   width: 400px;
   margin-right: 35px;
   margin-bottom: 20px;
   overflow: hidden;
 }
 .zoomin img {
   height: 200px;
   width: 400px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 .zoomin img:hover {
     transform: scale(1.1);
 }
 
  .content2 {
   height: 360px;
   width: 610px;
   /* margin-right: 0px; */ 
   margin-bottom: 20px;
   overflow: hidden;
 }
 .zoomin2 img {
   height: 360px;
   width: 610px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 
.content3 {
   height: 600px;
   width: 850px;
   margin-right: 35px;
   margin-bottom: 20px;
   overflow: hidden;
 }
 .zoomin3 img {
   height: 600px;
   width: 850px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 .zoomin3 img:hover {
     transform: scale(1.1);
 }

.content4 {
   height: 132px;
   width: 185px;
  /*  margin-right: 35px; */
  /*  margin-bottom: 20px; */
   overflow: hidden;
 }
 .zoomin4 img {
   height: 132px;
   width: 185px;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -ms-transition: all 0.5s ease;
   transition: all 0.5s ease;
 }
 .zoomin4 img:hover {
     transform: scale(1.1);
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
		<%
		if (session.getAttribute("DangNhap") == null) {
		%>
		<div class="left">
			<a href="trangchu"><img
				style="margin-top: 6px; margin-right: 30px;" class="logo"
				src="gara2.png"></a>
		</div>
		<div class="left2">
			<a class="nut" href="trangchu"><span style="color: #5b93f7">Trang chủ</span></a> 
			<a onclick="openPopup()" class="nut" href="#"><span>Mua sắm</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Giỏ hàng</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Thanh toán</span></a>
			<a onclick="openPopup()" class="nut" href="#"><span>Lịch sử</span></a>
		</div>
		<div style="top:26px;" class="right">
			<a class="nut2" href="login">Đăng nhập</a> 
			<a class="nut2" href="register">Đăng ký</a>
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
			<a class="nut" href="trangchu"><span style="color: #5b93f7">Trang chủ</span></a> 
			<a class="nut" href="user"><span>Mua sắm</span></a>
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
	<div>
		<div class="slideshow-container">

			<div class="mySlides fade">
				<img class="back" src="background/b1.png">
				<div class="text">HONDA CIVIC</div>
			</div>

			<div class="mySlides fade">
				<img class="back" src="background/b2.png">
				<div class="text">TOYOTA COROLLA ATLIS</div>
			</div>

			<div class="mySlides fade">
				<img class="back" src="background/b3.png">
				<div class="text">MITSUBISHI LANCER</div>
			</div>
			
			<div class="mySlides fade">
				<img class="back" src="background/b4.png">
				<div class="text">SUBARU IMPREZA</div>
			</div>
			
			<div class="mySlides fade">
				<img class="back" src="background/b5.png">
				<div class="text">LANDROVER DISCOVERY</div>
			</div>
		</div>

		<div style="text-align: center; visibility: hidden;">
			<span class="dot" onclick="currentSlide(0)"></span>
			<span class="dot"onclick="currentSlide(1)"></span> 
			<span class="dot"onclick="currentSlide(2)"></span>
			<span class="dot"onclick="currentSlide(3)"></span>
			<span class="dot"onclick="currentSlide(4)"></span>
		</div>
	</div>
	
	
	<div class="body">
		<h3>Xe nổi bật</h3>
		<div style="display: flex;">
			<div style="margin-left: 7%;"></div>
			<%
			if(request.getAttribute("dsxenoibat")!=null){
				ArrayList<trangchubean> dsxenoibat = (ArrayList<trangchubean>) request.getAttribute("dsxenoibat");
				for(trangchubean nb : dsxenoibat){
			%>
			 <div>
			 	<div class="zoomin content">
			 		<a href=""><img src="<%=nb.getAnh()%>"></a>
			 	</div>
				<div style="width: 400px;" class="thongtin">
					<a class="thongtinxe" href=""><%=nb.getTenxe() %></a>
					<p class="chitietxe">Hãng xe: <%=nb.getTenhangxe() %></p>
					<p class="chitietxe">Giá xe: <%=nb.getGia() %></p>
				</div>
			</div>
			<%
				}}
			%>
		</div>
		<hr style="margin-top: 50px;">
		<h3>Xe mới nhất</h3>
		<div style="display: flex;">
			<div style="margin-left: 7%;"></div>
			<%
			if(request.getAttribute("dsxemoinhat")!=null){
				ArrayList<trangchubean> dsxemoinhat = (ArrayList<trangchubean>) request.getAttribute("dsxemoinhat");
				for(trangchubean mn : dsxemoinhat){
			%>
			<div style="width: 610px;background-color: #f8f8f8;">
			 	<div class="zoomin2 content2">
			 		<a href=""><img src="<%=mn.getAnh()%>"></a>
			 	</div>
			 	<div style="text-align: center;">
			 		<img style="border-radius: 50%; width: 70px;height: 70px;margin-top: -55px;" src="<%=mn.anhhangxe%>"> 
			 	</div>
				<div style="width: 630px;text-align: center;" class="thongtin2">
					<a class="thongtinxe2" href=""><%=mn.getTenxe() %></a>
					<p class="chitietxe2">Hãng xe: <%=mn.getTenhangxe() %></p>
					<p class="chitietxe2">Giá xe: <%=mn.getGia() %></p>
					<p class="chitietxe2">Ngày phát hành: <%=mn.getNgaynhap() %></p>
				</div>
			</div>
			<div style="width: 54px;"></div>
			<%
			}}
			%>
		</div>
		<hr style="margin-top: 50px;">
		<h3>Xe giảm giá</h3>
		<div style="display: flex;">
			<div style="margin-left: 7%;"></div>
			<%
			int i=1;
			if(request.getAttribute("dsxerenhat")!=null){
				ArrayList<trangchubean> dsxerenhat = (ArrayList<trangchubean>) request.getAttribute("dsxerenhat");
				for(trangchubean rn : dsxerenhat){	
					if(i==1){
					i++;
			%>
			<div style="width: 850px;">
			 	<div class="zoomin3 content3">
			 		<a href=""><img src="<%=rn.anh%>"></a>
			 	</div>
				<div style="display: grid;width: 850px;text-align: center;" class="thongtin2">
					<a class="thongtinxe4" href=""><%=rn.tenxe %></a>
					<p style="width: 850px;" class="chitietxe2">Giá xe: <%=rn.gia %></p>
					<p style="width: 850px;" class="chitietxe2">Hãng xe: <%=rn.tenhangxe %></p>
				</div>
			</div>
			<div style="width: 54px;"></div>
			<div>
			<%
			}else{
			%>
			
			<div>
				<div class="zoomin4 content4">
			 		<a href=""><img src="<%=rn.anh%>"></a>
			 	</div>
			 	<div style="width: 150px;margin-left: 200px;margin-top: -90px;">
			 		<a class="thongtinxe3" href=""><%=rn.tenxe %></a>
			 		<p style="width: 73px;" class="chitietxe4" >Giá: <%=rn.gia %></p>
			 	</div>
				<hr style="margin-left: 0px;width: 373px;margin-top: 45px;">
			</div>
			<%}}} %>
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
	//khai báo biến slideIndex đại diện cho slide hiện tại
	var slideIndex;
	// KHai bào hàm hiển thị slide
	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}

		slides[slideIndex].style.display = "block";
		dots[slideIndex].className += " active";
		//chuyển đến slide tiếp theo
		slideIndex++;
		//nếu đang ở slide cuối cùng thì chuyển về slide đầu
		if (slideIndex > slides.length - 1) {
			slideIndex = 0
		}
		//tự động chuyển đổi slide sau 5s
		setTimeout(showSlides, 7000);
	}
	//mặc định hiển thị slide đầu tiên 
	showSlides(slideIndex = 0);

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}
	
	
	
	
	
	// kéo xuống khoảng cách 500px thì xuất hiện nút Top-up
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