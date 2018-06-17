<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="shop.product.ProductDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<title>Insert title here</title>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<style>
img{
	width:220px;
 	height:290px;
 	align:center;
 	margin:10px;
}
a{
	text-decoration:none;
}
</style>
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


    <br>
    <h1>&nbsp;&nbsp;전체상품</h1>
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
				<%}
				
	    		String price = String.format("%,d", product.getProductPrice());
				%>
					
					
					
		    			<td width=240  height=350 >
		    				<a href="productDetail?productNo=<%=product.getProductNo()%>">
				    			<img  src='image/<%=product.getProductImage()%>0.jpg'><br>
				    			<p style='text-align:center'><%=product.getProductName()%></p>
				    			<p style='text-align:center'><%=price%>￦</p>
			    			</a>	
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
	    		out.print("<a href='productList?page="+((((pages/5)-1)*5)+4)+"&category="+category+"&row_price="+row+"&high_price="+high+"&keyword="+keyword+"'>");
	    		out.print("[<]");
	    		out.print("</a>");
	    	}
	    	
	    	int pageNums =  (maxPages/5)-(pages/5);
	    	if(pageNums>0)maxPage=5;
	    	else maxPage = (maxPages-(pages/5)*5)+1;

	    	for(int pageNum=(pages/5)*5; pageNum < ((pages/5)*5)+maxPage; pageNum++){
	    		out.print("<a href='productList?page="+(pageNum)+"&category="+category+"&row_price="+row+"&high_price="+high+"&keyword="+keyword+"'>");
	    		out.print("["+(pageNum+1)+"]");
	    		out.print("</a>");
	    	} 
	    	if((maxPages/5)>(pages/5)){
	    		out.print("<a href='productList?page="+(((pages/5)+1)*5)+"&category="+category+"&row_price="+row+"&high_price="+high+"&keyword="+keyword+"'>");
	    		out.print("[>]");
	    		out.print("</a>");
	    	}
	    	%>
	    </p>
	<!-- 이곳에 목록 추가 -->
        
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
<script>


	$("img").mouseover(function(){//이미지 마우스가 들어올때
		var preSrc = $(this).attr("src");
		$(this).attr("src", preSrc.replace('0.jpg','1.jpg'));
	});
	$("img").mouseleave(function(){//이미지 마우스가 벗어날때
		var preSrc = $(this).attr("src");
		$(this).attr("src", preSrc.replace('1.jpg','0.jpg'));
	});


</script>