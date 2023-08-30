<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script type="text/javascript"></script>

<script>
	var IMP = window.IMP; 
	IMP.init("imp61216434"); 
	
	function requestPay() {
		IMP.request_pay(
			  {
			    pg: "nice",
			    pay_method: "card",
			    merchant_uid: "merchant_' + new Date(). getTime()", // 상점에서 생성한 고유 주문번호
			    name: "주문명:결제테스트",
			    amount: 1004,
			    buyer_email: "test@portone.io",
			    buyer_name: "구매자이름",
			    buyer_tel: "010-1234-5678",
			    buyer_addr: "서울특별시 강남구 삼성동",
			    buyer_postcode: "123-456",
			    language: "ko", // 결제창 언어 선택 파라미터  ko: 한국어, en: 영문
			    niceMobileV2: true, // 신규 모바일 버전 적용 시 설정
			    display: {
			    	  card_quota: [6], // 할부개월 6개월까지만 활성화
			    	}
			  },
			  function (rsp) {
				  console.log(rsp);
		            if (rsp.success) {
		                var msg = '결제가 완료되었습니다.';
		                msg += '결제 금액 : ' + rsp.paid_amount + '원';
		                msg += '카드 승인번호 : ' + rsp.apply_num;
		            } else {
		                var msg = '결제에 실패하였습니다.';
		                msg += '에러내용 : ' + rsp.error_msg;
		            }
		            alert(msg);
				});
		}
</script>

<body>
	<button onclick="requestPay()">결제하기</button>
	
</body>
</html>