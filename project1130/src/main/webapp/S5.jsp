<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/include/top.jsp" %>

<%
	List<ClassVO> li = (List<ClassVO>) request.getAttribute("li");
%>

	<style>
		table {
		  	width: 50%;	  
		}
	</style>

	<section>
		<br>
		<div align="center">
			<h2>수강정보현황</h2>
			<br>

			<table id="t1" border=1>
				<tr align="center">
					<th>수강월</th>
					<th>회원번호</th>
					<th>강사장소</th>
					<th>수강료</th>
					<th>강사코드</th>
					<th>강사명</th>
				</tr>
				<%
				//색상
				String[] bg = {"Orange", "MediumSeaGreen", "Gray", "Tomato", "Violet", "MediumSeaGreen", 
						       "DodgerBlue", "Tomato",  "SlateBlue", "Orange",  "LightGray", "MediumSeaGreen"};
				for (ClassVO m : li) {
					DecimalFormat dc = new DecimalFormat("###,###");
					//월별 분할
				    int trArr = Integer.parseInt(m.getREGIST_MONTH().substring(3, 4));
				    //System.out.println(trArr);
					String TUITION = dc.format(m.getTUITION());
					String trgb = bg[trArr];
				%>
				<tr align="center" bgcolor="<%=trgb%>">
					<td><%=m.getREGIST_MONTH()%></td>					
					<td><a href="<%=path %>/ProjectController?sw=ME&cno=<%=m.getC_NO()%>">
							<%=m.getC_NO()%>
						</a>
					</td>
					<td><%=m.getCLASS_AREA()%></td>
					<td><%=TUITION%></td>
					<td><%=m.getTEACHER_CODE()%></td>
					<td><%=m.getTEACHER_NAME()%></td>
				</tr>
				<%
				}
				%>

			</table>

		</div>
		<br>
	</section>

<%@ include file="/include/bottom.jsp"%>