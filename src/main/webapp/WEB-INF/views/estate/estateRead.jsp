<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개원입지 | 메디뉴</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	a{
		color:black;
		text-decoration: none;
	}
	header{
	
	}
	section{
		width:1024px;
		margin:0 auto;
		margin-top:70px;
		margin-bottom:70px;
	}
	.titleTbl{
		width:100%;
	}
	.titleTbl tr{
		display:block;
		overflow:hidden;
		padding:10px;
		font-size:14px;
	}
	.titleTbl tr:last-child{
		border:5px solid lightgray;
	}
	.titleTbl tr td:first-child{
		width:80%;
		color:#6a6a6a;
		float:left;
		font-weight:bold;
	}
	.titleTbl tr td:last-child{
		float:right;
		font-size:13px;
	}
	.title{
		font-size:18px;
		font-weight:600;
	}
	.estateMainImg{
		width:100%;
		margin-bottom:50px;
	}
	.estateMainImg > img{
		width:100%;
	}
	.contentImg{
		width:600px;
		margin:0 auto;
		margin-top:40px;
	}
	.contentImg > img{
		width:100%;
	}
	.contentTable table{
		width:100%;
		font-size:12px;
	}
	.subTitle{
		font-size:15px;
		margin-top:40px;
		padding-left:5px;
		padding-bottom:5px;
		color:#333;
		border-bottom:2px solid lightgray;
	 }
	th{
		width:150px;
		background: #f1f1f1;
		font-size:14px;
	}
	.contentTable table tr td:not(.checkTd){
		border-bottom:1px solid lightgray;
		padding:5px;
	}
	.contentTable table td > table td{
		width:150px;
	}
	.boardContent{
		padding:30px 10px;
		border-bottom:2px solid lightgray;
	}
	.btnList{
		width:100%;
		text-align: right;
		margin-top:15px;
	}
	.btnList > a{
		display:inline-block;
		text-align:center;
		width:55px;
		height:25px;
		line-height:25px;
		border-radius:5px;
		background: #013b60;
		color:white;
		
	}
	footer{
		width:100%;
		position: relative;
		bottom:0;
	}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<header> 
	<jsp:include page="../include/header.jsp"></jsp:include>
</header>
<section>
	<div class="estateMainImg">
		<img src="${pageContext.request.contextPath}/resources/images/estateMainImg.png">
	</div>
	<div class="contentWrap">
		<table class="titleTbl">
			<tr>
				<td><span style="font-size:15px; font-weight:900; color:#999">|</span> 입지보기</td>
				<td>홈 > 개원입지 > <span style="font-size:13px; font-weight:bold;">입지보기</span></td>
			</tr>
			<tr>
				<td class="title">${item.title}</td>
				<td>등록일 : <fmt:formatDate type="date" value="${item.regdate}"/></td>
			</tr>
		</table>
		<div class="contentImg">
			<img src="${pageContext.request.contextPath}/resources/estateUpload/${item.mainImg}">
		</div>
		<h3 class="subTitle"> 입지정보</h3>
		<div class="contentTable">
			<table>
				<tr>
					<th>소재지</th>
					<td colspan="3">${item.addr}</td>
				</tr>
				<tr>
					<th>지역/구</th>
					<td>${item.area}</td>
					<th>형태</th>
					<td>${item.dealType}</td>
				</tr>
				<tr>
					<th>면적</th>
					<td>
						공급 : ${item.supplyArea} ㎡<br>
						전용 : ${item.exclusiveArea} ㎡
					</td>
					<th>해당층/총층</th>
					<td>${item.floor} 층</td>
				</tr>
				<tr>
					<th>주차대수</th>
					<td>${item.parking} 대</td>
					<th>엘레베이터</th>
					<td>${item.elevator} 대</td>
				</tr>
				<tr>
					<th>준공년월</th>
					<td>${item.makingYear} 년 ${item.makingMonth} 월</td>
					<th>냉난방</th>
					<td>${item.airconditioner}</td>
				</tr>
				<tr>
					<th>추천과목</th>
					<td colspan="3">${item.recommend}</td>
				</tr>
				<tr>
					<th>추가정보</th>
					<td colspan="3">${item.moreInfo}</td>
				</tr>
			</table>
			<h3 class="subTitle"> 담당자</h3>
			<table>
				<tr>
					<th>이름</th>
					<td>${item.mName}</td>
					<th>전화번호</th>
					<td>${item.mcall1}</td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td>${item.mcall2}</td>
					<th>이메일</th>
					<td>${item.memail}</td>
				</tr>
			</table>
		</div><!-- contentTable end -->
		<h3 class="subTitle"> 설명</h3>
		<div class="boardContent">
			${item.content}
		</div>
		<div class="btnList">
			<a href="${pageContext.request.contextPath}/estateHome${pageMaker.makeSearch(pageMaker.cri.page)}">목록</a>
		</div>
	</div><!-- contentWrap end -->
</section>
<footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>