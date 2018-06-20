<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="shop.product.ProductDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/member.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/ordersheet.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/layerpopup.css" type="text/css" media="all" />

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
    
    
    
    
    <div id="container">
        <!-- content -->
        <div id="order" class="order_sc _root _cartDiv">

<%
ProductDTO productDTO=(ProductDTO)request.getAttribute("productDTO");
int quantity = Integer.parseInt(request.getAttribute("quantity").toString());
String price = String.format("%,d", (productDTO.getProductPrice()* quantity));//금액 ,찍기


%>




<div class="order_header">
    <h3 class="order_payment"><span class="blind">주문/결제</span></h3>

</div>



<form id="orderForm" name="orderForm" class="_orderForm" method="post">
    <input type="hidden" name="tempOrderId" value="">
    <input type="hidden" name="donAgree" value="false" class="_donAgree _certificationForm">
    <input type="hidden" name="billingPgId" class="_payForm">
    <input type="hidden" name="reserveSeq" value="2120905542" class="_payForm">
    <input type="hidden" name="fdsUuid" value="" class="_fdsUuid _certificationForm">
    <input type="hidden" name="naverToken" value="" class="_naverToken _certificationForm">
    <input type="hidden" name="naverInitToken" value="" class="_naverInitToken _certificationForm">
    <input type="hidden" name="isNaverPayPasswordAvailable" value="true" class="_certificationForm">
    <input type="hidden" name="authentificationToken" value="" class="_authentificationToken _certificationForm">

    <div class="order_content">
<div class="product_area">
    <span class="top_line"></span>
    <table cellspacing="0" class="tb_products">
	    <caption>주문내역</caption>
	    <colgroup>
	        <col width="500">
	        <col width="135">
	        <col width="120">
	        <col width="90">
	        <col width="110">
	        <col>
	    </colgroup>
	    <thead>
	    <tr>
	    <th scope="col" class="product">상품정보</th>
	    <th scope="col">배송비</th>
	    <th scope="col">수량</th>
	    <th scope="col" class="col_price">주문금액</th>
	    </tr>
	    </thead>
	    <tbody>
		


		<tr>
			<td>
			    	<span class="bdr"></span>
			    <div class="product_info">
					<a href="http://smartstore.naver.com/main/products/635838342" class="product_thmb" target="_blank">
	        			<span class="mask"></span><img src="/image/<%=productDTO.getProductImage() %>0.jpg" alt="남자 여름 와이셔츠 체크 남방, 95~130빅사이즈" width="92" height="92">
	        		</a>
			        <div class="product_dsc">
								<strong class="name_seller">[스마트스토어] 핫코드</strong>
			        	<a href="http://smartstore.naver.com/main/products/635838342" target="_blank" class="product_name"><strong><%=productDTO.getProductName() %></strong></a>
						<!--
				            <div class="option">
					            <span class="ico_option"><span class="blind">옵션</span></span>
					            <ul class="option_list">
										<li>
											상품명: 선택07) HC1셔츠 / 사이즈: {100}/1개 
										</li>
					            </ul>
				            </div>
				           -->

			        </div>
			        <span class="vm"></span>
			    </div>
			</td>

				
				<td rowspan="1">

		            		<span class="deli_fee"><span class="sp_order ico_deli"></span><span class="sum _deliveryPrice2018061875095748"></span><span class="_deliveryPriceText2018061875095748">무료<a href="#" class="sp_order ico_que _deliveryFeeLayerBtn2018061875095748 _click(nmp.front.order.order_sheet.showLayerDeliveryFee(2018061836947600)) _stopDefault" style="display:none;"></a></span>
					</span>
                </td>

			<td><%=quantity %>개</td>
			
			<td class="col_price">
			    <!-- <span class="orgn_price _productOrderTotalAmt2018061836947600"><em>23,800</em>원</span>  -->
			    <strong><em class="_productOrderPayAmt2018061836947600"><%=price %></em>원</strong>
			</td>
		</tr>

	    </tbody>
	</table>
</div>        <div class="cutting_line">
            <span class="ico_scissors"></span>
            <span class="shdw_left"></span>
            <span class="shdw_right"></span>
        </div>
<div class="destination_wrap">
    <div class="deliver_wrap _deliveryInfos _deliveryInfoType">
        <h4><span class="blind">배송지정보</span></h4>
			
        
			
        	<div class="_allAddressArea">
	            <div class="deliver_option_wrap new_delivery">
		            <strong class="req short" title="필수입력">수령인</strong>
		            <div class="deliver_option">
			            <input type="text" title="수령인" placeholder="(50자 이내로 입력)" maxlength="50" class="inp_txt2 name _deliveryForm" name="deliveryAddress.receiverName" value="">
			            <input type="hidden" name="deliveryAddress.purchaseMemberDeliveryPlaceSeq" value="">
		            </div>
	            </div>
	            
	            <div class="deliver_option_wrap">
		            <strong class="req short" title="필수입력">연락처</strong>
		            <div class="deliver_option">
			           <div class="cellphone_group">
				            <!-- select box -->
				            <input type="text" title="핸드폰번혼첫번째" id="deliveryAddress.telNo1_1" name="deliveryAddress.telNo1___1" value="" class="inp_txt2 _deliveryForm _group_tel1_2 _onlyNumberTarget" maxlength="4">
							
							-
				            <input type="text" title="핸드폰번호 중간" id="deliveryAddress.telNo1_2" name="deliveryAddress.telNo1___2" value="" class="inp_txt2 _deliveryForm _group_tel1_2 _onlyNumberTarget" maxlength="4">
				            -
				            <input type="text" title="핸드폰번호 뒷자리" id="deliveryAddress.telNo1_3" name="deliveryAddress.telNo1___3" value="" class="inp_txt2 _deliveryForm _group_tel1_3 _onlyNumberTarget" maxlength="4">
				        </div>
			            
		            </div>
		            <input type="hidden" id="reliefPhoneNumberHidden" class="_deliveryForm _reliefPhoneNumberUseYn" name="deliveryAddress.reliefPhoneNumberUseYn">
	            </div>

	            <div class="deliver_option_wrap deli_address">
		            <strong class="req" title="필수입력">배송지 주소</strong>
		            <div class="deliver_option">
			            <span class="zipcode_group">
				            <input type="text" title="우편번호" class="inp_txt2 zipcode _deliveryForm _click(nmp.front.order.popup.openAddressPopup(deliveryAddress,,true,false)) _stopDefault" name="deliveryAddress.zipCode" value="" readonly="readonly" maxlength="7">
				        </span>
			            <button class="btn _click(nmp.front.order.popup.openAddressPopup(deliveryAddress,,true,false)) _stopDefault">우편번호</button>
			            
				        <input type="hidden" name="deliveryAddress.roadNameAddress" value="" class="_deliveryForm">
				        <input type="hidden" name="deliveryAddress.lotNumberAddress" value="" class="_deliveryForm">
						<input type="hidden" name="deliveryAddress.roadNameAddressYn" value="false" class="_deliveryForm">
			            <div class="addr_detail">
			            	<input type="text" title="주소" class="inp_txt2 addr_input1 _deliveryForm" name="deliveryAddress.baseAddress" value="" readonly="readonly">
				        	<input type="text" title="상세주소" class="inp_txt2 addr_input2 _deliveryForm" name="deliveryAddress.detailAddress" value="" maxlength="50">
			            </div>
			            <p class="lotNumberAddress">
						 </p>
		            </div>
	            </div>
			</div>
		 <div class="_deliveryMemoOuter deliver_option_wrap deli_comments">
            <strong class="_deliveryMemoHeader">배송메모</strong>
            <div class="_deliveryMemoInner deliver_option">
            
			            <div class="comments deliveryMemo">
			            	<p class="products_tit _deliveryMemoProductName deliverySingleMemo" style="display:none;"><%=productDTO.getProductName() %></p>
				            <p class="products_tit _deliveryMemoProductName deliveryProductMemo">
								<%=productDTO.getProductName() %>
				            </p>
				            	<div class="dropdown_wrap">
					            	<input type="text" placeholder="배송 메세지를 입력해 주세요." title="배송 메세지" name="deliveryMemo" class="deli_msg placeholder _deliveryForm deliverySingleMemo _click(nmp.front.order.order_sheet.showLatestDeliveryMemo()) _stopDefault">
						            <input type="text" placeholder="배송 메세지를 입력해 주세요." title="배송 메세지" name="deliveryMemos.2018061865715207" class="deli_msg placeholder _deliveryForm particularDeliveryMemo deliveryProductMemo _click(nmp.front.order.order_sheet.showLatestDeliveryMemo(2018061865715207)) _stopDefault" style="display:none;">
						           	<a href="#" title="배송메세지 선택" class="dropdown deliverySingleMemo _click(nmp.front.order.order_sheet.showLatestDeliveryMemo(,deliverySingleMemo)) _stopDefault"><span class="dropdown_arr _stopDefault"></span></a>
						           	<a href="#" title="배송메세지 선택" class="dropdown deliveryProductMemo _click(nmp.front.order.order_sheet.showLatestDeliveryMemo(2018061865715207,particularDeliveryMemo)) _stopDefault" style="display:none;"><span class="dropdown_arr _stopDefault"></span></a>
					            </div>
				            <span class="length deliverySingleMemo"><em class="deliveryMemoRealLength">0</em>/<em class="deliveryMemoMaxLength">500</em></span>
				            <span class="length deliveryProductMemo" style="display:none;"><em class="particularDeliveryMemoRealLength">0</em>/<em class="particularDeliveryMemoMaxLength">500</em></span>
			            </div>
            </div>
        </div>
			
    </div>
    
    <span class="shdw_left"></span>
    <span class="shdw_right"></span>
</div><input type="hidden" name="prestigeKey" value="" class="_certificationForm">


        <div class="cutting_line cutting_line_v2">
            <span class="ico_scissors"></span>
            <span class="shdw_left"></span>
            <span class="shdw_right"></span>
        </div>
        <div class="payment_agree_wrap">
            <button class="btn_payment _click(nmp.front.order.order_sheet.account()) _stopDefault _doPayButton"><span class="txt_paymentt" style="color:white;">결제하기</span></button>
            <div class="shdw_bottom"></div>
        </div>
    </div>
<input type="hidden" name="_callback" value="nmp.front.order.order_sheet.refreshPage"></form>




              </div>
    
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