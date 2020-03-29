<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String header_sessionUserid = (String) session.getAttribute("sessionUserid");
%>
           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="../css/menu_footer.css">

<body>

	

<footer class="section footer-classic context-dark bg-image" style="background:#336600; clear:both; width:1898px;">
        <div class="container1">

          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html">          </a>
              <br><br><br><br>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We are an award-winning creative agency, dedicated to the best result in web design,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;promotion, business consulting, and marketing.</p>
                <!-- Rights-->
                <p class="rights"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;©  </span><span class="copyright-year">2020</span><span> </span><span>Waves</span><span>. </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
            <br>
              <h5>Contacts</h5>
              <br>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>서울특별시 서대문구 남가좌동 3-108</dd>
              </dl>
              <dl class="contact-list">
              <br>
                <dt>email:</dt>
                <dd>sohasarah@naver.com / sohasarah@daum.net</dd>
              </dl>
              <dl class="contact-list">
              <br>
                <dt>phones:</dt>
                <dd>010-5780-3412</dd>
                <br>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
            <br>
              <h5>Links</h5>
              <br>
              <ul class="nav-list">
         <%
              if( header_sessionUserid == null || "".equals(header_sessionUserid)){
         %> 
              	<li><a href="../member/login.jsp">로그인</a></li>
         <%
              }else{
         %>
         		<li><a href="../member/logoutsub.jsp'">로그아웃</a></li>
         <%
              }
         %>
                <li><a href="../nboard/nBoardList.jsp">공지사항</a></li>
                <li><a href="../pboard/pBoardList.jsp">자유게시판</a></li>
                <li><a href="../include/condition1.jsp">이용약관</a></li>
                <li><a href="../include/condition2.jsp">운영정책</a></li>
                
              </ul>
            </div>
          </div>
        </div>
        <div class="row no-gutters social-container">
          <div class="col"><a class="social-inner" href="https://www.facebook.com/profile.php?id=100004733078202"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="https://www.instagram.com/jeongsoha/"><span class="icon mdi mdi-instagram"></span><span>instagram</span></a></div>
          <div class="col"><a class="social-inner" href="https://www.instagram.com/jeongsoha/"><span class="icon mdi mdi-twitter"></span><span>twitter</span></a></div>
         
        </div>
      </footer>

</body>
</html>