<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon2.jsp" %>

<%
String bunq = request.getParameter("bunq"); // fBoardDetail.jsp 에서 보낸 unq 받아오기

String sql = " SELECT title,content "
		   + " FROM pboard "
		   + " WHERE bunq='"+bunq+"' ";

ResultSet rs = stmt.executeQuery(sql);
rs.next();

String title = rs.getString("title");
String content = rs.getString("content");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈</title>
</head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="../css/menu_footer.css">

<script>

function fn_WriteInsert(){
		/* 데이터 유효성  체크 */
		var f = document.frm;
		
		if( f.title.value=="" ){
			alert("제목를 입력해주세요.");
			f.title.focus();
			return false;  // 자바스크립트 중단!
		}
		
		if( f.content.value=="" ){
			alert("내용을 입력해주세요.");
			f.content.focus();
			return false;  // 자바스크립트 중단!
		}
	
		f.submit();
	}

</script>

<body> 

<%@ include file = "../include/header.jsp" %>

<section>
<br>
<br>
<h1 style="text-align:center;">수정화면처리</h1>
<br>
<br>
<br>

<form name="frm" method="post" action="fBoardModifySave.jsp">

<input type="hidden" name="bunq" value="<%=bunq %>" >  <!-- 유니크값 같이 보내기 -->

	<div align="center">
	
	<table style="margin-left:0px;border-collapse: separate;border-spacing:0 10px;">
		<tr>
        	<th>제목</th>
        </tr>
        <tr>
        	<td><input type="text" name="title"  style="width:600px;" value="<%=title%>"></td>
        </tr>
         
	     <tr>
	        <th>내용</th>
	     </tr>
	     <tr>
	      <td><textarea name="content" style="width:600px;height:300px;"><%=content%></textarea></td>
	     </tr>
	     </div>
	</table>
	
	<table style="margin-left:400px;">
	<tr>
		<td><input type="submit" value="수정완료" style="width:100px;" onClick="fn_WriteInsert(); return false;"></td>
		<td><input type="reset" value="취소" style="width:100px;color:#fdfde9;"></td>
	</tr>
	</table>
</form>



<br>
<br>
<br>
<br>

</section>


<%@ include file = "../include/footer.jsp" %> 
	
</body>
</html>