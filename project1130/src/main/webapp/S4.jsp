<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="DBPKG.*" %>

<% 
	String sw = request.getParameter("sw");
    List<MoneyVO> li = (List<MoneyVO>) request.getAttribute("li");
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
			<h2>강사매출현황</h2><br>
			<table border=1 width=500>
				<tr><th>강사코드</th><th>강의명</th><th>강사명</th><th>총매출</th></tr>
				<% for( MoneyVO m : li ) { 
					DecimalFormat df = new DecimalFormat("###,###");
					String TUITION = df.format(m.getTUITION());
				%>
				<tr>
					<td align=center><%=m.getTEACHER_CODE() %></td>
					<td align=center><%=m.getCLASS_NAME() %></td>
					<td align=center><%=m.getTEACHER_NAME() %></td>
					<td align=center>￦<%=TUITION %></td>
				</tr>
				<% } %>
			</table>			
		</div> 
		<br>
	</section>

	<footer> HRDKOREA Copyright &copy;2016 All right reserved. Human Resources Development Service of Korea</footer>
</body>
</html>