<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/member.css" type="text/css" media="all" />

</head>
<body>
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <%@ include file="../commons/header.jspf" %>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
    
    <div id="loginForm">
    	
    	
    	<% String msg = (String)request.getAttribute("msg"); %>
        <% if(msg != null) {%>
        	<p id="msg"><%=msg %></p>
        <% } else {  %>
    		<p id = "msg"> &nbsp; </p>
    	<% } %>
    	
    	<form action="/login.do" method="post">
        	<label for="id"><b>id</b></label>
        	<input type="text" name ="id" class="logintxt">
        	<label for="pw"><b>password</b></label>
        	<input type="password" name="pwd" class="logintxt">
        	<input type="submit" name="login" value="로그인" id="loginBtn">
        	<input type="button" name="join" value="회원가입" id="joinBtn" onClick="location.href='/'">
        	<a href='./findMyId.jsp'><p>아이디 찾기</p></a>
        	<a href='./findMyPw.jsp'><p>비밀번호 찾기</p></a>
        </form>
        
    
    
    </div>
    
    
    
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
   
   <%@ include file="../commons/sidebar.jspf" %>
   
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  <!-- Side Full -->
  
  <!-- End Side Full -->
  <!-- Footer -->
  
  <%@ include file="../commons/footer.jspf" %>
  
  <!-- End Footer -->
</div>
<!-- End Shell -->
</body>
</html>