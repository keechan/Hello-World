<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/top.jsp" %>
<%@ page import="DBPKG.guestbook.*"%>
<%@ page import="java.net.URLEncoder" %>

<%
	
	String rowcnt = (String) request.getAttribute("rowcnt");
    int tc = Integer.parseInt(rowcnt);
    List<GuestBookVO> li = (List<GuestBookVO>) request.getAttribute("li");
    
    String ch1 = (String) request.getAttribute("ch1");
    String ch2 = "";
	ch2 = (String) request.getAttribute("ch2");
	//한글처리...
    if(ch2 == null) {
    	ch2 = (String) request.getAttribute("ch2");
    } else {
    	ch2 = URLEncoder.encode(ch2, "UTF-8");
    }
	
	int start = (int) request.getAttribute("start");
	int pageSize = (int) request.getAttribute("pageSize");
	//int tp = (int) request.getAttribute("tp");
	int totalPage = (int) Math.ceil((double) tc / pageSize); 
	int nowPage = start / pageSize + 1;
	int lastPage = (totalPage - 1) * pageSize + 1;
%>

<style>
table {
	width: 500px;
}
</style>
<script>
function delK(idx, ch1, ch2) {
	location.href="<%=path%>/GuestBookController?sw=del&idx=" + idx + "&ch1=" + ch1 + "&ch2=" + ch2;
}
</script>
<section>
	<br>
	<div align="center">
		<h2>방명록 목록(<%=rowcnt %>)</h2>
		<br>
		<form action="<%=path %>/GuestBookController">
		<input type=hidden name=sw value=list>
			<select name=ch1>
			    <option value="name" selected>이름</option>
			    <option value="title">제목</option>
			</select>
			<input type=text name=ch2>
			<input type=submit value="검색">			
		</form>
		<table border=1>
			<tr align="center">
				<th>순번</th>
				<th>작성자</th>
				<th>제목</th>
				<th>content</th>
				<th>삭제</th>
			</tr>
			<%
			for (GuestBookVO m : li) {
			%>
			<tr align="center">
				<td><%=m.getIdx()%></td>
				<td><%=m.getName()%>
				</td>
				<td><%=m.getTitle()%></td>
				<td><%=m.getContent()%></td>
				<td><input type=button value="삭제" onClick="delK('<%=m.getIdx() %>', '<%=ch1%>', '<%=ch2%>')"></td>
			</tr>
			<%
			}
			%>
		</table>
		
		
		<% if (start!=1) { %>
		<a href=GuestBookController?sw=list&start=1>처음페이지</a> &emsp;
		<a href=GuestBookController?sw=list&start=<%=start - pageSize%>>이전</a> &emsp;
		<%} else { %>
		처음페이지 &emsp; 
		이전&emsp;
		<%} %>
		<% if(nowPage != totalPage) { %>
		<a href=GuestBookController?sw=list&start=<%=start + pageSize%>>다음&emsp;</a>
		<%} else { %>
		다음&emsp;
		<% } %>
		<a href=GuestBookController?sw=list&start=<%=lastPage%>>마지막페이지</a>
	</div>
	<br>
</section>

<%@ include file="/include/bottom.jsp"%>
