<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메디뉴 관리자페이지</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css?ver=2">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	*{ 
		margin:0;
		padding:0;
	}
	a{
		display:inline-block;
		color:black;
		text-decoration: none;
	}
	#headerDiv #headerMenu #boardCtr{
		background: white;
		color:black;
	}
	.contentWrap{
		width:100%;
		min-width:1280px;
		/* height:700px; */
		margin:0 auto;
		padding:20px;
		background: lightgray;
		overflow: hidden;
	}
	.contentWrap .leftMenu{
		width:250px; 
		height:100%;
		margin-right:20px;
		padding-top:15px;
		padding-bottom:15px;
		border-radius: 10px; 
		float:left;
		text-align: center;
		background:white;;
	}
	.contentWrap .leftMenu h2{
		width:220px;
		margin:0 auto;
		margin-bottom:15px;
		background: url('${pageContext.request.contextPath}/resources/images/arrow2.gif') no-repeat 10px center;
		font-size:26px;
		font-weight:bold;
	}
	.contentWrap .leftMenu ul{
		width:80%;
		margin-left:40px;
		text-align: left;
	}
	.contentWrap .leftMenu ul li{
		list-style:none;
		margin-bottom:10px;
	}
	.contentWrap .leftMenu ul li:before{
		content:">";
	}
	.contentWrap .leftMenu ul li a{
		/* font-weight: bold; */
		font-size:17px;
	}
	.contentWrap .centerMenu{
		width:1024px;
		border-radius:10px;
		float:left;
		background:white;
	}
	.boardTitle{
		width:90%;
		max-width:860px;
		margin:0 auto;
		font-size:20px;
		margin-top:33px;
		margin-bottom:30px;
	}
	.subtitle{
		margin-left:15px;
		margin-bottom:10px;
	}
	/* 개원입지 */
	.contentTable{
		width:1000px;
		margin:0 auto;
	}
	.contentTable table{
		width:100%;
		font-size:14px;
	}
	.contentTable table tr{
		border-bottom:1px solid lightgray;
	}
	th{
		width:150px;
		background: #f1f1f1;
	}
	.contentTable table tr td:not(.checkTd){
		border-bottom:1px solid lightgray;
		padding:5px;
	}
	.contentTable table td > table td{
		width:150px;
	}
	.managerInfo{
		width:75px;
	}
	.btnWrap{
		width:100%;
		text-align: right;
		margin-top:15px;
		margin-bottom:15px;
	}
	.btnWrap > a{
		display:inline-block;
		text-align:center;
		width:55px;
		height:25px;
		margin-left:10px;
		line-height:25px;
		border-radius:5px;
		background: #013b60;
		color:white;
		
	}
</style>
<script type="text/javascript">
	$(function(){
		//게시판 검색
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="adminNotice${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
		
	});
</script>
</head>
<body>
	<jsp:include page="include/header.jsp"/>
	<div class="contentWrap">
		<div class="leftMenu">
			<h2>개원입지 관리</h2>
			<ul> 
				<li> <a href="${pageContext.request.contextPath}/estateMain/" style="font-weight:bold;"> 개원입지</a></li>
			</ul>
		</div>
		<div class="centerMenu"> 
			<h1 class="boardTitle">&lt;개원입지 관리&gt;</h1>
			<div class="contentTable">
				<h3 class="subtitle">입지정보</h3>
				<table>
					<tr>
						<th>제목</th>
						<td colspan="3">${item.title}</td>
					</tr>
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
					<tr>
						<th>담당자</th>
						<td colspan="3">
							<table>
								<tr>
									<td><span class="managerInfo">이름 : </span>${item.mName}</td>
								</tr>
								<tr>
									<td><span class="managerInfo">전화번호 : </span>${item.mcall1}</td>
								</tr>
								<tr>
									<td><span class="managerInfo">휴대전화 : </span>${item.mcall2}</td>
								</tr>
								<tr>
									<td><span class="managerInfo">이메일 : </span>${item.memail}</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<th>설명</th>
						<td colspan="3" style="padding:15px 5px;">${item.content}</td>
					</tr>
				</table>
				<div class="btnWrap">
					<a href="${pageContext.request.contextPath}/estateMain${pageMaker.makeSearch(pageMaker.cri.page)}">수정</a>
					<a href="${pageContext.request.contextPath}/adminEstateDelete${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}">삭제</a>
					<a href="${pageContext.request.contextPath}/estateMain${pageMaker.makeSearch(pageMaker.cri.page)}">목록</a>
				</div>
			</div><!-- contentTable end -->
		</div><!-- centerMenu end -->
	</div>
</body>
</html>