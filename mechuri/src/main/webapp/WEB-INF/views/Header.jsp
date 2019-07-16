<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html;charset=UTF-8");
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String seUsername = "";
	String seNaverUsername = "";
	try {
		seUsername = (String) session.getAttribute("mem_name");
		seNaverUsername = (String) session.getAttribute("naverId");
		if (seNaverUsername == null) {
			seNaverUsername = "";
		}
		if (seUsername == null) {
			seUsername = "";
		}
	} catch (Exception e) {
		throw new ServletException(e);
	}

	String seId = "";
	try {
		seId = (String) session.getAttribute("mem_id");
		if (seId == null) {
			seId = "";
		}
	} catch (Exception e) {
		throw new ServletException(e);
	}

	String seStatus = "";
	try {
		seStatus = (String) session.getAttribute("mem_status");
		if (seStatus == null) {
			seStatus = "";
		}
	} catch (Exception e) {
		throw new ServletException(e);
	}
	
	String naverStatus = "";
	try{
		naverStatus = (String)session.getAttribute("naverStatus");
		if(naverStatus == null){
			naverStatus = "";
		}
		
	}catch(Exception e){
		throw new ServletException(e);
	}

	String seBrand = "";
	try {
		seBrand = (String) session.getAttribute("mem_brand");
		if (seBrand == null) {
			seBrand = "";
		}
	} catch (Exception e) {
		throw new ServletException(e);
	}

	String seNick = "";
	try {
		seNick = (String) session.getAttribute("mem_nick");
		if (seNick == null) {
			seNick = "";
		}
	} catch (Exception e) {
		throw new ServletException(e);
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Title insert here</title>
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/style.min.css" />
<link rel="stylesheet" href="assets/css/modules.css" />
<style type="text/css">
#accordian li {
	list-style-type: none;
}

/* 서브메뉴 스타일 */
#accordian ul ul li a {
	color: white;
	text-decoration: none;
	font-size: 11px;
	line-height: 27px;
	display: block;
	padding: 0 15px;
	-webkit-transition: all 0.15s;
	-moz-transition: all 0.15s;
	-o-transition: all 0.15s;
	-ms-transition: all 0.15s;
	transition: all 0.15s;
}

#accordian ul ul li a:hover {
	background: #003545;
	border-left: 5px solid #09c;
}

/* active 클래스 외에 것은 보이지 않게 하기 */
#accordian ul ul {
	display: none;
}

#accordian li.active ul {
	display: block;
}
</style>
</head>
<body>


	<!-- Header -->
	<header id="header"> <nav class="left"> <a href="#menu"><span>Menu</span></a>
	</nav> <a href="index.jsp" class="logo">Mechuri</a> <nav class="right">
 <%
      if (!seUsername.equals("")) {
         out.print(seUsername);
   %> <a style="color: black;" href="logout.do">로그아웃</a> 
   
   <%
    } 
      else if (!seNaverUsername.equals("")) {
       out.print(seNaverUsername); %> 
       <a style="color: black;" href="logout.do">로그아웃</a> 
  <!--      <span>네이버에서 완전히 로그아웃해야합니다.</span> -->
    <% } else { %>
  <a href="/mechuri/login.do" class="button alt">Log in</a>
<% } %>
  <%--   <c:choose>
      <c:when test="seNaverUsername eq ''">
         <a href="/mechuri/login.do" class="button alt">Log in</a>
      </c:when>

      <c:otherwise>
         <input type='button' value='Log in' style="display : none">

         <a href="/mechuri/memLogin.do" class="button alt">Log in</a>
      </c:otherwise>
   </c:choose> --%> 
   </nav> 
</header>

	<!-- 우측 마이페이지 메뉴 -->
<%  if (seStatus.equals("")) { }%>

<%  if (seStatus.equals("M")||naverStatus.equals("M")) { %>
<nav id="menu">
	<div id="accordian">
		<ul>
			<li>
				<p>
					<span class="icon-dashboard"></span>마이페이지
				</p>
				<ul>
					<li><a href="userInfo.do">개인정보 수정</a></li>
					<li><a href="#">내 글보기</a></li>
					<li><a href="#">내 댓글 보기</a></li>
					<li><a href="#">내 리뷰 보기</a></li>
					<li><a href="#">내가 좋아요한 제품</a></li>
					<li><a href="#">내 구매 정보</a></li>
				</ul>
			</li>
			<li class="active">
				<p>
					<span class="icon-tasks"></span>쪽지함
				</p>
				
			</li>
		</ul>
	</div>
</nav>
<% } %>	
	
	
<!-- 기업회원 -->
<% if (seStatus.equals("C")) {%> 
<nav id="menu">
	<div id="accordian">
		<ul>
			<li>
				<p>
					<span class="icon-dashboard"></span>자사제품 전체보기
				</p>
				
			</li>
			<li class="active">
				<p>
					<span class="icon-tasks"></span>할인기간 등록하기
				</p>
				
			</li>
			<li>
				<p>
					<span class="icon-calendar"></span>제품등록하기
				</p>
				
			</li>
			<li>
				<p>
					<span class="icon-heart"></span>기업정보수정
				</p>
				<p>
					<span class="icon-heart"></span>쪽지함
				</p>
				
			</li>
		</ul>
	</div>
</nav>
<% } %>	



<!-- 관리자 -->
<% if (seStatus.equals("A")) {%> 
<nav id="menu">
	<div id="accordian">
		<ul>
			<li>
				<p>
					<span class="icon-dashboard"></span>일반회원 목록보기
				</p>
				
			</li>
			<li class="active">
				<p>
					<span class="icon-tasks"></span>기업회원 목록보기
				</p>
				
			</li>
			<li>
				<p>
					<span class="icon-calendar"></span>제품등록 수정 승인
				</p>
				
			</li>
			<li>
				<p>
					<span class="icon-heart"></span>할인기간 승인
				</p>
				
			</li>
		</ul>
	</div>
</nav>
<% } %>		

<!-- 헤더 네이게이션바 메뉴 -->
<section class="MOD_MENU" data-theme="_bgp">
  <div data-layout="_r" class="nopadding">
    <nav class="MOD_MENU_Nav">
      <p class="MOD_MENU_Title">Menu</p>
      <svg class="MOD_MENU_Button" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
        <rect width="30" height="6"/>
        <rect y="24" width="30" height="6"/>
        <rect y="12" width="30" height="6"/>
      </svg>
      <ul class="AP_Menu_List">
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
          <ul>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item long title</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
          </ul>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
          <ul>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item long title</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</section>
<!--END MODULE AREA 2: Menu 1-->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/HeaderMenu.js"></script>

</body>
</html>