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
	/* 개원입지 */
	.contentTable #form1{
		width:1000px;
		margin:0 auto;
	}
	.contentTable #form1 table{
		width:100%;
		font-size:12px;
	}
	.contentTable #form1 table tr{
		border-bottom:1px solid lightgray;
	}
	th{
		width:150px;
		background: #f1f1f1;
	}
	.contentTable #form1 table tr td:not(.checkTd){
		border-bottom:1px solid lightgray;
		padding:5px;
	}
	.contentTable #form1 table td > table td{
		width:150px;
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
				<h2>입지정보</h2>
				<form id="form1" method="post" action="estateWriter">
					<table>
						<tr>
							<th>제목</th>
							<td colspan="3"><input style="width:450px;" type="text" name="title"></td>
						</tr>
						<tr>
							<th>소재지</th>
							<td colspan="3"><input style="width:450px;" type="text" name="addr"></td>
						</tr>
						<tr>
							<th>면적</th>
							<td>
								공급 : <input style="width:70px; margin-bottom:5px;" type="text" name="supplyArea">㎡<br>
								전용 : <input style="width:70px;" type="text" name="exclusiveArea">㎡
							</td>
							<th>해당층/총층</th>
							<td><input style="width:60px;" type="text" name="floor" placeholder="ex) 4/11"></td>
						</tr>
						<tr>
							<th>주차대수</th>
							<td><input style="width:50px;" type="text" name="pargking">대</td>
							<th>엘레베이터</th>
							<td><input style="width:60px;" type="text" name="elevator">대</td>
						</tr>
						<tr>
							<th>준공년월</th>
							<td><input style="width:50px;" type="text" name="makingYear">년 <input style="width:50px;" type="text" name="makingMonth">월</td>
							<th>냉난방</th>
							<td><input type="radio" name="airconditioner" value="개별">개별 <input type="radio" name="airconditioner" value="중앙">중앙</td>
						</tr>
						<tr>
							<th>추천과목</th>
							<td colspan="3">
								<table class="checkTd">
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="가정의학과">가정의학과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="내과">내과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="마취통증의학과">마취통증의학과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="비뇨의학과">비뇨의학과</td>
									</tr>
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="병원">병원</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="산부인과">산부인과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="산후조리원">산후조리원</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="성형외과">성형외과</td>
									</tr>
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="소아과">소아과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="신경과">신경과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="안과">안과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="외과">외과</td>
									</tr>
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="이비인후과">이비인후과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="영상의학과">영상의학과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="요양시설">요양시설</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="정신과">정신과</td>
									</tr>
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="정형외과">정형외과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="재활의학과">재활의학과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="피부과">피부과</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="한의원">한의원</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<th>추가정보</th>
							<td colspan="3">
								<table class="checkTbl">
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="메디컬빌딩">메디컬빌딩</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="시설양도">시설양도</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="신축건물">신축건물</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="인테리어지원">인테리어지원</td>
									</tr>
									<tr>
										<td class="checkTd"><input type="checkbox" name="recommend" value="임대료지원">임대료지원</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="역세권">역세권</td>
										<td class="checkTd"><input type="checkbox" name="recommend" value="장비양도">장비양도</td>
										<td class="checkTd"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<th>설명</th>
							<td colspan="3">
								<textarea id="editor1" name="content">
								    
								</textarea>
								<script>
									CKEDITOR.replace('content',{filebrowserUploadUrl:"/ckImgUpload",height:500});
								</script>
							</td>
						</tr>
					</table>
				</form>
			</div><!-- contentTable end -->
		</div><!-- centerMenu end -->
	</div>
</body>
</html>