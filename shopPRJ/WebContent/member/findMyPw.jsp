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
    
    <div id="findForm">
    	
    	
    
    	<form action="/findPw.do" method="post">
        	<label for="email"><b>id 입력</b></label>
        	<input type="text" name ="id" class="logintxt">
        	<label for="email"><b>email 입력</b></label>
        	<input type="text" name ="email" class="logintxt">
        	<input type="submit" name="find" value="찾기" id="findBtn">
        </form>
        

    	<% String result = (String)request.getAttribute("result"); %>
    	
    	<% if(result ==  "notFound") {%>
    		<p id = "msg"> 아이디를 찾을 수 없습니다 </p>
        <% } else if(result!=null) {  %>
        	<p id="msg">당신의 ID는 <%=result %> 입니다</p>
    	<% } %>
    	
       
    
    
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