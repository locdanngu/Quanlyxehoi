<%@page import="bean.xebean"%>
<%@page import="bean.hangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Chỉnh sửa xe</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
	@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

.navbar-icon-top .navbar-nav .nav-link > .fa {
  position: relative;
  width: 36px;
  font-size: 21px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  font-size: 0.75rem;
  position: absolute;
  right: 0;
  font-family: sans-serif;
}

.navbar-icon-top .navbar-nav .nav-link > .fa {
  top: 3px;
  line-height: 12px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  top: -10px;
}

@media (min-width: 576px) {
  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 768px) {
  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 992px) {
  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 1200px) {
  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa {
    display: block;
    width: 80px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}


table, th, td {  
    border: 1px solid black;
    border-collapse: collapse;
}

.butt{
	height:200px;
	text-decoration: none;
	border: 1px solid black;
	background-color: #333;
	color: white;
}

.butt:hover{
	text-decoration: none;
	background-color: #d41d21;
	color: white;
}

.listhead{
	height:30px;
	color:red;
	background-color:#EDEDED;
	text-align:center ;
	min-width: 200px;
	font-weight: bold;
}


.list-items {
	display: block;
	width: 100%;
	height: 40px;
	padding: 0px 20px 0px 10px;
	border: 1px solid #ccc;
	color: #000;
}

.list-items:hover {
	text-decoration: none;
	background-color: #55595c;
	color: #fff;
	font-weight: 600;
}

.list {
	display: flex;
	flex-wrap: wrap;
	flex: 0 0 60%;
	max-width: 100%;
	/*Lock lại */
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: 0.5rem;
	overflow-x: hidden;
	overflow-y: auto;
}

.ctn {
	text-align: center;
	padding: 20px;
	margin: 5px auto;
}

.ctn:hover {
	background-color: #d3d3d3;
}
.ctn .img{
    overflow: hidden;
	border-radius: 5px ;
}
.sach-img {
	width: 240px;
	height: 140px;
	border-radius: 10px;
}
.ctn:hover{
    transform: scale(1.1);
}

#butt1{
	color: black;
	border:0px;
	border-radius: 10px;
	padding-top:3px;
	height: 20px;
	width: 120px;
}


#butt1:hover{
	padding-top:3px;
	height: 20px;
	width: 120px;
	background-color: black;
	color: white;
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
	position: absolute;
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


.input-box{
	border-radius: 10px;
	padding-left: 10px;
    width: 300px;
    height: 45px;
    
}

.input-box2{
	border-radius: 10px;
	padding-left: 10px;
    width: 300px;
    height: 45px;
    margin-bottom: 10px;
}

#but0{
	border-radius: 10px;
}



.but2:hover{
	background-color: #f5f7fb;
	
}

.container2{
	width: 100px;
	height: 0;
	display: flex;
	align-items: center;
	justify-content: center;
}

.popup2{
	box-shadow: 10px 10px 10px #AAA;
	height: 600px;
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

.open-popup2{
	visibility: visible;
	transform: translate(-50%,-50%) scale(1);
	margin-left: 115px;
}

.input-box9{
	width: 0px;
	height: 0px;
	visibility: hidden;
}

.nut{
	background-color:  #343a40;
	color:white;
}

.nut:hover{
	background-color: white;
	color: black;
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

.anhhangxe{
	border-radius:10px;
	width: 16px;
	height: 16px;
	margin-top: -3px;
}


</style>
<body>
    <%
	if (session.getAttribute("DangNhapAD") == null) {
	%>
	<nav style="height:44px" class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
		<a href="trangchuadmincontroller">
			<img style="border-radius: 10px;width:120px ;height: 38px;" alt="" src="Admin.png">
		</a>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="trangchuadmincontroller">
		          <i style="margin-bottom: -6px;" class="fa fa-home"></i>
		          Trang chủ
		          <span class="sr-only">(current)</span>
		          </a>
		      </li>
		      <li class="nav-item">
		        <a onclick="openPopup()" class="nav-link" href="#">
		          <i style="margin-bottom: -4px;" class="fa fa-car"></i>
		          Xe
		          <span class="badge badge-danger"></span>
		          
		        
		        </a>
		      </li>
		      <li class="nav-item">
		        <a onclick="openPopup()" class="nav-link" href="#">
		          <i style="margin-bottom: -5px;" class="fa fa-list"></i>
		          Hãng xe
		            <span class="badge badge-warning"></span>
		    
		        </a>
		      </li>
		      <li class="nav-item">
		        <a onclick="openPopup()" class="nav-link" href="#">
		          <i style="margin-bottom: -6px;" class="fa fa-chevron-circle-down"></i>
		          Xác nhận đơn
		            <span class="badge badge-primary"></span>
		         
		        </a>
		      </li>
		      <li style="margin-top:16px">
		      	<form class="form-inline my-2 my-lg-0" action="htxecontroller" method="get">
			      <input style="margin-left:20px; width:300px " name="gttk" class="form-control mr-sm-2" type="text" placeholder="Nhập xe bạn muốn tìm" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Tìm kiếm">Tìm kiếm</button>
			    </form>
		      </li>
		    </ul>
		    <ul class="navbar-nav ">
		      <!-- <li class="nav-item">
		        <a onclick="openPopup2()" class="nav-link" href="#">
		          <i style="margin-bottom: -4px;" class="fa fa-user-plus"></i>
		          Đăng ký
		        </a>
		      </li> -->
		      <li class="nav-item">
		        <a onclick="openPopup()" class="nav-link" href="#">
		          <i style="margin-bottom: -4px;" class="fa fa-sign-in"></i>
		          Đăng nhập
		        </a>
		      </li>
		    </ul>	    
		  </div>
	</nav>
	<%
	} else {
	%>
	<nav style="height:44px" class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
		<a href="trangchuadmincontroller">
			<img style="border-radius: 10px;width:120px ;height: 38px;" alt="" src="Admin.png">
		</a>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="trangchuadmincontroller">
		          <i style="margin-bottom: -6px;" class="fa fa-home"></i>
		          Trang chủ
		          <span class="sr-only">(current)</span>
		          </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="themxecontroller">
		          <i style="margin-bottom: -4px;" class="fa fa-car"></i>
		          Xe
		          <span class="badge badge-danger"></span>
		          
		        
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="chonhangdexoacontroller">
		          <i style="margin-bottom: -5px;" class="fa fa-list"></i>
		          Hãng xe
		            <span class="badge badge-warning"></span>
		    
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="xacnhancontroller">
		          <i style="margin-bottom: -6px;" class="fa fa-chevron-circle-down"></i>
		          Xác nhận đơn
		            <span class="badge badge-primary"></span>
		         
		        </a>
		      </li>
		      <li style="margin-top:16px">
		      	<form class="form-inline my-2 my-lg-0" action="trangchuadmincontroller" method="get">
			      <input style="margin-left:20px; width:300px " name="gttk" class="form-control mr-sm-2" type="text" placeholder="Nhập xe bạn muốn tìm" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Tìm kiếm">Tìm kiếm</button>
			    </form>
		      </li>
		    </ul>
		    <ul class="navbar-nav ">
		      <li class="nav-item">
		        <a class="nav-link" href="logoutadmin">
		          <i style="margin-bottom: -4px;" class="fa fa-sign-out"></i>
		          Logout
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">
		          <i style="margin-bottom: -4px;" class="fa fa-user-circle-o"></i>
		          <%=session.getAttribute("DangNhapAD")%>
		        </a>
		      </li>
		    </ul>
		    
		    
		  </div>
	</nav>
	<%
	}
	%> 
	<div  style="display: flex;">
		<table style="height: 670px;"  >
			<tr>
				<td class="listhead" ><i style="font-weight: bold;" class="fa fa-list" > CÁC LOẠI HÃNG XE</i>
					<%
					if(request.getAttribute("dshang")!=null){
						ArrayList<hangbean> dshang = (ArrayList<hangbean>) request.getAttribute("dshang");
						for(hangbean h : dshang){
					%>
						<a style="padding-top: 7px;" href="trangchuadmincontroller?mh=<%=h.getMahangxe()%>" class="list-items"><img class="anhhangxe" src="<%=h.getAnhhangxe()%>"> <%=h.getTenhangxe() %> </a>
					<%
						}}
					%>
				</td>
				<td>
				<div style="margin-left: 180px;margin-top: -120px;">
					<h1>Xe hiện tại</h1>
					<p>Mã xe: <%=session.getAttribute("maxe") %></p>
	                <p>Tên xe: <%=session.getAttribute("tenxe") %></p>
	                <p>Số lượng: <%=session.getAttribute("soluongtk") %></p>
	                <p>Giá cơ bản: <%=session.getAttribute("gia") %></p>
	                <p>Tên hãng xe: <%=session.getAttribute("tenhangxe") %></p>
	                <p>Ngày nhập: <%=session.getAttribute("ngaynhap") %></p>
	                <img style="width: 150px; height: 100px;" src="<%=session.getAttribute("anh")%>">
				</div>
				
				
				<form style="margin-right: 267px;margin-left: 610px;margin-top: -407px;" action="tdxecontroller" method="post">
	                    <h1 style="width: 381px;margin-left: 34px;margin-top: -130px;">Chỉnh sửa xe</h1>
	                    <p style="margin-bottom: -25px;">Mã xe: <%=session.getAttribute("maxe") %></p>
	                    <div>
	                        <input style="margin-top: 10px; margin-bottom: 20px;" class="input-box9" type="text" name="addmaxe" value="<%=session.getAttribute("maxe") %>" placeholder="Mã xe">
	                    </div>
	                    <div>
	                        <input style="margin-top: 10px; margin-bottom: 20px;" class="input-box" type="text" name="addtenxe" value="" required="required" placeholder="Nhập tên xe mới">
	                    </div>
	                    <div>   
	                        <input style="margin-bottom: 20px;" class="input-box" type="text" name="addsoluong" value="" required="required" placeholder="Nhập số lượng mới">
	                    </div>
	                    <div>   
	                        <input style="margin-bottom: 20px;" class="input-box" type="text" name="addgia" value="" required="required" placeholder="Nhập giá mới">
	                    </div>
	                    <div style="margin-bottom: 20px; ">   
	                       <!--  <input style="margin-bottom: 20px;" class="input-box" type="text" name="addsoluong" value="" required="required" placeholder="Nhập tên hãng"> -->
	                   	    <select name="addmahangxe" style="height: 40px;width: 300px;border-radius: 10px;text-align: center; ">
	                   	    	<%
	                   	    	if(request.getAttribute("dshang")!=null){
	        						ArrayList<hangbean> dshang = (ArrayList<hangbean>) request.getAttribute("dshang");
	        						for(hangbean h : dshang){
	                   	    	%>
								<option value="<%=h.getMahangxe()%>"><%=h.getTenhangxe() %></option>
								<%
									}}
								%>
							</select>
	                    </div>
	                    <div style="top: 235px;left: 1150px;" class="preview">
	                    	<img class="img99" id="img-preview" src="./img.jpg"/>  
	                    	<label for="file-input">Upload Image</label>
	                        <input style="margin-bottom: 20px;" class="input-box" type="file" name="addfile" value="" id="file-input">
	                    </div>
	                    <div>   
	                        <input style="margin-bottom: 20px;" class="input-box" type="date" name="addsoluong" value="" required="required" placeholder="Nhập ngày">
	                    </div>
	                    <div class="nut99" style="display: inline;">
	                        <button style="height: 35px;margin-top: 10px;color:white ;background-color:  #343a40;" id="but0" type="submit" value="ADDXE">Thay đổi</button>
	                    </div>
	                    
	               
	            </form> 
				</td>
				
			</tr>	
		</table>
		
	<div class="container">
		<div class="popup" id="popup">
	                <form action="ktdnadmin" method="post">
	                	<button class="but2" style="border: 0px;margin-left: 350px;" onclick="closePopup()" type="button"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
	                    <h1>Đăng nhập Admin</h1>
	                    <div>
	                        <input style="margin-top: 50px; margin-bottom: 30px;" class="input-box" type="text" name="txtunad" value="" required="required" placeholder="Tên đăng nhập">
	                    </div>
	                    <div>   
	                        <input class="input-box" type="password" name="txtpassad" value="" required="required" placeholder="Nhập mật khẩu">
	                    </div>
	                    <div style="display: inline;">
	                        <button style="height: 35px;margin-top: 60px;" id="but0" type="submit" value="Login">Đăng nhập</button>
	                    </div>
	                    
	               
	                </form>
	            </div>
	</div>
	<div class="container2">
		<div class="popup2" id="popup2">
	                <form action="ktdk" method="post">
	                	<button class="but2" style="border: 0px;margin-left: 350px;" onclick="closePopup2()" type="button"><i class="fa fa-times-circle" aria-hidden="true"></i></button>
	                    <h1>Đăng ký tài khoản</h1>
	                    <div>   
	                        <input class="input-box2" type="text" required="required"  name="name" value="" placeholder="Họ và tên">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="text" name="undk" value="" required="required" placeholder="Nhập tên đăng nhập">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="password" name="passdk" value="" required="required" placeholder="Nhập mật khẩu">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="password" name="pass2dk" value="" required="required" placeholder="Nhập lại mật khẩu">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="text" name="address" required="required"  value="" placeholder="Nhập địa chỉ">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="text" name="phone" required="required"  value="" placeholder="Nhập số điện thoại">
	                    </div>
	                    <div>   
	                        <input class="input-box2" type="text" name="email" required="required"  value="" placeholder="Nhập email">
	                    </div>
	                    <input required="required" type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  						<label style="margin-top: 20px;" for="vehicle1"> Tôi đồng ý với Điều khoản người dùng</label><br>
	                    <div style="display: inline;">
	                        <button class="nut" style="height: 35px;margin-top: 20px;color:white ;background-color:  #343a40;" type="submit" value="Login">Đăng ký</button>
	                    </div>
	                </form>
	            </div>
	</div>
	<script type="text/javascript">
	
		const input = document.getElementById('file-input');
		const image = document.getElementById('img-preview');
	
		input.addEventListener('change', (e) => {
		    if (e.target.files.length) {
		        const src = URL.createObjectURL(e.target.files[0]);
		        image.src = src;
		    }
		});	
	
		let popup = document.getElementById("popup");
		
		function openPopup(){
			popup2.classList.remove("open-popup2");
			popup.classList.add("open-popup");
		}
		
		function closePopup(){
			popup.classList.remove("open-popup");
		}
		
		let popup2 = document.getElementById("popup2");
		
		function openPopup2(){
			popup.classList.remove("open-popup");
			popup2.classList.add("open-popup2");
		}
		
		function closePopup2(){
			popup2.classList.remove("open-popup2");
		}
	</script>
	</div>
</body>
</html>



