<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- JSTL을 사용하기 위한 taglib추가 -->
<!-- 추가로 JSTL Lib 프로젝트에 추가 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- JSTL 사용하기 -->
	<!-- JSTL을 사용하여 page영역에 값 넣기 -->
	<%-- <% pageContext.setAttribute("num", 100); --%>
	
	<!-- c:set 기본적으로 page영역에 저장이 된다 -->
	<c:set var="num" value="100" scope="session"/>
	<c:set var="text" value="<script>alert('ㅋㅋㅋㅋ 나잡아봐라');</script>" scope="session"/>
	
	<c:out value="${text }" />
	<br>
	
	<!-- JSTL을 활용한 조건문 -->
	<!-- num의 값이 100보다 크거나 같다면 100보다 큽니다. 아니면 작습니다를 출력 -->
	<c:if test="${num ge 100 }">
		100보다 크거나 같습니다.
	</c:if>
	
	<c:if test="${num lt 100 }">
		100보다 작습니다.
	</c:if>
	<br>
	
	<c:set var="time" value="점심" />
	<!-- 
		time 값이 
		아침 -> 토스트
		점심 -> 비빔밥
		저녁 -> 족발
		그외 -> 라면
	 -->
	 <c:choose>
	 	<c:when test="${time == '아침'}">
	 		토스트
	 	</c:when>
	 	<c:when test="${time == '점심'}">
	 		비빔밥
	 	</c:when>
	 	<c:when test="${time == '저녁'}">
	 		족박
	 	</c:when>
	 	<c:otherwise>
	 		라면
	 	</c:otherwise>
	 </c:choose>
	<br>
	
	<!-- JSTL 반복문 -->
	<!--  for(int i=1;i<=10;i++) { -->
	<c:forEach var="i" begin="1" end="10" step="1">
		하하 ${i} <br>
	</c:forEach>
	<br>
	
	<table border="1px" style="background-color: #33CC33;">
		<c:forEach var="i" begin="2" end="9" step="1">
		<tr>
			<c:forEach var="j" begin="1" end="9" step="1">
			<td>
				<b>${i} * ${j} = ${i*j}</b> 
			<td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
</body>
</html>