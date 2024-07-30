<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>구구단</h2>
	
	<table border="1" bgcolor="yellow">
		<tr>
			<%
				//------------제목만 출력하는 코드--------------
				int i=2, j=2;
				
				do {
					out.println("<th>"+i+"단</th>");
					i++;
				} while(i <= 9);
				out.println("</tr>");
				out.println("<tr>");
				//----------------------------------------
				
				
				//2단부터 시작
				i = 2;
				j = 1;

				do{
					if(i%2==0){
						//구구단 칸이 짝수개이면 핑크
						out.println("<td bgcolor = pink>");
					}
					else{
						//구구단 칸이 홀수개이면 오렌지
						out.println("<td bgcolor = orange>");
					}
					
					
					// j++ 가 되면서 한 단의 결과출력을 끝냄
					do{
						out.println(i + " * " + j + "=" + (i*j) + "<br>");
						j++;
					} while(j <= 9);
					
					out.println("</td>");
					
					//한 단의 출력이 끝나면 j=1로 초기화
					j=1;
					//다음 단 시작
					i++;
				}while(i<=9);
			%>
		</tr>
	</table>
	
</body>
</html>