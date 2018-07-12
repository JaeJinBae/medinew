<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	.headerWrap{
		width:100%;
		min-width:1100px;
		margin:0 auto;
	}
	.logoDiv{
		width:90%;
		position:relative;
		margin:30px auto;
		margin-top:50px;
		text-align: center;
		
	}
	.logoDiv > a > .logoImg{
		width:450px;
	}
	.logoText{
		/* float:right; */
		position:absolute;
		top:0;
		right:15px;
		text-align: left;
	}
	.logoText > img{
		width:213px;
	}
	.logoText>h2{
		margin-bottom:14px;
		font-weight:500;
	}
	.menuWrap{
		width:100%;
		margin:0 auto;
		padding:10px 0;
		background: #17375e;
	}
	.mainMenu{
		width:100%;
		background: #17375e;
		margin:0 auto;
		padding:10px 0;
		text-align: center;
	}
	.mainMenu>li{
		display: inline-block;
		/* border-right:2px solid white; */
		padding:0 15px;
		text-align: center;
		width:110px;
		height:90px;
	}
	.mainMenu>li:last-child{
		border:0;
	}
	.mainMenu>li>a{
		width:100%;
		color:white;
	}
	.mainMenu>li:hover>a{
		font-weight: 600;
	}
	.mainMenu > li > a > img{
		width:80px;
	}
</style>
	<div class="headerWrap">
		<div class="logoDiv">
			<a href="${pageContext.request.contextPath}/"><img class="logoImg" src="${pageContext.request.contextPath}/resources/images/logoEng.png"></a>
			<div class="logoText">
				<img src="${pageContext.request.contextPath}/resources/images/question.png">
			</div>
		</div>
		<div class="menuWrap">
			<ul class="mainMenu">
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu01.png"><br>개원 입지
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu02.png"><br>개원 자금
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu03.png"><br>병·의원 홍보
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu04.png"><br>의료기기/용품
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu05.png"><br>실내외 공사
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/estateHome">
						<img src="${pageContext.request.contextPath}/resources/images/menu06.png"><br>경영 컨설팅
					</a>
				</li>
			</ul>
		</div>
	</div>
