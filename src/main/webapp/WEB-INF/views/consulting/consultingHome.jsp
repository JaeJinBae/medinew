<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경영컨설팅 | 메디뉴</title>
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
	.section > img{
		width:700px;
		margin:0 auto;
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
	<img src="${pageContext.request.contextPath}/resources/images/medinewFix.jpg">
</section>
<footer>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</body>
</html>