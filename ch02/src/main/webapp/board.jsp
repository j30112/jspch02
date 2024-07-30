<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	
	
</head>
<body>
	
	<h1>게시판</h1>
	
	<% 
		/* 여기에 서블릿과 동일하게 자바 코딩을 하면 된다 */
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		//파일에 메세지를 저장할때는 <p> 같은 태그가 먹히지 않기 때문에 자바의 줄바꿈 사용
		//    "/r" == carriage return
		String msg = "제목: " + title + "\r\n";
		msg += "작성자: " + writer + "\r\n";
		msg += "내용: " + content + "\r\n";
		
		Date date = new Date();
		long fileName = date.getTime();
		//이 파일은 MetaData로 잡힌다
		String real = application.getRealPath("/WEB-INF/out/"+fileName+".txt");
		
		//파일의 진짜 이름을 찾기 위해 콘솔로 real을 뿌려줬다
		System.out.println(real);
		FileWriter fw = new FileWriter(real);
		
		//파일을 만들고
		fw.write(msg);
		fw.close();
		
		//출력까지 진행
		//jsp에서는 서블릿과 달리 out은 내장객체이다
		out.println("제목: " + title + "<br>");
		out.println("작성자: " + writer + "<br>");
		out.println("내용: " + content + "<br>");
	%>
	
	저장성공
</body>
</html>