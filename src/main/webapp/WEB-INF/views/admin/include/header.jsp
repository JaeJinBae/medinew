<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메디뉴 관리자페이지</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	#headerDiv{
		width:100%;
		min-width:1024px;
		color:skyblue;
		background: #17161C;
	}
	#headerDiv #logo{
		width:300px;
		height:80px;
		color:white;
		line-height: 80px;
		margin-left: 30px;
		position:  relative;
	}
	#headerDiv #logo h2 {
    font-size: 25px;
    font-weight: bold;
    letter-spacing: 3px;
	}
	#headerDiv>.gohome{
		position: absolute;
		right:50px;
		top:21px;
	}
	#headerDiv>.gohome>img{
		width:40px;
	}
	#headerDiv #headerMenu{
		width:100%;
		min-width:1024px;
		height:40px;
		background: #383A3F;
	}
	#headerDiv #headerMenu ul{
		width:980px;
		line-height: 38px;
		margin-left:30px;
	}
	#headerDiv #headerMenu>ul>li{
		list-style: none;
		width:167px;
		display:inline-block;
		text-align:center;
		border-right:1px solid gray;
		float:left;
	}
	#headerDiv #headerMenu>ul>li a{
		width:165px;
		color:white;
		font-weight:bold;
		text-decoration: none;
		display: inline-block;
		font-size:20px;
	}
	#headerDiv #headerMenu>ul>li a:hover{
		background: white;
		color:black;
	}
</style>
</head>
<script>
	$(function(){
		var d = new Date();
		var year = d.getFullYear();
		var month  = d.getMonth()+1;
		var date = d.getDate();
		if(month<10){
			month = "0"+month;
		}
		if(date<10){
			date = "0"+date;
		}
		$("#statistics").attr("href","statistics?keyword="+year+"-"+month+"-"+date);
		
	});
</script>
<body>
	<div id="headerDiv">
		<div id="logo">
			<h2>메디뉴 관리자</h2>
		</div>
		<a class="gohome" href="${pageContext.request.contextPath}/logout"><img src="${pageContext.request.contextPath}/resources/images/home2.png" alt="메인페이지 바로가기" id="home"></a>
		<div id="headerMenu"> 
			<ul>
				<li><a href="${pageContext.request.contextPath}/estateMain/" title="부동산 매물 관리" id="boardCtr">부동산 매물 관리</a></li>
			</ul>
		</div>
	</div>
</body>
</html>