<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<style type="text/css">
#contents {
    position: relative;
    width: 95%;
    margin: 0 auto;
    padding-top: 40px;
    vertical-align: top;
    min-height: 600px;
}
.xans-product-detail {
    width: 80%;
    max-width: 800px;
    position: relative;
    margin: 0 auto;
    padding: 30px 0 0 0;
}
.xans-product-detail .imgArea {
    float: left;
    width: 50%;
}
.xans-product-detail .imgArea .keyImg img {
    max-width: 100%;
}
.xans-product-detail .infoArea {
    float: right;
    width: 45%;
}
.xans-product-detail .infoArea h3 {
    display: block;
    font-size: 14px;
    color: #000;
}
.xans-product-detail .infoArea h3 span {
    font-weight: normal;
    font-size: 12px;
}
.xans-product-detail .infoArea table {
    border: 0;
    font-size: 11px;
    margin: 0px 0 10px 0;
    font-family: Lato,malgun gothic,맑은고딕,NanumGothic,돋움;
}
caption {
    display: none;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.xans-product-detail .infoArea td {
    padding: 2px 0;
    vertical-align: top;
    text-align: left;
}
th, td {
    border: 0;
    vertical-align: top;
}
element.style {
    font-size: 14px;
    color: #000000;
    width: 250px;
}
.xans-product-detail .product_etc_option {
    margin-top: 20px;
}
#totalProducts {
    margin-bottom: 10px;
}
#totalProducts table {
    margin: 0;
    font-size: 11px;
}
#totalProducts tbody td .quantity input {
    width: 22px;
    height: 21px;
    padding: 0 2px 0 3px;
    line-height: 23px;
    border: 1px solid #d4d8d9;
    border-radius: 3px 0 0 3px;
}
.xans-product-action {
    margin-top: -20px;
}
.xans-product-action .btnArea {
    text-align: left;
}
.xans-product-action .btnArea a.btn1 {
    background: #222;
    color: #fff;
}
.xans-product-action .btnArea a.btn2 {
    margin: 0 2%;
}
.xans-product-action .btnArea a {
    display: inline-block;
    font-family: Arial,malgun gothic,맑은고딕,NanumGothic,돋움;
    margin: 8px 0;
    width: 31%;
    text-align: center;
    background: #f1f1f1;
    color: #555;
    line-height: 30px;
}
a {
    text-decoration: none;
    color: #000;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#NaverChk_Button {
    clear: both;
    margin: 10px 0;
}
.xans-product-action:after {
    content: "";
    display: block;
    clear: both;
}
.prd_info_tab {
    font-family: Arial,malgun gothic,맑은고딕,NanumGothic,돋움;
    font-size: 11px;
    line-height: 18px;
}
.accordion {
    list-style: none;
    padding: 0;
    margin: 0 auto;
    border-top: 1px solid #ccc;
}
.accordion li {
    list-style: none;
    border-bottom: 1px solid #ccc;
    position: relative;
}
.accordion a {
    width: 100%;
    display: block;
    cursor: pointer;
    font-weight: 500;
    line-height: 30px;
    font-size: 10px;
    text-indent: 3px;
    user-select: none;
}
.prd_info_tab a.active:after {
    transform: rotate(45deg);
    -webkit-transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out;
    transition: all 0.2s ease-in-out;
}
.accordion a:after {
    width: 6px;
    height: 6px;
    border-right: 1px solid #555;
    border-bottom: 1px solid #555;
    position: absolute;
    right: 10px;
    content: " ";
    top: 10px;
    transform: rotate(-45deg);
    -webkit-transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out;
    transition: all 0.2s ease-in-out;
}
element.style {
    display: block;
}
.accordion li .tab_wrap {
    display: none;
    padding: 10px 3px 20px 3px;
    color: #555;
    font-size: 11px;
    line-height: 18px;
}
.accordion div, .accordion div pre {
    word-wrap: breack-word;
    white-space: pre-wrap;
    white-space: -moz-pre-wrap;
    white-space: -pre-wrap;
    white-space: -o-pre-wrap;
    word-break: break-all;
}
.accordion div, .accordion div pre {
    font-family: Arial,malgun gothic,맑은고딕,NanumGothic,돋움;
    font-size: 11px;
    line-height: 18px;
    white-space: pre-line;
}
pre {
    word-wrap: breack-word;
    white-space: pre-wrap;
    white-space: -moz-pre-wrap;
    white-space: -pre-wrap;
    white-space: -o-pre-wrap;
    word-break: break-all;
}
.accordion li .tab_wrap {
    display: none;
    padding: 10px 3px 20px 3px;
    color: #555;
    font-size: 11px;
    line-height: 18px;
}
.accordion li .tab_wrap p {
    padding: 0;
    margin: 0;
    line-height: 12px;
}
strong, b {
    font-weight: bold;
}
.accordion li .tab_wrap p {
    padding: 0;
    margin: 0;
    line-height: 12px;
}
element.style {
    display: none;
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
    <!-- 상단 제품정보 -->
	<div class="xans-element- xans-product xans-product-detail "><!-- 상품이미지 -->
	<div class="xans-element- xans-product xans-product-image imgArea "><div class="keyImg"><img src="css/images/big1.jpg"/></div>

	</div>
	<!-- //상품이미지 -->
	<!-- 상품정보 -->
	<div class="infoArea">
	<!--<div class="prd_top">
	<ul>
	<li class="name">KI 메종드파리 반팔티 </li> 
	<li class="p"></li> 
	</ul>
	</div>-->
	
	<h3> <span class="displaynone">(해외배송 가능상품)</span>
	</h3>
	<div class="xans-element- xans-product xans-product-detaildesign"><table border="1" summary="">
	<caption> 기본 정보</caption>
	<tbody>
	<tr class=" xans-record-">
	<td class="name"><span style="font-size:14px;color:#000000;">KI 메종드파리 반팔티</span><br/><br/>
	</td>
	</tr>
	<tr class=" xans-record-">
	<td>
	<b><span style="font-size:12px;color:#000000;">PRICE</span></b> <span style="font-size:12px;color:#000000;"><strong id="span_product_price_text">KRW 17,600 </strong><input id="product_price" name="product_price" value="" type="hidden" /></span></td>
	</tr>
	<tr class=" xans-record-">
	<td>
	<b><span style="font-size:12px;color:#000000;">POINT</span></b> <span style="font-size:12px;color:#000000;"><span id="span_mileage_text">176원 (1%)</p></span></td>
	</tr>
	<tr style="display:none;" class=" xans-record-">
	<td>
	<b><span style="font-size:12px;color:#000000;">CODE</span></b> <span style="font-size:12px;color:#000000;">P00000GL</span></td>
	</tr>
	<tr style="display:none;" class=" xans-record-">
	<td>
	<b><span style="font-size:12px;color:#555555;">상품간략설명</span></b> <span style="font-size:12px;color:#555555;">모든분들이 선호하는 색감, 핏 모두 갖춘 티라고생각합니다^^ 
	정말 예쁩니다!! 강추합니다!! 
	사이즈는 Free사이즈로 나왔습니다!! 
	넉넉한 핏으로 나와서 110까지 입으시는 분들도 맞으실것같습니다!!</span></td>
	</tr>
	</tbody>
	</table>
	</div>
	
	<p class="displaynone"><br/><br/><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif" alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다."/><br/><br/></p>
	<!-- //상세정보 내역 -->
	
	
	<!-- 추가구매상품 -->
	<!-- //추가구매상품 -->
	
	<!-- 부가정보 -->
	<div class="product_etc_option">
	<table border="1" summary="">
	<caption>상품 옵션</caption>
	<tbody class="xans-element- xans-product xans-product-option xans-record-"><tr class="xans-element- xans-product xans-product-option xans-record-"><th scope="row"> COLOR</th>
	<td><select option_product_no="168" option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" option_title="COLOR" product_option_area="product_option_168_0" name="option1" id="product_option_id1" class="ProductOption0" option_style="select" required="true" ><option value="*" link_image="">- [필수] 옵션을 선택해 주세요 -</option><option value="**" link_image="">-------------------</option><option value="검정" link_image="">검정</option><option value="먹색" link_image="">먹색</option><option value="회색" link_image="">회색</option></select></td>
	</tr>
	<tr class="xans-element- xans-product xans-product-option xans-record-"><th scope="row"> SIZE</th>
	<td><select option_product_no="168" option_select_element="ec-option-select-finder" option_sort_no="2" option_type="T" item_listing_type="S" option_title="SIZE" product_option_area="product_option_168_0" name="option2" id="product_option_id2" class="ProductOption0" option_style="select" required="true" ><option value="*" link_image="">- [필수] 옵션을 선택해 주세요 -</option><option value="**" link_image="">-------------------</option><option value="Free" link_image="">Free</option></select></td><!--disabled="disabled"-->
	</tr>
	</tbody>
	</table>
	
	<!-- 총상품 -->
	<div id="totalProducts" class="">
	<table border="1" summary="">
	<caption>상품 목록</caption>
	<colgroup>
	<col style="width:250px;"/>
	<col style="width:40px;"/>
	<col style="width:80px;"/>
	</colgroup>
	<thead><tr>
	<th scope="col">상품명</th>
	<th scope="col">상품수</th>
	<th scope="col">가격</th>
	</tr></thead>
	<tbody class="displaynone"><tr>
	<td>KI 메종드파리 반팔티</td>
	<td>
	<span class="quantity">
	<input id="quantity" name="quantity_name" style="" value="0" type="text" /><a href="#none"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up"/></a>

	<a href="#none"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down"/></a>

	</span>
	</td>
	<td class="right">
	<span class="quantity_price">17600</span> <span class="mileage ">(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif"/>  <span class="mileage_price">176</span>)</span>

	</td>
	</tr></tbody>
	<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.--><tbody><!-- tr>
	<td>
	<p class="product">
	$상품명<br />
	<span>$옵션</span>
	</p>
	</td>
	<td>
	<span class="quantity">
	<input type="text" class="quantity_opt" />
	
	&nbsp;<a href="#none"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
	<a href="#none"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
	</span>
	<a href="#none"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
	</td>
	<td class="right">
	<span>$가격</span>
	<span class="mileage">(<img src="http://img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
	</td>
	</tr --></tbody>
	<!-- //참고 --><tfoot><tr>
	<td colspan="3"><div class="tfoot">
	<strong>Total :</strong><span class="total"> <em>0</em></span>
	</div></td>
	</tr></tfoot>
	</table>
	</div>
	<!-- //총상품 -->
	</div>
	<!-- // 부가정보 -->
	<!-- 구매버튼 -->
	<div class="xans-element- xans-product xans-product-action "><div class="btnArea">
	<ul>
	<a href="#none" class="btn1 " onclick="product_submit(1, '/exec/front/order/basket/', this)">BUY</a>
	<a href="#none" class="btn2 " onclick="product_submit(2, '/exec/front/order/basket/', this)">CART</a>
	<a href="#none" onclick="add_wishlist_nologin('/member/login.html');" class="btn3 ">WISH</a>
	</ul>
	</div>
	<div id="NaverChk_Button"></div>
	</div>
	<!-- //구매버튼 -->
	
	<div class="prd_info_tab">
	<ul class="accordion">
	<li>
	<a>INSTRUCTION</a>
	<div class="tab_wrap"><pre>모든분들이 선호하는 색감, 핏 모두 갖춘 티라고생각합니다^^ 
	정말 예쁩니다!! 강추합니다!! 
	사이즈는 Free사이즈로 나왔습니다!! 
	넉넉한 핏으로 나와서 110까지 입으시는 분들도 맞으실것같습니다!!</pre></div>
	</li>
	<li class="xans-element- xans-product xans-product-additional "><a>DELIVERY</a>
	<ol class="tab_wrap"><p><strong>-배송안내</strong> </p><p> 5만원 이상 구매시 무료배송 되며, 5만원 미만인 경우 2500원의 배송비가 추가됩니다.</p><p> 로젠 택배로 발송이되며 배송기간은 2일~4일 소요될 수 있습니다.</p><p> 
	<strong> 
	</strong><strong>-택배발송</strong> 
	</p><p>오후 6시까지 결제 완료된 주문건에 한하여 거래처에 입고요청되어 입고 완료시 정상 발송됩니다. 
	</p><p>주문후 평균적으로 2~3일 정도 소요되며 , 거래처 사정으로 인해서 입고가 지연될 경우 3~14일 정도 소요될 수 있습니다. 
	택배 발송시 송장번호는 문자로 발송됩니다.</p></ol>
	</li>
	<li class="xans-element- xans-product xans-product-additional "><a>EXCHANGE</a>
	<ol class="tab_wrap"><p><strong>-교환 및 반품주소</strong><br>서울특별시 관악구 신림동 706-16(난곡로191) 3층 에이알유</p><p><strong><br></strong></p><p><strong>-교환 및 반품안내</strong><br>상품 수령후 7일 이내 에이알유 Q&amp;A 게시판 혹은 고객센터를 통해서 접수하여 주시기 바랍니다.<br>상품 포장 안에 배송비 2500원을 동봉하고 택배비는 선불로 하셔서 보내주시기 바랍니다.</p><p><strong><br></strong></p><p><strong>-교환 및 반품이 불가능한 경우</strong><br>&gt;반품 및 교환 접수 기간이 경과한경우<br>&gt;고객의 부주의로 제품이 변형,훼손,오염,파손 된 경우<br>&gt;제품착용 흔적이 있을경우(향수, 스킨, 담배냄새, 바디로션 등)<br>&gt;수선이나 세탁된 상품<br>&gt;받았던 상태가 아닌 포장비닐없이 발송되어 상품이 훼손된 경우<br>&gt;주문제작으로 만들어진 수제화 혹은 악세사리 등의 상품인 경우</p><p><strong><br></strong></p><p><strong>-불량사유 안되는 항목</strong><br>&gt;배송시 발생한 상품의 구김<br>&gt;재봉실밥 일부 정리가 안된 경우<br>&gt;단추가 다소 허술하게 마감된 경우<br>&gt;원단 특유의 냄새<br>&gt;모니터 해상도의 미세한 차이로 색상 혹은 이미지 차이</p><p>*대량생산으로 인한 사소한 부분들은 불량사유가 될 수 없는 부분 양해드립니다.<br> 
	</p></ol>
	</li>
	</ul>
	</div> 
	
	
	</div>
	<!-- //상품정보 -->
	</div>
	<!-- //상단 제품 정보 -->

    
        
        
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

<script>
(function($) {
    $('.accordion > li:eq(0) a').addClass('active').next().slideDown();

    $('.accordion a').click(function(j) {
        var dropDown = $(this).closest('li').find('.tab_wrap');

        $(this).closest('.accordion').find('.tab_wrap').not(dropDown).slideUp();

        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.accordion').find('a.active').removeClass('active');
            $(this).addClass('active');
        }

        dropDown.stop(false, true).slideToggle();

        j.preventDefault();
    });
})(jQuery);
</script>