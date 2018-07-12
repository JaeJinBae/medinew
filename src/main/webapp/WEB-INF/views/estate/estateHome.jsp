<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			
			<tr>
				<td>9</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>양도</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>8</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>344</td>
			</tr>
			<tr>
				<td>7</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>6</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>5</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>4</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>3</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>2</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
			<tr>
				<td>1</td>
				<td>대구/달성군</td>
				<td><img class="tableInnerImg" src="${pageContext.request.contextPath}/resources/images/1234142.jpg"></td>
				<td><h4>임대</h4></td>
				<td>5층/11층</td>
				<td>257.85/330.58</td>
				<td>
					<h3><a href="">대구 칠성시작역 초역세권 라스타트 칠성메디컬타워 병원임대</a></h3>
					<span class="group">
						내과, 비뇨의학과, 산부인과, 성형외과, 소아청소년과, 마취통증의학과
					</span>
				</td>
				<td>34</td>
			</tr>
		</table>
	</div><!-- contentTable end -->
</section>
<footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>