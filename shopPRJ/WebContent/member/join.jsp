<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/style.css" type="text/css"	media="all" />
<link rel="stylesheet" href="../css/member.css" type="text/css"	media="all" />

<link rel="stylesheet" href="../css/join.css" type="text/css"	media="all" />

<style>
#confirmCheck{ visibility:hidden;}
</style>

</head>
<body>
	<!-- Shell -->
	<div class="shell">
		<!-- Header -->
		<%@ include file="../commons/header.jspf"%>
		<!-- End Header -->
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			<!-- Content -->
			<div id="content">
				<div class="JoinPage">
					<br>
					<h1>&nbsp;&nbsp;기본정보</h1>
					<br>
					<br>
					<p class="required ">
						<img src="/css/images/ico_required.gif" alt="필수" /> 필수입력사항
					</p>
					<br>
					<div class="boardWrite">
						<form action="/Join.do" method="post">
							<!--  <table border="1" summary=""> -->
							<table id="jointable" summary="">
								<tbody>
									<tr>
									<% String check = (String)request.getAttribute("check"); 
										if(check == null) { check = "uncheckd"; }
									
									%>
										<th scope="row">아이디 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="memberId" name="memberId" placeholder=""	value="" type="text" maxlength="16"/> (영문소문자/숫자,4~16자)
										<input type="button" id="idCheck" value="중복체크" onclick="checkId()">
										<input type="checkbox" id="confirmCheck" name="cofirmCheck" display="none" <%=check %>>
										 </td>
									</tr>
									<tr>
										<th scope="row">비밀번호 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="passwd" name="memberPwd"	autocomplete="off" maxlength="16" value="" type="password" maxlength="16" /> 
										(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="user_passwd_confirm"	name="memberPwdConfirm" autocomplete="off" maxlength="16" value="" type="password" /> </td>
									</tr>
									<tr class="">
										<th scope="row">비밀번호 확인 질문 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><select id="hint" name="hint">
												<option value="hint_01">기억에 남는 추억의 장소는?</option>
												<option value="hint_02">자신의 인생 좌우명은?</option>
												<option value="hint_03">자신의 보물 제1호는?</option>
												<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
												<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
												<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
												<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
												<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
												<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
												<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
												<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
												<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
												<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
												<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
												<option value="hint_15">내가 좋아하는 캐릭터는?</option>
										</select></td>
									</tr>
									<tr class="">
										<th scope="row">비밀번호 확인 답변 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="hint_answer" name="hint_answer"
											class="inputTypeText" placeholder="" value="" type="text" /></td>
									</tr>
									<tr>
										<th scope="row" id="memberName">이름 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="memberName" name="memberName" class="inputTypeText" placeholder="" value="" type="text" />
											<span id="under14Msg" class="displaynone">14세 미만 사용자는 법정대리인 동의가 필요합니다.</span></td>
									</tr>
									<tr>
										<th scope="row" id="memberAge">나이 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="memberAge" name="memberAge" class="inputTypeText" placeholder="" value="" type="text" onKeyPress="return numkeyCheck(event)"/></td>
									</tr>
									<tr>
										<th scope="row">성별 <img	src="/css/images/ico_required.gif" class="" alt="필수" /></th>
										<td><input id="is_sex0" name="memberGender" value="1" type="radio" /><label>남자</label>
										    <input id="is_sex1" name="memberGender" value="1" type="radio" /><label>여자</label></td>
									</tr>

									<tr class="">
										<th scope="row">주소 <img	src="/css/images/ico_required.gif" class="" alt="필수" /></th>
										<td><input id="postcode1" name="postcode"	class="inputTypeText" placeholder="" maxlength="14" value="" type="text" /> 우편번호<br />
											<input id="addr1" name="addr1"	class="inputTypeText" placeholder="" value="" type="text" />기본주소<br/>
											<input id="addr2" name="addr2"	class="inputTypeText" placeholder="" value="" type="text" />나머지주소</td>
									</tr>
									<tr class="">
										<th scope="row">일반전화 <img src="/css/images/ico_required.gif" class="displaynone" alt="필수" /></th>
										<td><select id="phone1" name="localPhone">
												<option value="02">02</option>
												<option value="031">031</option>
												<option value="032">032</option>
												<option value="033">033</option>
												<option value="041">041</option>
												<option value="042">042</option>
												<option value="043">043</option>
												<option value="044">044</option>
												<option value="051">051</option>
												<option value="052">052</option>
												<option value="053">053</option>
												<option value="054">054</option>
												<option value="055">055</option>
												<option value="061">061</option>
												<option value="062">062</option>
												<option value="063">063</option>
												<option value="064">064</option>
												<option value="0502">0502</option>
												<option value="0503">0503</option>
												<option value="0504">0504</option>
												<option value="0505">0505</option>
												<option value="0506">0506</option>
												<option value="0507">0507</option>
												<option value="070">070</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-
										<input id="phone2" name="phone2" maxlength="4" value=""	type="text" onKeyPress="return numkeyCheck(event)" />-<input id="phone3" name="phone3" value="" type="text" onKeyPress="return numkeyCheck(event)"/></td>
									</tr>
									<tr class="">
										<th scope="row">휴대전화 <img
											src="/css/images/ico_required.gif" class="" alt="필수" /></th>
										<td><select id="mobile1" name="mobile1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="mobile2" name="mobile2" maxlength="4" value=""	type="text" onKeyPress="return numkeyCheck(event)"/>
										-<input id="mobile3" name="mobile3"	maxlength="4" onKeyPress="return numkeyCheck(event)"/></td>
									</tr>
									<tr class="">
										<th scope="row">SMS 수신여부 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><label><input id="is_sms0"	name="is_sms" class="ec-base-chk" value="T" type="checkbox" />동의함</label>
										<p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p></td>
									</tr>
									<tr>
										<th scope="row">이메일 <img src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><input id="email1" name="email1" class="mailId"	value="" type="text" />@<input id="email2" name="email2" class="mailAddress" value="" type="text" />
										<select	id="email3" onchange="chageLangSelect()">
												<option value="" selected="selected" >- 이메일 선택 -</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="empas.com">empas.com</option>
												<option value="korea.com">korea.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
										</select> <span id="emailMsg"></span></td>
									</tr>
									<tr class="">
										<th scope="row">이메일 수신여부 <img	src="/css/images/ico_required.gif" alt="필수" /></th>
										<td><label><input id="is_news_mail0" name="is_news_mail"  value="T" type="checkbox" />동의함</label>
										<p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p></td>
									</tr>
								</tbody>
							</table>
							<input type="submit" name="join" value="회원가입" id="loginBtn">
							<input type="button" name="cancle" value="취소" id="joinBtn" onClick="location.href='/'">
						</form>
						<% String msg = (String)request.getAttribute("msg"); %>
				        <% if(msg != null) {%>
				        	<p id="msg"><%=msg %></p>
				        <% } else {  %>
				    		<p id = "msg"> &nbsp; </p>
				    	<% } %>
					</div>
				</div>
			</div>
			<!-- End Content -->
			<!-- Sidebar -->

			<%@ include file="../commons/sidebar.jspf"%>

			<!-- End Sidebar -->
			<div class="cl">&nbsp;</div>
		</div>
		<!-- End Main -->
		<!-- Side Full -->

		<!-- End Side Full -->
		<!-- Footer -->

		<%@ include file="../commons/footer.jspf"%>

		<!-- End Footer -->
	</div>
	<!-- End Shell -->
	
	
	<script type="text/javascript"> 
		<!-- 나이에 숫자만 오도록 입력 -->
		function numkeyCheck(e) { 
			var keyValue = event.keyCode; if( ((keyValue >= 48) && (keyValue <= 57)) ) return true; 
			else return false; 
		}
		
	//	<!-- 메일선택시 mail2란에 입력채움 -->
		function chageLangSelect(){
		    var select = document.getElementById("email3");
		     
		    // select element에서 선택된 option의 value가 저장된다.
		    var selectValue = select.options[select.selectedIndex].value;
		    
		    // 선택된 값을 email2에 저장한다
		    var email2 = document.getElementById("email2");
		    email2.value = selectValue;
		 		    
		}
		
		function checkId(){						// id 특수문자 및  공백, 검사
			
			var id = document.getElementById("memberId").value;
			
			if(!id){							// 아이디를 입력하지 않는 경우
				alert("아이디를 입력하지 않았네요");
				return false;
			}
			else if((id < '0' || id > '9') && (id < 'a' || id > 'z') && (id < 'A' || id > 'Z') ) {
				alert("한글 및 특수문자는 아디로 사용할수 없다 이것아!!");		// 특수문자 사용한 경우
			}
			else if(id > 'A' && id < 'Z'){	// 대문자를 사용한 경우
				alert("대문자를 사용하시면 아니되오")
			}
			else if(id.length<4){
				alert("아이디는 최소 4자이상 되어야 하오!!");		// 특수문자 사용한 경우
				
			}			
			else{
				var parm = "id="+id;
				var url = "/member/confirm.jsp?"+parm;
				open(url,"confirm","toolbar=no,location=no,memubar=no,scrollbars=no,resizable=no,width=360,height=200")
				
			}
		}
		
	
				
		
	</script>


	
	
</body>
</html>