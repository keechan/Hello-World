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

	<script>
		function fn_function1() {
			f1.C_NO.value = f1.C_NAME.value;
		}
		function fn_function2() {
			//수강료
			price = f1.CLASS_NAME.value * 1000;
			if (f1.C_NO.value >= 2000) {
				price = price * 0.5;
			}
			
			f1.TUITION.value = price;
		}
		
		function ck1() {
			if (f1.REGIST_MONTH.value=="") {
				alert("수강월을 입력해주세요!");
				f1.REGIST_MONTH.focus();
				
				return false;
			} else if(f1.ADDRESS.value=="") {
				alert("강의장소를 입력해주세요!")
				f1.ADDRESS.focus();
				
				return false;
			}
		}
		
		//회원번호가 2000변 이상이면 수강료가 자동을
	</script>
	<section>
		<br>
		<div align=center>
			<h2>수강신청</h2><br>
			<form name="f1" action="ProjectController" onSubmit="return ck1()">
			<input type=hidden name="sw" value="INSERT">
			<table border=1 width=500>
				<tr>
				    <td>수강월</td>
				    <td><input type=text name="REGIST_MONTH"></td>
				</tr>
				<tr>
				    <td>회원명</td>
				    <td>
				    	<select name="C_NAME" onChange="fn_function1()">
				    		<option value="">회원명</option>
				    		<option value="10001">홍길동</option>
				    		<option value="10002">장발장</option>
				    		<option value="10003">임꺽정</option>
				    		<option value="20001">성춘향</option>
				    		<option value="20002">이몽룡</option>
				    	</select>
				    </td>
				</tr>
				<tr>
				    <td>회원번호</td><td><input type=text name="C_NO" readonly>예) 10001
				    </td>
				</tr>
				<tr>
				    <td>강의장소</td><td><input type=text name="ADDRESS"></td>
				</tr>
				<tr><td>강의명</td>
					<td>
					   <select name = "CLASS_NAME" onChange="fn_function2()">
					   	<option value="">강의신청</option>
					   	<option value="100">초급반</option>
					   	<option value="200">중급반</option>
					   	<option value="300">고급반</option>
					   	<option value="400">심화반</option>
					   </select>
					</td>
				</tr>
				<tr>
			       <td>수강료</td><td><input type=text name="TUITION" readonly></td>
				</tr>
			</table>
				<tr>
				    <input type=submit value="수강신청"> &emsp;
				    <input type=reset value="다시쓰기">
				</tr>
			</form>			
		</div> 
		<br>
	</section>

	<footer> HRDKOREA Copyright &copy;2016 All right reserved. Human Resources Development Service of Korea</footer>
</body>
</html>