<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- db연결 -->
<%@ include file="../include/dbcon2.jsp"%>
<!-- pjijum DB 가져오기  -->
<%


	String sql4 = " SELECT jiname, jiaddr,"
			   + " jitel, jiabil1, jiabil2,jiabil3, " 
	           + " jirecomend,jistate, "
			   + " jistar"
			   + " FROM pjijum Where jirecomend='Y' ";

	ResultSet rs = stmt.executeQuery(sql4);


%>






<table>

	<tr style="border-bottom:1px solid;">

		<th>이름</th>
		<th>주소</th>
		<th>전화번호</th>
		<th>능력1</th>
		<th>능력2</th>
		<th>능력3</th>
		<th>코멘트</th>
		<th>영업상태</th>
		<th>평점</th>

	</tr>

<%
while(rs.next()){
	
String name =rs.getString("jiname");
String addr =rs.getString("jiaddr");
String tel =rs.getString("jitel");
String abil1 =rs.getString("jiabil1");
String abil2 =rs.getString("jiabil2");
String abil3 =rs.getString("jiabil3");
String comend =rs.getString("jirecomend");
String state =rs.getString("jistate");
String star =rs.getString("jistar");

%>

<tr style="border-bottom:1px solid; text-align:center; word-spacing:3px;">

<td><%=name %></td>
<td><%=addr %></td>
<td><%=tel %></td>
<td><%=abil1 %></td>
<td><%=abil2 %></td>
<td><%=abil3 %></td>
<td><%=comend %></td>
<td><%=state %></td>
<td><%=star %></td>

</tr>
<%

}
%>


</table>
