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
<title>ADMIN</title>
</head>
<style>
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

* {
	box-sizing: border-box
}

body {
background-color: #222222;
	margin: 0px;
	font-family: Times New Roman;
}

.formdangnhap{
	background-color: #222222;
}

.form2{
	position: fixed;
	background-color: #e3e3e3;
	width: 800px;
    height: 500px;
    top: 100px;
    left: 350px;
}

.us{
	width: 380px;
    position: relative;
    top: -210px;
    left: 400px;
	height: 40px;
} 


.ps{
	position: relative;
    top: -180px;
    left: 400px;
    width: 380px;
    height: 40px;
}

.dn{
	height: 40px;
    position: relative;
    width: 720px;
    left: 35px;
    top: -45px;
    background-color: #00c6d5;
    color: #ffffff;
    border: 0px;
    font-size: 24px;
}

.dn:hover{
	background-color: #ffffff;
	color: #00c6d5;
}
</style>
<body>
	
	
	
	
	<div class="formdangnhap">
		<div class="form2">
			<p style="font-weight: bold;text-align: center;color: #769858;font-size: 30px;margin-top: 25px;">ĐĂNG NHẬP HỆ THỐNG QUẢN LÝ BÁN XE HƠI</p>
			<img style="margin-left: 60px;width: 250px;height: 300px;" src="AD.png">
			<div>
				<form action="ktdnadmin" method="post">
					<div class="us">
						<i style="margin-right: -5px;border: 0.5px solid black;padding-top: 11px;padding-bottom: 11px;padding-right: 15px;padding-left: 15px;" class="fa fa-user" aria-hidden="true"></i>
						<input name="txtunad" value="" required="required" style="padding: 10px;height: 40px;width: 310px;" class="" type="text" placeholder="Tên Đăng Nhập">
						
					</div>
					<div class="ps">
						<i style="margin-right: -5px;border: 0.5px solid black;padding-top: 11px;padding-bottom: 12px;padding-right: 12px;padding-left: 13px;" class="fa fa-key" aria-hidden="true"></i>
						<input name="txtpassad" value="" required="required" style="padding: 10px;height: 40px;width: 310px;" class="" type="password" placeholder="Mật Khẩu">
					</div>
					
					<button class="dn">Đăng nhập</button>
				</form>
			</div>
			
		</div>
		
		
	</div>
	
	
	</body>

</html>