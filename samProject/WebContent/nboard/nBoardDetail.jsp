<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/dbcon2.jsp" %>    

<%
String admin = (String) session.getAttribute("adminConfirm");

String bunq = request.getParameter("bunq");

String sql = " UPDATE pboard SET hit = hit+1 "  
		+ " WHERE bunq = '"+bunq+"' ";

	stmt.executeUpdate(sql);

 sql = " SELECT userid,title,content,to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') sdate,hit "  
		   + " FROM pboard "
		   + " WHERE bunq='"+bunq+"' ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();

String userid = rs.getString("userid");
String title = rs.getString("title");
String content = rs.getString("content");
String sdate = rs.getString("sdate");
String hit = rs.getString("hit");



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 세부목록</title>
</head>

<link rel="stylesheet" href="../css/bootstrap.min.css">

<style>

   .table1 {
      	width:600px;
      	border:1px solid #555555;
      	border-collapse:collapse;
      }
      
      .td1{
      	padding:5px;
      }
      
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="../css/menu_footer.css">

<body> 

<%@ include file = "../include/header.jsp" %>

<section>
<br>
<br>
<h1 style="text-align:center;">공지사항</h1>
<br>
<br>
<br>

<form name="frm" method="post" action="nBoardModify.jsp">

<input type="hidden" name="bunq" value="<%=bunq %>" > 
	<div align="center">
	
<table style="margin-left:0px;">
         <tr align="left">
               <td class="badge badge-dark" style="font-size:15px;">글쓴이</td>
               <!-- 이름표현 없이 관리자 등장 -->
               <td width="120px" class="td1">관리자</td>  
               <td class="badge badge-dark" style="font-size:15px;">작성일</td>
               <td width="190px" class="td1"><%=sdate %></td>
               <td class="badge badge-dark" style="font-size:15px;">조회수</td>
               <td width="110px" class="td1"><%=hit %></td>
            </tr>
</table>

<table style="border-collapse: separate; border-spacing: 0 10px;">

   <tr>
      <td class="badge badge-dark" style="font-size:17px;">제목</td>
   </tr>
   
   <tr>
   	  <td class="td1"><%=title %></td>
   </tr>
   
   <tr>
      <td class="badge badge-dark" style="font-size:17px;">내용</td>
   </tr>
   
   <tr>
      <td><textarea name="content" style="width:600px;height:300px;" readOnly><%=content %></textarea></td>
   </tr>

</table>

<%
if("Y".equals(admin) ){
%>
	<table>
	<tr>
		<td><input type="submit" value="수정" class="btn btn-secondary" onClick="location='nBoardModify.jsp'" style="width:100px;"></td>
		<td><input type="button" value="삭제" class="btn btn-secondary" style="width:100px;color:#fdfde9;" onClick="location='nBoardDelete.jsp?bunq=<%=bunq%>'"></td>
	</tr>
	</table>
<%
}
%>
	
	</div>
	
</form>

<br>
<br>
<br>
<br>

</section>

<%@ include file = "../include/footer.jsp" %> 
	
</body>
</html>