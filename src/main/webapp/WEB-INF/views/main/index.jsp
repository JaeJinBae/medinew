<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<title>메디뉴</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style type="text/css">
	/* common css */
	*{
		margin:0;
		padding:0;
		font-family: 'Noto Sans KR', sans-serif;
	}
	a{
		color:black;
		text-decoration: none;
	}
	ul{
		list-style: none;
	}
	ul li{
		list-style: none;
	}
	/* common css end */
	section{
		width:100%;
		margin:0 auto;
	}
	.content1{
		width:1100px;
		margin:30px auto;
		overflow: hidden;
	}
	.estateTblWrap{
		width:759px;
		float:left;
	}
	.new_icon{
		width:70px;
		height:33px;
		margin-bottom:5px;
		margin-left:5px;
		text-align:center;
		color:white;
	 	background: url("${pageContext.request.contextPath}/resources/images/new.png") no-repeat;
	 }
	 .hot_icon{
	 	width:70px;
		height:33px;
		margin-top:20px;
		margin-bottom:5px;
		margin-left:5px;
		text-align:center;
		color:white;
	 	background: url("${pageContext.request.contextPath}/resources/images/hot.png") no-repeat;
	 }
	.tbl_new, .tbl_hot{
		width:100%;
		border:1px solid lightgray;
		border-radius: 7px;
	}
	.estateTblWrap table{
		width:739px;
		margin:10px auto;
	}
	.estateTblWrap table tr{
		display:inline-block;
	}
	.estateTblWrap table tr:first-child{
		margin-bottom:10px;
	}
	.estateTblWrap table tr td{
		width:177.54px;
		text-align: center;
		display:inline-block;
		border:1px solid lightgray;
	}
	.estateTblWrap table img{
		width:175px;
	}
	.budongTitle{
		width:100%;
		overflow:hidden;
		white-space:nowrap;
		text-overflow: ellipsis;
	}
	.budongTitle > a{
		font-size:14px;
		font-weight: 600;
		/* white-space:nowrap; */
	}
	.budongTitle:hover > a{
		color:blue;
	}
	.budongSubTitle{
		font-size:12px;
	}
	.budongPrice1{
		text-align: right;
		font-size:12px;
		margin-right:5px;
		margin-top:5px;
	}
	.budongPrice2{
		text-align: right;
		font-size:12px;
		margin-right:5px;
		margin-bottom:5px;
	}
	.redNum{
		color:red;
		font-size:12px;
	}
	.loginWrap{
		float:left;
		margin-left:40px;
	}
	.login_div{
		width:267px;
		padding:15px;
		border:1px solid lightgray;
		margin-top:38px;
		margin-bottom:20px;
	}
	.login_div > fieldset{
		border:0;
		text-align: center;
	}
	.login_div > fieldset>input{
		width:100%;
		height:30px;
		margin-bottom:15px;
	}
	.login_div > fieldset > .btnLogin{
		width:101.5%;
		height:35px;
		border:0;
		background: black;
		color:white;
	}
	.login_div > fieldset > a{
		font-size:12px;
		color:#555;
	}
	.login_div > fieldset > .secondA{
		border-left:1px solid gray;
		border-right:1px solid gray;
		padding:0 6px;
	}
	.mapWrap{
		/* width:100%; */
		margin-top:50px;
		border:1px solid lightgray;
		text-align: center;
		padding:5px;
	}
	.mapWrap > h1{
		width:100%;
		margin:30px auto;
		color:white;
		background: #162a64
	}
	.mapWrap > img{
		width:100%;
	}
	.bottomBanner{
		width:1100px;
		margin:40px auto;
		margin-top:0;
	}
	.bottomBanner>img{
		width:100%;
	}
	.bottomHorizontalScroll{
		width:1100PX;
		margin:0 auto;
	}
	.bottomHorizontalScroll div{
		text-align: center;
	}
	.bottomHorizontalScroll div img{
		width:120px;
		margin:0 auto;
	}
	footer{
		margin-top:40px;
	}
</style>
<script type="text/javascript">
	$(function(){
		//로그인
		function idpwCheck(){
			var id=$("input[name='id']").val();
			var pw=$("input[name='pw']").val();
			if(id==""||pw==""){
				alert("아이디와 비밀번호를 모두 입력하세요.");
				return;
			}
			$.ajax({
				url:"${pageContext.request.contextPath}/adminLoginCheck/"+id+"/"+pw,
				type:"post",
				dataType:"text",
				success:function(json){
					console.log(json);
					
					if(json!="ok"){
						alert("아이디 또는 비밀번호를 다시 확인하세요.");
					}else{
						location.href="${pageContext.request.contextPath}/estateMain";
					}
				}
			});
		}
		
		$(".btnLogin").click(function(){
			var id=$("input[name='id']").val();
			var pw=$("input[name='pw']").val();
			if(id==null||id==""||pw==null||pw==""){
				alert("아이디와 비밀번호를 다시 확인하세요.");
			}else{
				idpwCheck();
			}
		});
		//로그인 end
		
		$(".bottomHorizontalScroll").slick({
			arrows:false,
			infinite:true,
			speed:4000,
			slidesToShow:5,
			autoplay:true,
			autoplaySpeed:0,
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<section>
		<div class="content1"> 
			<div class="estateTblWrap">
				<h1 class="new_icon">NEW</h1>
				<div class="tbl_new">
					<table>
						<tr>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
						</tr>
						<tr>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">가나다라마바사아자차카타파하가나다라마바사아자차카타파하</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
						</tr>
					</table>
				</div><!-- tbl_new end -->
				
				<h1 class="hot_icon">HOT</h1>
				<div class="tbl_hot">
					<table>
						<tr>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
						</tr>
						<tr>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
							<td>
								<img alt="부동산" src="${pageContext.request.contextPath}/resources/images/houseimg1.png"><br>
								<p class="budongTitle"><a href="">직접 인테리어한 예쁜 원룸</a></p>
								<p class="budongSubTitle">달서구 대천동 원룸</p>
								<p class="budongPrice1"><span class="redNum">8000</span>만원</p>
								<p class="budongPrice2"><span class="redNum">8000</span>만원 + <span class="redNum">50</span>만원</p>
							</td>
						</tr>
					</table>
				</div><!-- tbl_hot end -->
				
			</div><!-- estateTblWrap end -->
			<div class="loginWrap">
				<div class="login_div">
					<fieldset>
						<input type="text" placeholder="  아이디" name="id"><br>
						<input type="password" placeholder="  비밀번호" name="pw"><br>
						<input class="btnLogin" type="button" value="√   로그인"><br>
						<a href="">아이디 찾기</a>
						<a class="secondA" href="">비밀번호 찾기</a>
						<a href="">회원가입</a>
					</fieldset>
				</div><!-- login_div end -->
				<div class="mapWrap">
					<h1>대구시 매물 바로가기</h1>
					<img src="${pageContext.request.contextPath}/resources/images/daeguMap.png" usemap="#map">
					<map id="daegu" name="map">
						<area shape="poly" alt="달성군" title="" coords="23,284,22,278,36,260,17,244,14,244,0,223,6,214,29,215,42,221,53,221,59,214,59,200,47,195,42,197,31,190,26,176,39,169,42,151,54,142,85,144,89,136,61,114,38,116,34,119,27,109,29,97,41,86,42,73,50,71,55,61,59,62,65,65,65,56,71,58,70,53,77,59,89,59,86,69,89,73,88,77,81,75,82,86,92,87,95,83,98,84,97,91,102,92,106,87,113,89,121,90,115,97,119,98,120,105,110,107,103,108,93,104,87,111,85,122,84,129,88,134,92,132,93,141,108,143,118,147,118,154,126,159,135,158,141,170,148,171,152,162,151,155,160,154,163,147,187,149,189,146,192,150,209,150,209,156,223,156,229,160,229,167,232,168,230,172,237,174,237,185,233,195,235,200,230,202,227,210,214,207,205,210,203,217,183,217,184,206,180,202,181,194,171,192,168,197,164,197,160,192,155,197,150,194,149,198,135,205,128,206,124,210,126,221,127,230,120,234,111,235,107,244,110,249,114,251,112,264,100,263,98,266,93,263,90,260,86,265,68,263,55,280,38,277,24,284" href="" target="" />
						<area shape="poly" alt="수성구" title="" coords="253,151,253,136,244,136,253,128,260,127,260,113,256,110,249,109,242,114,231,113,229,109,227,102,205,99,186,110,180,105,176,114,180,125,174,137,162,147,187,149,190,146,191,150,209,150,209,156,225,155,228,160,246,156,248,151,251,151" href="" target="" />
						<area shape="poly" alt="동구" title="" coords="122,27,128,26,137,36,136,39,142,38,142,34,149,28,166,28,172,21,189,38,190,63,197,71,194,88,184,91,179,102,174,100,171,101,168,98,160,97,159,94,143,88,119,90,106,87,108,76,113,74,121,67,121,63,127,62,126,44,129,42,121,32" href="" target="" />
						<area shape="poly" alt="북구" title="" coords="171,21,183,12,214,12,221,6,237,6,241,11,251,10,263,19,264,27,265,30,272,37,272,42,267,43,268,48,271,49,271,57,269,61,270,71,278,72,283,79,282,86,285,91,285,94,281,96,282,107,284,109,284,113,272,114,266,119,259,114,258,110,249,109,241,114,232,113,229,110,228,103,207,99,186,109,181,106,178,102,183,92,194,87,197,71,190,62,189,38,184,33,172,22" href="" target="" />
						<area shape="poly" alt="" title="" coords="160,97,169,97,171,101,179,99,180,107,177,111,176,115,162,113,153,107,160,101" href="" target="" />
						<area shape="poly" alt="" title="" coords="120,89,132,88,143,88,160,95,159,101,153,108,153,110,146,114,131,114,125,107,120,105,118,98,116,97" href="" target="" />
						<area shape="poly" alt="" title="" coords="179,125,172,141,163,147,150,136,144,132,152,120,153,113,152,109,154,107,161,112,177,115" href="" target="" />
						<area shape="poly" alt="" title="" coords="84,129,88,110,94,103,106,109,112,108,116,106,120,105,125,107,131,115,147,114,152,110,153,114,152,121,147,125,145,131,155,140,162,146,163,151,160,154,152,154,152,163,148,170,142,170,134,158,125,157,118,152,118,147,113,143,94,141,93,132,89,134,84,129" href="" target="" />
					</map>
				</div>
			</div><!-- loginWrap end -->
			
		</div><!-- content1 end -->
		
		<div class="bottomBanner">
			<img src="${pageContext.request.contextPath}/resources/images/bottomBanner.png">
		</div><!-- bottomBanner end -->
		<div class="bottomHorizontalScroll">
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner1.png" alt="컨스마케팅"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner2.png" alt="IBK기업은행"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner3.PNG" alt="노무법인 혜윰"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner4.png" alt="케이티텔레캅"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner1.png" alt="컨스마케팅"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner2.png" alt="IBK기업은행"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner3.PNG" alt="노무법인 혜윰"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/bottomBanner4.png" alt="케이티텔레캅"></div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>