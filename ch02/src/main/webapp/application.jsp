<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
								//서버 정보 출력
		String info = application.getServerInfo();
								//메이저 정보 출력(정수) 메이저 버전이 바뀌면 크게 버전 업
		int major = application.getMajorVersion();
								//마이너 정보 출력(소수점 아래 출력)
		int minor = application.getMinorVersion();
		//*******************  중요  *********************
		//경로를 출력하는 역할? 인 것 같다 중요하다는 것만 알라고 하심
				                            //"/" = 현재 나의 위치 출력
		String path = application.getRealPath("/");
	%>
	
	<h2>Application의 내장 객체</h2>
	웹 컨테이너의 이름과 버전: 				<%=info %> <p>
	서블릿의 버전: 					  	<%=major %>, <%=minor %><p>
	웹 어플리케이션 폴더의 로컬 시스템 경로: 	<%=path %>
	
</body>
</html>