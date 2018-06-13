<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<style>
 #map {
   width: 80%;
   height: 400px;
   margin : auto;
   margin-top : 5%;
 }
</style>


</head>
<body>
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <%@ include file="commons/header.jspf" %>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
    	<div id="map">
    	<p style="margin-bottom: 20px;"><b>contact</b></p>
    	
    		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.345419664936!2d126.98314111471021!3d37.570483131660964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2e88bccb98d%3A0x4b144ec32ce42faf!2z7ISc7Jq4WU1DQQ!5e0!3m2!1sko!2skr!4v1528891383783" width="100%" height="80%" frameborder="0" style="border:0" allowfullscreen></iframe>
    	
    	<p style="margin-top:20px;"><b>서울특별시 종로구 종로2가 9 </b></p>
    	</div>
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
   
   <%@ include file="commons/sidebar.jspf" %>
   
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  <!-- Side Full -->
  
  <!-- End Side Full -->
  <!-- Footer -->
  
  <%@ include file="commons/footer.jspf" %>
  
  <!-- End Footer -->
</div>
<!-- End Shell -->
</body>
</html>