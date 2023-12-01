<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp"%>

<%
List<TeacherVO> li = (List<TeacherVO>) request.getAttribute("li");
%>
<style>
table {
	width: 500px;
}
</style>

<section>
	<br>
	<div align="center">
		<h2>강사조회</h2>
		<br>

		<table border=1>
			<tr align="center">
				<th>강사코드</th>
				<th>강사명</th>
				<th>강의명</th>
				<th>수강료(원)</th>
				<th>강사자격취득일</th>
			</tr>
			<%
			for (TeacherVO m : li) {

				DecimalFormat dc = new DecimalFormat("###,###");
				String CLASS_PRICE = dc.format(m.getCLASS_PRICE());

				String date = String.valueOf(m.getTEACHER_REGIST_DATE());
				String yy = date.substring(0, 4);
				String mm = date.substring(4, 6);
				String dd = date.substring(6, 8);
			%>
			<tr align="center">
				<td><%=m.getTEACHER_CODE()%></td>
				<td><%=m.getTEACHER_NAME()%></td>
				<td><%=m.getCLASS_NAME()%></td>
				<td>&#8361; <%=CLASS_PRICE%></td>
				<td><%=yy%>년 <%=mm%>월 <%=dd%>일</td>
			</tr>
			<%
			}
			%>

		</table>

	</div>
	<br>
</section>

<%@ include file="/include/bottom.jsp"%>