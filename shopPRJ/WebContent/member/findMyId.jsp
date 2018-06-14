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
    	
    	
    
    	<form action="/findId.do" method="post">
        	<label for="email"><b>email 입력</b></label>
        	<input type="text" name ="email" class="logintxt">
        	<input type="submit" name="find" value="찾기" id="findBtn">
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