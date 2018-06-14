<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="shop.product.ProductDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

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

    <br>
    <br>
    <br>
    <br>
    <h1>Product</h1>
    	<br>
    	<br>
    	<br>
    	<br>
	    <table>
	    	<%
			List productList=(List)request.getAttribute("productList");
	    	int trChk = 0;
	    	for(int i=0;i<productList.size();i++){
	    		ProductDTO product = (ProductDTO)productList.get(i);
	    		trChk++;
	    		if(trChk==0){%>
		    	<tr>
				<%}%>				
	    			<td width=250  height=350 >
	    			<img width=250 height=250 align="middle" src='image/<%=product.getProductImage()%>'><br>
	    			<p style='text-align:center'><%=product.getProductName()%></p>
	    			<p style='text-align:center'><%=product.getProductPrice()%></p>
	    			</td>
	    		<% 
	    		if(trChk>=3){
		    		trChk=0;%>
		    	</tr><%}
	    	}%>    	
	    </table>
	    <p style='text-align:center'>
	    <% 	
	    	int pageSize=0; 
	    	int pages =0;
	    	if(request.getParameter("page")!=null)
	   			pages =Integer.parseInt( request.getParameter("page"));

	    
	    	if(request.getAttribute("pageSize")!=null)
	    		pageSize = Integer.parseInt( request.getAttribute("pageSize").toString()); 
	 
	    	int maxPages =(int)(pageSize/9);
	    	int maxPage=0;
	    	if(pages>=5){
	    		out.print("<a href='productList?page="+(((pages/5)-1)*5)+"'>");
	    		out.print("[<]");
	    		out.print("</a>");
	    	}
	    	
	    	int pageNums =  (maxPages/5)-(pages/5);
	    	if(pageNums>0)maxPage=5;
	    	else maxPage = (maxPages-(pages/5)*5)+1;

	    	for(int pageNum=(pages/5)*5; pageNum < ((pages/5)*5)+maxPage; pageNum++){
	    		out.print("<a href='productList?page="+(pageNum)+"'>");
	    		out.print("["+(pageNum+1)+"]");
	    		out.print("</a>");
	    	} 
	    	if((maxPages/5)>(pages/5)){
	    		out.print("<a href='productList?page="+(((pages/5)+1)*5)+"'>");
	    		out.print("[>]");
	    		out.print("</a>");
	    	}
	    	%>
	    </p>
	<!-- 이곳에 목록 추가 -->
        
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