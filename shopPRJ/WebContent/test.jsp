<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <table width="550" border="1">

	<%
		// null로 초기화 한다.
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			// 사용하려는 데이터베이스명을 포함한 URL 기술 
			String url = "jdbc:mysql://localhost:3306/project";
			String id = "admin";
			// 사용자계정 
			String pw = "1234";
			// 사용자계정의 패스워드 
			// 데이터베이스와 연동하기 위해 DriverManager에 등록한다. 
			Class.forName("com.mysql.jdbc.Driver");
			// DriverManager 객체로부터 Connection 객체를 얻어온다. 
			conn = DriverManager.getConnection(url, id, pw);
			// 커넥션이 제대로 연결되면 수행된다.
			out.println("제대로 연결되었습니다.");

			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// 결과를 한 행씩 돌아가면서 가져온다. 
				//String member_no = rs.getString("member_no");
				//String member_name = rs.getString("member_name");
				String member_no = rs.getString("memberNo");
				String member_name = rs.getString("memberName");
			
			%> <tr> <td width="100"><%=member_no%><%=member_name%></td></tr>
			

	
		<% }
	
			// 예외가 발생하면 예외 상황을 처리한다. 
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
   </table>
</body>
</html>