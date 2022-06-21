<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div id="header" class="clearfix">
		<h1>
			<a href="">MySite</a>
		</h1>

		<c:choose>
			<c:when test="${sessionScope.authUser != null}">
				<!-- 로그인성공했ㅇㄹ떄 -->
				<ul>
					<li>${authUser.getName()}  님 안녕하세요^^</li>
					<li><a href="./loginForm" class="btn_s">로그아웃</a></li>
					<li><a href="./modifyForm" class="btn_s">회원정보수정</a></li>
				</ul>
			</c:when>
			<c:otherwise>

				<ul>
					<li><a href="./loginForm" class="btn_s">로그인</a></li>
					<li><a href="./joinForm" class="btn_s">회원가입</a></li>
				</ul>


			</c:otherwise>

		</c:choose>



		<!-- 
			<ul>
				<li>소준호 님 안녕하세요^^</li>
				<li><a href="" class="btn_s">로그아웃</a></li>
				<li><a href="" class="btn_s">회원정보수정</a></li>
			</ul>
			-->
		<ul>
			<li><a href="./loginForm" class="btn_s">로그인</a></li>
			<li><a href="" class="btn_s">회원가입</a></li>
		</ul>

	</div>
	<!-- //header -->

</body>
</html>