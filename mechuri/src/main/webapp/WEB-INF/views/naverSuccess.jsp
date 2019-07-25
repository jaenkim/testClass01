<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
   src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
   charset="utf-8"></script>
<script type="text/javascript"
   src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
html, div, body, h3 {
   margin: 0;
   padding: 0;
}

h3 {
   display: inline-block;
   padding: 0.6em;
}

form{
   text-align: center;
}
</style>
<script type="text/javascript">
   $(document).ready(function() {
      var mem_id = ${result}.response.id;
      var mem_name = ${result}.response.name;
      var mem_email = ${result}.response.email;
      var mem_nick = ${result}.response.nickname;


      $("#mem_name").html("환영합니다. "+mem_name+"님");

      var nick = ${result}.response.id;
      var mem_email = ${result}.response.email;
//       $("#mem_id").html("네이버id"+mem_id);
      $("#mem_name").html("환영합니다. "+mem_name+"님");
      $("#mem_email").html(mem_email);
      $("#mem_nick").html("별명"+mem_nick);
      
      $("input[name=resultid]").val(mem_id);
      $("input[name=resultname]").val(mem_name);
      $("input[name=resultemail]").val(mem_email);
      $("input[name=resultnick]").val(mem_nick);
      
     });
</script>
</head>
<body>
<jsp:include page="Header.jsp"/>
<br>
   <% 
      String isMyMem = (String)request.getAttribute("isMyMem").toString();
      if (!isMyMem.equals("")){    %>
      <jsp:forward page="ranking/main.jsp"/>
   <% } else { %>
      <h2 style="text-align: center" id="mem_id"></h2>
      <h2 style="text-align: center" id="mem_name"></h2>
      <h4 style="text-align: center" id="mem_email"></h4>
      <h4 style="text-align: center" id="mem_nick"></h4>
      <form action="naverSignUp.do" method="post">
         <input type="hidden" name="resultid" />
         <input type="hidden" name="resultname"  />
         <input type="hidden" name="resultemail"  />
         <input type="hidden" name="resultnick"  />
         <input type="submit" value="간편가입" />
      </form>

   <% } %>   
<jsp:include page="Footer.jsp"/>
</body>
</html>