<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String msg = (String)request.getAttribute("msg");
	String reID= (String)request.getAttribute("reID");
	String check = (String)request.getAttribute("check");
	request.setAttribute("check", check);
	if(msg == null){
		msg = "";
	}
	if(reID != null){
		id=reID;
	}
	
	

%>
	<center>	
	<form action="/CheckId.do">
		<input type="text" value="<%=id %>" name="id">
		<input type="submit" value="중복체크">
	</form>
	<h1><%=msg %></h1>
	<input type="button" value="확인" onclick="check()">
	</center>
	
	<script>
		function check(){
			opener.document.getElementById("idCheck").value = "<%=check%>";
			this.close();
						
		}
	
	</script>

</body>
</html>