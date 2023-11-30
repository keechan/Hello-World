<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h2>골프연습장 회원관리 프로그램</h2><br>
		</div> 
		&emsp;골프연습장 회원정보와 강사정보, 수강정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br> 
		&emsp;프로그램 작성 순서<br> 
		&emsp;1.강사정보 테이블을 생성한다.<br>
		&emsp;2.회원정보 테이블을 생성한다.<br> 
		&emsp;3.수강정보 테이블을 생성한다.<br> 
		&emsp;4.강사정보, 회원정보, 수강정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.<br> 
		&emsp;5.수강신청 입력 화면프로그램을 작성한다.<br>
		&emsp;6.강사정보 조회 프로그램을 작성한다.<br> 
		&emsp;7.회원정보 조회 프로그램을 작성한다.<br> 
		&emsp;8.강사매출현황 조회 프로그램을 작성한다.<br>
		<br>
	</section>

	<footer> HRDKOREA Copyright &copy;2016 All right reserved. Human Resources Development Service of Korea</footer>
</body>
</html>