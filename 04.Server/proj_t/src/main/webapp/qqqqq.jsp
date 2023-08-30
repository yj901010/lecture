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
			    merchant_uid: "merchant_' + new Date(). getTime()", // �������� ������ ���� �ֹ���ȣ
			    name: "�ֹ���:�����׽�Ʈ",
			    amount: 1004,
			    buyer_email: "test@portone.io",
			    buyer_name: "�������̸�",
			    buyer_tel: "010-1234-5678",
			    buyer_addr: "����Ư���� ������ �Ｚ��",
			    buyer_postcode: "123-456",
			    language: "ko", // ����â ��� ���� �Ķ����  ko: �ѱ���, en: ����
			    niceMobileV2: true, // �ű� ����� ���� ���� �� ����
			    display: {
			    	  card_quota: [6], // �Һΰ��� 6���������� Ȱ��ȭ
			    	}
			  },
			  function (rsp) {
				  console.log(rsp);
		            if (rsp.success) {
		                var msg = '������ �Ϸ�Ǿ����ϴ�.';
		                msg += '���� �ݾ� : ' + rsp.paid_amount + '��';
		                msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
		            } else {
		                var msg = '������ �����Ͽ����ϴ�.';
		                msg += '�������� : ' + rsp.error_msg;
		            }
		            alert(msg);
				});
		}
</script>

<body>
	<button onclick="requestPay()">�����ϱ�</button>
	
</body>
</html>