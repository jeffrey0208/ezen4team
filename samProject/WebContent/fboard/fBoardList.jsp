<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../include/dbcon2.jsp" %>    
    
<%
String sql = " SELECT "
	       + 	" bunq , "
		   + 	" title , "
		   + 	" userid , "
		   +	" to_char(sysdate,'YYYY-MM-DD') sdate , "
		   + 	" hit "
		   + " FROM pboard "
		   + " ORDER BY "
		   + " bunq desc ";

ResultSet rs = stmt.executeQuery(sql);
				   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈</title>
</head>
<style>
/* #5483b1 */
#hbutton {
	border-top-right-radius:5px; 
	border-bottom-right-radius:5px; 
	margin-left:-3px;

}

#hdiv button {
	border:1px solid #5483b1;
	background-color: rgba(0,0,0,0);
	color:#ffffff;
	padding:5px;
	border-radius: 12px;
	width:5%;
	height:20%;
	float:right;
	margin-left:10px;
	
}

#hdiv button:hover{
	color:white; 
	background-color:#5483b1; 
}

.hdiv1 {

}

.context-dark, .bg-gray-dark, .bg-primary {
    color: rgba(255, 255, 255, 0.8);
}

.footer-classic a, .footer-classic a:focus, .footer-classic a:active {
    color: #ffffff;
}
.nav-list li {
    padding-top: 5px;
    padding-bottom: 5px;
}

.nav-list li a:hover:before {
    margin-left: 0;
    opacity: 1;
    visibility: visible;
}

ul, ol {
    list-style: none;
    padding: 0;
    margin: 0;
}

.social-inner {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    padding: 23px;
    font: 900 13px/1 "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    text-transform: uppercase;
    color: rgba(255, 255, 255, 0.5);
}
.social-container .col {
    border: 1px solid rgba(255, 255, 255, 0.1);
}
.nav-list li a:before {
    content: "\f14f";
    font: 400 21px/1 "Material Design Icons";
    color: #4d6de6;
    display: inline-block;
    vertical-align: baseline;
    margin-left: -28px;
    margin-right: 7px;
    opacity: 0;
    visibility: hidden;
    transition: .22s ease;
}

.table1 {
      	width:1100px;
      	border:1px solid #555555;
      	border-collapse:collapse;
      }
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<body> 
<header style="background-color:#2d3246;height:100px;width:1898px;">
	<div style="float:left;margin-left:100px;">
		<img style="width:250px;height:90px;" src="../images/logo.JPG">
	</div>
	<br>
	<br>
	<div id="hdiv" style="margin-right:100px;">
		<button id="hbutton">회원가입</button> 
		<button id="hbutton">로그인</button> 
		<button id="hbutton">회사소개</button> 
		<button id="hbutton">커뮤니티</button> 
		<button id="hbutton">제품소개</button> 
		<button id="hbutton">홈</button> 
	</div>
</header>

<section>
<br>
<br>
<h1 style="text-align:center;">자유게시판</h1>
<br>
<br>
<br>



<table align="center" style="margin-right:899px;border-collapse: separate;border-spacing:0 10px;">

	<tr>
		<td><input type="button" value="공지사항" OnClick="location='nBoardList.jsp'" style="width:100px;"></td>
		<td><input type="button" value="자유게시판" OnClick="location='fBoardList.jsp'" style="width:100px;"></td>
	</tr>
	
	</table>
	
	<table class="table1" align="center">
      		<tr align="center">
      			<th width="8%" class="td1">번호</th>
      			<th width="60%" class="td1">제목</th>
      			<th width="15%" class="td1">글쓴이</th>
      			<th width="10%" class="td1">작성일</th>
      			<th width="5%" class="td1">조회수</th>
      		</tr>
      		<%
        	int number = 1;
        	while(rs.next()){
        		String bunq = rs.getString("bunq");
        		String title = rs.getString("title");
        		String userid = rs.getString("userid");
        		String sdate = rs.getString("sdate");
        		String hit = rs.getString("hit");
        		
        		
        		
        	%>
        	<tr align="center">
        		<td><%=bunq %></td>
        		<td  style="text-align:left;"><a href="fBoardDetail.jsp?bunq=<%=bunq%>"><%=title %></a></td>
        		<td><%=userid %></td>
        		<td><%=sdate %></td>
        		<td><%=hit %></td>
        	</tr>   
        	<%   	
        		number++;
        	}   	
        	%>
    </teble>  		
      		
    <table align="center" style="margin-left:898px; border-collapse:separate; border-spacing:0 10px;">
	<tr>
		<td><input type="button" value="글쓰기" onClick="location='fBoardWrite.jsp'" style="width:100px;"></td>  <!-- 글쓰기 버튼 -->
	</tr>
	</table>




<br>
<br>
<br>
<br>

</section>



<footer class="section footer-classic context-dark bg-image" style="background: #aabacc;width:1898px;">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
                <p>We are an award-winning creative agency, dedicated to the best result in web design, promotion, business consulting, and marketing.</p>
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2018</span><span> </span><span>Waves</span><span>. </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
              <h5>Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>798 South Park Avenue, Jaipur, Raj</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">dkstudioin@gmail.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">https://karosearch.com</a> <span>or</span> <a href="tel:#">https://karosearch.com</a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5>Links</h5>
              <ul class="nav-list">
                <li><a href="#">About</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">Pricing</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row no-gutters social-container">
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>instagram</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>twitter</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>google</span></a></div>
        </div>
      </footer>
	
</body>
</html>