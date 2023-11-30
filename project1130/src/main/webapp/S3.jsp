<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="DBPKG.*" %>

<% 
	String sw = request.getParameter("sw");
    List<MemberVO> li = (List<MemberVO>) request.getAttribute("li");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골프연습장 회원 관리</title>
<style>
header {
	background:#0000ff;
	height:90px;
	line-height:90px;
	color:#ffffff;
	font-size:30px;
	text-align:center;
}

nav {
	background:#0088ff;
	height:35px;
	line-height:35px;
	color:#ffffff;
	font-size:16px;
	text-align:left;
}

section {
	background:#eaeaea;
	min-height:500px;
	line-height:25px;
	color:#000000;
	font-size:16px;
	text-align:left;
}

footer {
	background:#0033ff;
	height:50px;
	line-height:50px;
	color:#000000;
	font-size:16px;
	text-align:center;
}
</style>
</head>
<body>
	<header> 골프연습장 회원관리 v1.0 </header>
	<nav>
	&emsp;<a href=ProjectController?sw=S1>강사조회</a> 
	&emsp;<a href=ProjectController?sw=S2>수강신청</a> 
	&emsp;<a href=ProjectController?sw=S3>회원정보조회</a> 
	&emsp;<a href=ProjectController?sw=S4>강사매출현황</a> 
	&emsp;<a href=ProjectController?sw=INDEX>홈으로</a>
	</nav>

	<section>
		<br>
		<div align=center>
			<h2>회원정보조회</h2><br>
			<table border=1 width=500>
				<tr><th>수강월</th><th>회원번호</th><th>회원명</th><th>강의명</th>
				    <th>강의장소</th><th>수강료</th><th>등급</th>
				</tr>
				<% for( MemberVO m : li ) { 
					DecimalFormat df = new DecimalFormat("###,###");
					String TUITION = df.format(m.getTUITION());
					String date = String.valueOf(m.getREGIST_MONTH());
					String yyyy = date.substring(0, 4);
					String mm = date.substring(4, 6);
				%>
				<tr>
					<td align=center><%=yyyy %>년<%=mm %>월</td>
					<td align=center><%=m.getC_NO() %></td>
					<td align=center><%=m.getC_NAME() %></td>
					<td align=center><%=m.getCLASS_NAME() %></td>
					<td align=center><%=m.getCLASS_AREA() %></td>
					<td align=center>￦<%=TUITION %></td>
					<td align=center><%=m.getGRADE() %></td>
				</tr>
				<% } %>
			</table>			
		</div> 
		<br>
	</section>

	<footer> HRDKOREA Copyright &copy;2016 All right reserved. Human Resources Development Service of Korea</footer>
</body>
</html>