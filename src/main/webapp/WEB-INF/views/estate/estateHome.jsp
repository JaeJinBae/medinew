<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	.estateMainImg{
		width:100%;
		margin-bottom:50px;
	}
	.estateMainImg > img{
		width:100%;
	}
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
	footer{
		width:100%;
		position: relative;
		bottom:0;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#searchBtn").click(function(){ 
			var s=$("select[name='searchType']").val();
			var searchType = encodeURIComponent(s);
			var k=$("input[name='keyword']").val();
			var keyword = encodeURIComponent(k);
			location.href="estateHome${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
			
		});
	});
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
						<th>등록일</th>
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
									<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/estateUpload/${item.mainImg}"></td>
									<td><h4>${item.dealType}</h4></td>
									<td>${item.floor}</td>
									<td>${item.supplyArea}/${item.exclusiveArea}</td>
									<td>
										<h3><a href="${pageContext.request.contextPath}/estateRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}">${item.title}</a></h3>
										<span class="group">
											${item.recommend}
										</span>
									</td>
									<td><fmt:formatDate type="date" value="${item.regdate}"/></td>
									<td>${item.cnt}</td>
								</tr>
							</c:forEach>
					    </c:otherwise> 
					</c:choose>
				</table>
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
							<option value="g" ${cri.searchType=='r'?'selected':''}>시/구</option>
						</select> 
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
						<button id="searchBtn">검색</button>
					</div>
			</div><!-- tbl_board --><!-- contentTable end -->
</section> 
<footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>