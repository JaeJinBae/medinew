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
	
	/* 공지사항 */
	.contentTable > table{
		width:100%;
		font-size:12px;
	}
	.thOftr{
		background: #f1f1f1;
		height:35px;
	}
	.contentTable > table th{
		
	}
	.contentTable > table td{
		text-align: center;
		font-size:12px;
	}
	.contentTable > table td > h4{
		background: #3f77ca;
		color:white;
		height:20px;
		line-height: 20px;
	}
	.contentTable > table td>h3{
		font-size:13px;
	}
	.contentTable > table td:nth-child(7){
		text-align: left;
		padding-left:5px;
	}
	.tableInnerImg{
		width:70px;
		height:70px;
	}  
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: lightblue;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 40px;
	}
	.registerBtn{
		float:right;
		margin-right:35px;
		margin-top:31px;
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
			<h2>부동산 매물 관리</h2>
			<ul> 
				<li> <a href="${pageContext.request.contextPath}/estateMain/" style="font-weight:bold;"> 개원입지</a></li>
			</ul>
		</div>
		<div class="centerMenu"> 
			<h1 class="boardTitle">&lt;개원입지 관리&gt;</h1>
			<div class="contentTable">
				<table>
					<tr class="thOftr">
						<th>번호</th>
						<th>지역</th>
						<th>사진</th>
						<th>형태</th>
						<th>층수(해당/총)</th>
						<th>면적(㎡)</th>
						<th>제목</th>
						<th>조회</th>
					</tr>
					<c:choose>
					    <c:when test="${fn:length(list) == 0}">
				        	<tr>
				        		<td colspan="8" style=" text-align: center;">등록된 게시물이 없습니다.</td>
				        	</tr>
					    </c:when>
					    <c:otherwise>
					        <c:forEach var="item" items="${list}">
								<tr>
									<td>${item.bno}</td>
									<td>${item.area}</td>
									<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/${item.mainImg}"></td>
									<td><h4>${item.dealType}</h4></td>
									<td>${item.floor}</td>
									<td>${item.supplyArea}/${item.exclusiveArea}</td>
									<td>
										<h3><a href="">${item.title}</a></h3>
										<span class="group">
											${item.recommend}
										</span>
									</td>
									<td>${item.cnt}</td>
								</tr>
							</c:forEach>
					    </c:otherwise> 
					</c:choose>
				</table>
				<p class="registerBtn"><a href="${pageContext.request.contextPath}/adminEstateWrite?${pageMaker.makeSearch(pageMaker.cri.page)}"><button>글쓰기</button></a></p>
				<div class="page">
					<ul>
						<c:if test="${pageMaker.prev}">
							<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
							<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
						</c:if>
						
					</ul>
				</div><!-- page end -->
				<div class="box-body" style="text-align:center;">
						<select name="searchType">
							<option value="n">선택해주세요.</option>
							<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
							<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
							<option value="r" ${cri.searchType=='r'?'selected':''}>작성일</option>
						</select> 
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
						<button id="searchBtn">검색</button>
					</div>
			</div><!-- tbl_board -->
		</div><!-- centerMenu end -->
	</div>
</body>
</html>