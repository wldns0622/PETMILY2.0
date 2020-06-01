<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PETMILY Member SiugUp</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="http://code.jquery.com/jquery.js"></script><!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요) -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script><!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들 포함하기 -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화 (https://github.com/scottjehl/Respond) -->
    </head>
    <body>
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            <!-- 본문 들어가는 부분 -->
            <form class="form-horizontal" role="form" method="post" action="/member/memberSignUp">
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">약관동의
							제1조(목적) 이 약관은 대부업자와 채무자간의 대부거래에 있어서 권리와 의무를 명확히 하고 공정하며 건전한 금전소비대차를 하는 것을 목적으로 한다.
							제2조(적용범위) 이 약관은 대부업자와 채무자 사이의 가계 또는 기업의 자금대부 또는 그 중개 및 어음할인 등의 금전의 대부와 관련된 대부업자와 채무자 사이의 모든 거래에 적용된다.
							제3조(용어의 정의) 이 약관에서 사용하는 용어의 정의는 다음과 같다.
							 1. “대부업”이라 함은 금전의 대부 또는 그 중개, 금전의 대부와 관련한 어음의 할인 및 이와 유사한 방법에 의한 금전의 교부와 관련된 사항을 그 업으로 행하는 사업을 말한다.
							 2. “대부업자”라 함은 관할관청에 등록여부를 불문하고 대부업을 영위하는 개인 및 법인으로 한다. 
							 3. “채무자”라 함은 대부계약의 체결로 인하여 대부업자에 대하여 채무를 부담하는 자를 말한다.
							 4. “보증인”이라 함은 채무자가 채무를 이행하지 않는 경우에 그 채무를 대신 이행할 종(從)된 채무를 부담하는 자를 말한다.
							제4조(실명거래)
							 ① 대부업자와 채무자 사이의 거래는 실명으로 한다.
							 ② 대부업자는 채무자가 본인임을 확인할 의무가 있다. 
							 ③ 대부업자와 채무자 사이의 계약은 채무자 본인이 직접 체결하는 것을 원칙으로 하되, 채무자의 대리인과 계약을 체결하는 경우에는 채무자가 발급받은 인감증명서 또는 본인서명사실확인서(또는 전자본인서명사실확인서 발급증)를 첨부한 위임장에 의하여야 한다.
							제5조(약관의 명시․설명․교부) 
							 ① 대부업자는 이 약관을 영업장에 비치하고, 채무자는 영업시간 중 언제든지 이를 열람하거나 그 교부를 청구할 수 있다.
							 ② 대부업자는 계약체결 전에 이 약관 제7조를 포함한 중요내용을 채무자가 이해할 수 있도록 설명하고 약관을 교부한다.
							제6조(계약의 성립) 대부업자가 약관의 내용을 설명하고 채무자가 본 계약서에 의하여 이의 적용을 동의한 경우 계약은 성립한다.
							제7조(계약서 필수기재사항) 대부거래 표준계약서에는 다음의 사항을 반드시 기재한다.
							 1. 대부업자(그 영업소를 포함한다)의 성명 또는 상호, 주소, 전화번호, 생년월일(성별) 또는 사업자등록번호
							 2. 대부업등록번호
							 3. 채무자의 성명 또는 상호, 주소, 전화번호, 생년월일(성별) 또는 사업자등록번호
							 4. 계약일자 
							 5. 대부금액
							 6. 이자율(이자율의 세부내역 및 연이자율로 환산한 것을 포함)
							 7. 연체이자율
							 8. 변제기간 및 변제방법 
							 9. 대부금을 변제받을 은행계좌번호
							 10. 채무의 조기상환조건
							 11. 부대비용이 있는 경우 그 내용 및 금액
							 12. 보증인이 있는 경우 보증인의 성명 또는 상호, 주소, 생년월일(성별) 또는 사업자등록번호, 보증의 내용
							
							제8조(이자율 등의 제한)
							 ① 대부업자는 관계법령이 정하는 이자율(연체이자율 포함)의 범위 내에서 계약을 체결하기로 한다.
							 ② 제1항의 규정에 의한 이자율을 산정함에 있어 사례금, 할인금, 수수료, 공제금, 연체이자, 체당금, 그밖에 그 명칭에 불구하고 대부와 관련하여 대부업자가 받는 것은 이를 이자로 본다. 다만 당해 거래의 계약체결과 변제에 관한 부대비용으로서 관련 법령이 정한 사항은 그러하지 아니하다. 
							 ③ 대부업자가 제1항의 규정에 의하지 않은 대부계약을 체결한 경우 제1항에 따른 이자율을 초과하는 부분에 대한 이자계약은 무효로 한다. 
							 ④ 채무자가 대부업자에게 제1항에 따른 이자율을 초과하는 이자를 지급한 경우 그 초과 지급된 이자 상당금액은 원본에 충당되고, 원본에 충당되고 남은 금액이 있으면 그 반환을 청구할 수 있다. 
							 ⑤ 대부업자가 선이자를 사전에 공제하는 경우에는 그 공제액을 제외하고 채무자가 실제로 받은 금액을 원본으로 하여 제1항에 따른 이자율을 산정한다. 
							
							제9조(비용의 부담)
							 ① 다음 각 호의 비용은 채무자가 부담한다.
							  1. 채무자ㆍ보증인에 대한 대부업자의 채권ㆍ담보권 등의 권리의 행사ㆍ보전(해지 포함)에 관한 비용
							  2. 채무이행 지체에 따른 독촉 및 통지비용
							  3. 채무 및 보증채무와 관련된 증명서의 발급 비용
							 ② 대부업자나 대부업자가 지정하는 자가 제1항 각 호의 업무를 처리하고 그 비용을 채무자에게 청구하는 경우에는 실비를 초과할 수 없으며 소요비용이 최소화되도록 하여야 한다.
							 ③ 제1항에 의한 비용을 대부업자가 대신 지급한 경우에는, 대부업자는 이를 즉시 채무자에게 통지하여 채무자가 이를 곧 변제하도록 하고 만일 채무자가 그러하지 아니하는 경우에는 대부업자가 대신 지급한 금액에 대하여, 대신 지급한 날부터 다 갚는 날까지의 날짜수 만큼, 상법 제54조(상사법정이율)에 의한 연 6푼의 범위 내에서 약정금리로, 1년을 365일로 보고 1일 단위로 계산한 금액을 더하여 갚기로 한다. 
							 ④ 대부업자는 대부계약 약정 시 채무자가 사전에 알 수 있도록, 약정이자 외에 담보대출에 소요되는 부대비용의 항목과 금액을 알려주어야 한다.
							
							제10조(계약서의 교부 등)
							 ① 계약내용을 명확히 하기 위하여 계약서는 2부를 작성하여 대부업자와 채무자가 각각 보관하는 것으로 한다. 
							 ② 상환 완료 후 채무자는 대부계약서 및 계약관계서류의 반환을 서면으로 요구할 수 있고, 이의 반환 요청이 있는 경우 대부업자는 대부계약서 및 계약관계서류를 즉시 반환하기로 한다. 
							 ③ 인터넷을 통해 전자적인 형태로 대부거래 약정을 체결하는 경우 대부업자는 지체없이 계약서를 전자우편 등으로 채무자에게 송부하고, 계약기간 동안 홈페이지에서 당해 계약사항의 열람, 인쇄가 가능하도록 조치하여야 한다. 다만, 채무자의 요청이 있는 경우에는 계약서를 서면으로 교부한다.
							
							제11조(담보의 제공) 채무자 또는 보증인의 신용악화, 제공한 담보의 가치감소의 사유가 발생하여 대부업자가 채권보전상 필요하다고 인정되는 경우에는 채무자는 대부업자의 청구에 의하여 대부업자가 인정하는 담보를 제공하거나 보증인을 세우기로 한다. 다만, 담보의 제공이나 보증인을 세울 때에는 반드시 채권보전의 범위 내 이어야 한다. 
							
							제12조(기한의 이익의 상실)
							
							 ① 채무자에게 다음 각 호의 사유가 발생한 경우에는 대부업자로부터의 독촉ㆍ통지 등이 없어도, 채무자는 기한의 이익을 상실한다.
							  1. 채무자가 제공한 담보재산에 대하여 압류명령이나 체납처분 압류 통지가 발송된 때 또는 기타의 방법에 의한 강제집행개시나 체납처분착수가 있는 때
							  2. 채무불이행자명부 등재 신청이 있는 때
							  3. 어음교환소의 거래정지처분이  있을 때
							  4. 도피 또는 기타의 사유로 금융기관에서 채무자에 대한 지급을 정지한 것으로 인정된 때
							  5. 파산신청이 있는 때
							
							 ② 채무자에게 다음 각 호의 사유가 발생한 경우에는 기한의 이익을 상실한다. 다만, 대부업자는 기한의 이익상실일 7영업일전까지 다음 각 호의 채무이행지체사실과 이에 따라 기한의 이익이 상실된다는 사실을 채무자에게 통지하여야 하며, 기한의 이익상실일 7영업일전까지 통지하지 않은 경우에는 채무자는 실제통지가 도달한 날부터 7영업일이 경과한 날에 기한의 이익을 상실한다.  
							  1. 이자를 지급하여야 할 때부터 2개월간 지체한 때 
							  2. 분할상환금 또는 분할상환원리금의 지급을 2회 이상 연속하여 지체하고 그 금액이 대출금의 10분의1을 초과하는 경우
							 ③ 채무자에 관하여 다음 각 호에서 정한 사유중 하나라도 발생하여 대부업자의 채권보전에 현저한 위험이 예상될 경우, 대부업자는 서면으로 당해 위험 및 신용의 회복 등을 독촉하고, 그 통지의 도달일부터 10영업일 이상으로 대부업자가 정한 기간이 경과하면, 채무자는 대부업자에 대한 당해 채무의 기한의 이익을 상실하여 곧 이를 갚아야 할 의무를 진다. 
							  1. 채무자와 그의 보증인이 대출금을 수령한 후 당초 제출하기로 약속한 대부계약에 필요한 중요서류(대출계약서, 보증계약서 등)를 30일 이내에 제출하지 않을 때 
							  2. 채무자가 채무의 상환을 거부하는 의사를 명시적으로 표시할 때
							  3. 채무자 및 보증인이 계약서의 주요한 내용을 허위로 기재하거나 제출한 증빙서류가 위변조된 것으로 확인된 때
							 ④ 제1항 내지 제3항에 의하여 채무자가 대부업자에 대한 채무의 기한의 이익을 상실한 경우라도, 대부업자의 명시적 의사표시가 있거나, 대부업자가 분할상환금ㆍ이자ㆍ지연배상금을 받는 등 정상적인 거래의 계속이 있는 때에는, 그 채무 또는 대부업자가 지정하는 채무의 기한의 이익은 그 때부터 부활되는 것으로 본다.  
							
							제13조(기한전의 임의 상환 등) 채무자는 약정한 상환기일이 도래하기 전이라도 미리 아무런 부담 없이 원금의 전부 또는 일부를 상환할 수 있다. 그러나 대부계약 체결 시 채무자와 기한전의 임의 변제로 대부업자가 받을 손해에 대하여 미리 약정한 경우에 한하여 수수료 등을 채무자가 부담한다.
							
							제14조(채무의 변제 등의 충당)
							 ① 채무자의 채무변제시 채무 전액을 소멸시키기에 부족한 때에는 비용, 이자, 원금의 순서로 충당하기로 한다. 그러나 대부업자는 채무자에게 불리하지 않은 범위 내에서 충당순서를 달리할 수 있으나 채무자에게 이러한 사실을 서면으로 통지하여야 한다.
							 ② 변제될 채무가 수개인 경우로서 채무전액이 변제되지 않을 경우 강제집행 또는 담보권 실행경매에 의한 회수금에 대하여는 민법 기타 법률이 정하는 바에 따른다.
							 ③ 변제될 채무가 수개인 경우로서 제2항에 해당되지 않는 임의의 상환금으로 채무자의 채무전액을 없애기에 부족한 때에는 채무자가 지정하는 순서에 따라 변제에 충당하기로 한다. 이 경우, 채무자가 지정하는 순서에 따를 경우, 대부업자의 채권보전에 지장이 생길 염려가 있는 때에는 대부업자는 지체없이 이의를 표시하고, 물적담보나 보증의 유무, 그 경중이나 처분의 난이, 변제기의 장단 등을 고려하여 대부업자가 변제에 충당할 채무를 바꾸어 지정할 수 있으나 채무자에게 이러한 사실을 서면으로 통지하여야 한다.
							 ④ 대부업자가 변제충당순서를 제3항에 따라 민법 기타 법률이 정하는바와 달리할 경우에는 대부업자의 채권보전에 지장이 없는 범위 내에서 채무자와 담보제공자 및 보증인의 정당한 이익을 고려하여야 한다.
							
							제15조(영수증 등 서면교부) 대부업자는 채무자로부터 이자, 원금 등을 수령한 경우에는 영수증 및 대출잔액 확인서를 서면 또는 전자우편 등으로 교부하여야 한다.
							
							제16조(통지사항 및 효력) 
							 ① 채무자는 주소, 전화번호, 근무처가 변경된(휴․퇴직 또는 해고되거나 전․폐업한 경우포함) 경우 서면으로 대부업자에게 곧 통지하여야 한다. 
							 ② 채무자가 제1항에 의한 통지를 게을리 하여 대부업자가 발송한 서면통지 또는 기타서류가 채무자에게 연착하거나 도달되지 않은 때에는 보통의 우송기간이 경과한 때에 도달한 것으로 본다. 이 경우 상계통지나 기한전의 채무변제 청구 등 중요한 의사표시는 반드시 배달증명부 내용증명에 의하여야 하며, 배달증명부 내용증명이 아닌 경우에는 도달한 것으로 보지 않고 다만 추정한다. 
							 ③ 대부업자는 주소 및 전화번호가 변경된 경우 이를 채무자에게 서면으로 통지하여야 한다. 
							
							제17조(채권양도) 대부업자는 본 계약서상의 채권을 제3자에게 양도할 수는 있으나, 채권양도에 관하여는 반드시 사전에 채무자 및 보증인에게 동의를 얻어야 한다.
							
							제18조(신용정보)
							 ① 채무자가 제공한 신용정보(성명, 생년월일, 주소 등 본인의 특정정보 및 차입내용, 상환사항, 연체 등의 객관적 정보)는 이 계약에 의한 법적인 권리행사를 위해서만 이용할 수 있다.
							 ② 채무자 및 보증인은 그 주소지의 확인을 위하여 대부업자의 채권보전 등의 목적에 따라 개인별 주민등록표의 열람을 승낙하기로 한다.
							 ③ 대부업자는 채무자 본인과 보증인에 대하여만 개인정보를 요구할 수 있다.
							
							제19조(이행장소ㆍ준거법)
							 ① 채무의 이행장소는 다른 약정이 없는 한 거래 영업점으로 하고, 송금방법은 대부업자의 은행계좌에 입금하는 것을 원칙으로 한다. 다만, 부실채권의 관리 등 상당한 사유로 채권관리업무를 대부업자의 본점ㆍ지역본부 또는 다른 영업점으로 이관한 경우에는, 이관 받은 본점ㆍ지역본부 또는 다른 영업점을 그 이행장소로 한다.
							 ② 채무자가 내국인이 아닌 경우라도, 이 약관에 의한 대부거래에 관하여 적용될 법률은 국내법을 적용한다.
							
							제20조(불법적 채권추심 행위의 금지) 
							
							 ① 대부업자(대부업자로부터 대부계약에 따른 채권을 양도 받거나 채권의 추심을 위탁받은 자를 포함한다)는 대부거래 계약에 따른 채권을 추심함에 있어서 다음 각 호의 방법을 사용하지 않기로 한다.
							  1. 채무자 또는 관계인을 폭행․협박․체포 또는 감금하거나 그에게 위계나 위력을 사용하는 행위
							  2. 정당한 사유없이 반복적으로 또는 야간(오후 9시 이후부터 다음날 오전 8시까지를 말한다)에 채무자나 관계인을 방문함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위
							  3. 정당한 사유없이 반복적으로 또는 야간에 전화하는 등 말․글․음향․영상 또는 물건을 채무자나 관계인에게 도달하게 함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위
							  4. 채무자 외의 사람(보증인을 포함한다)에게 채무에 관한 거짓 사실을 알리는 행위 
							  5. 채무자 또는 관계인에게 금전의 차용이나 그 밖의 이와 유사한 방법으로 채무의 변제자금을 마련할 것을 강요함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위
							  6. 채무를 변제할 법률상 의무가 없는 채무자 외의 사람에게 채무자를 대신하여 채무를 변제할 것을 반복적으로 요구함으로써 공포심이나 불안감을 유발하여 사생활 또는 업무의 평온을 심하게 해치는 행위
							  7. 엽서에 의한 채무변제요구 등 채무자 외의 자가 채무사실을 알 수 있게 하는 행위
							  8. 채무자의 연락두절 등 소재파악이 곤란한 경우가 아님에도 채무자의 관계인에게 채무자의 소재, 연락처 또는 소재를 알 수 있는 방법 등을 문의하는 행위
							
							 ② 대부업자는 기타 「채권의 공정한 추심에 관한 법률」에서 채권추심과 관련하여 금지하고 있는  행위를 하여서는 아니 된다.
							
							제21조(담보물 처분 전 사전통지) 대부업자는 약정 대부기간이 만료되거나 계약이 종료된 이후 담보물을 처분하고자 하는 경우에는 채무자 또는 소유자에게 미리 그 사항을 통지하여야 한다. 단, 법원의 경매절차가 개시되어 채무자 또는 소유자에게 별도의 통지가 이루어진 경우에는 이로 갈음할 수 있다.
							
							제22조(약관의 변경)
							 ① 대부업자가 이 약관을 변경하고자 할 경우, 채무자에게 불리한 내용이 될 때에는 서면통지의 방법으로 이를 알리고, 채무자에게 불리한 내용이 아닌 경우에는 거래영업점에 게시함으로써 이를 알려야 한다. 그러나 서면통지나 게시의 경우에는 반드시 제2항의 뜻을 명시하여야 한다.
							 ② 통지가 도달한 때 또는 게시한 때부터 1개월 이내에 채무자의 서면에 의한 이의가 대부업자에게 도달하지 않은 때에는, 약관의 변경을 승인한 것으로 본다.
							
							제23조(규정의 준용) 이 약관에서 정하지 아니한 사항에 관하여는 「대부업 등의 등록 및 금융이용자 보호에 관한 법률」 및 동법 시행령 등 관계 법령에 따른다. 
							
							제24조(관할법원의 합의) 이 약관에 의한 대부거래 계약에 관하여 대부업자와 채무자 사이에 소송의 필요가 생긴 때에는 법이 정하는 관할법원과 아울러 대부업자의 거래영업점 소재지 지방법원을 관할법원으로 하기로 한다. 다만, 채무자의 책임있는 사유로 부실채권이 발생되어 그 채권의 관리를 위하여 대부업자가 본점, 지역본부 또는 다른 영업점으로 그 채권관리업무를 이관한 경우에는 법이 정하는 관할법원과 아울러 이관 받은 본점, 지역본부 또는 다른 영업점 소재지 지방법원을 관할법원으로 하기로 한다.

                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="N">
                                동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">개인정보의 항목 및 수집방법
							* 각 항목의 구체적인 내용은 수술․시술․검사의 특성에 따라 개별적으로 기재할 수 있습니다.
							* 개별적 기재 내용 중 중요한 사항에 대하여는 굵은 글씨로 표시하거나 밑줄을 강조하는 것이 바람직합니다.
							
							
							가. 수술(시술․검사)의 경우 설명사항
							
							 ① 수술(시술 ․ 검사)의 목적 및 효과
							 ② 수술과정 및 방법, 수술(시술 ․ 검사)부위 및 추정 소요시간
							 ③ 발현 가능한 합병증(후유증)의 내용, 정도 및 대처방법
							 ④ 수술(시술 ․ 검사)관련 주의 사항(수술 후 건강관리에 필요한 사항)
							 ⑤ 수술(시술․검사)방법의 변경 또는 수술 범위의 추가 가능성
							    수술(시술·검사) 과정에서 환자의 상태에 따라 부득이하게 수술(시술)·검사) 방법이 변경되거나 수술범위가 추가될 수 있습니다. 이 경우, 환자 또는 대리인에게 추가로 설명하여야 하는 사항이 있는 경우에는 수술(시술·검사)의 시행 전에 이에 대하여 설명하고 동의를 얻도록 합니다.
							    다만, 수술의 시행 도중에 환자의 상태에 따라 미리 설명하고 동의를 얻을 수 없을 정도로 긴급한 수술방법의 변경 또는 수술 범위의 추가가 요구되는 경우에는 이에 따른 수술의 시행 후에 지체 없이 그 변경 또는 추가의 사유 및 수술의 시행결과를 환자 또는 대리인에게 설명하도록 합니다.
							 ⑥ 주치의(집도의)의 변경 가능성
							    수술(시술·검사) 과정에서 환자의 상태 또는 의료기관의 사정(응급환자의 진료, 주치의(집도의)의 질병·출산 등 일신상 사유, 기타 변경사유:        )에 따라 부득이하게 주치의(집도의)가 변경될 수 있습니다. 이 경우 수술(시술·검사)의 시행 전에 환자 또는 대리인에게 구체적인 변경사유를 설명하고 서면동의를 얻도록 합니다.
							    다만, 수술의 시행 도중에 환자의 상태에 따라 미리 설명하고 동의를 얻을 수 없을 정도로 긴급한 집도의의 변경이 요구되는 경우에는 이에 따른 수술의 시행 후에 지체 없이 구체적인 집도의의 변경 사유 및 수술의 시행결과를 환자 또는 대리인에게 설명하도록 합니다.
							 ⑦ 기타사항
							
							
							나. 의식하진정의 경우 설명사항
							 ① 의식하진정의 목적 및 효과
							    진정제를 투여하여 환자를 어느 정도 진정상태에 도달하게 한 후 검사(시술)를 함으로써 검사(시술)에 따르는 불편함을 경감시켜주는 효과가 있습니다. 그러나 환자를 마취한 상태로 하는 검사(시술)는 아니며 환자의 협조가 가능한 진정 상태에서 검사(시술)를 합니다.
							 ② 발현가능한 합병증(후유증)의 내용, 정도 및 대처방법
							    환자의 상태에 따라서는 적정량의 약제를 사용하였음에도 불구하고 수면이나 적정한 정도의 진정상태에 도달하지 못하거나 오히려 환자의 협조도가 낮아져 검사(시술) 자체가 어려워지는 수도 있습니다.
							    부작용은 호흡곤란 및 저산소증과 같은 호흡기계 합병증, 맥박이 빨라지는 등의 심혈관계 합병증, 낙상 등이 발생할 수 있으나 대개는 특별한 조치 없이 좋아집니다. 그러나 드물지만 호흡과 심장이 정지되어 생명이 위협받는 경우가 발생하기도 하며 과민 반응에 의한 응급조치가 필요한 경우도 있습니다. 따라서 호흡기 질환으로 폐기능에 장애가 있거나, 신장이나 심장질환이 있는 경우에는 주의를 요합니다.
							 ③ 의식하진정시 주의 사항
							    의식하진정 후에는 완전한 회복을 위하여 안정이 필요하며 검사 당일에는 운전을 하지 말아야 하고 중요한 약속이나 업무는 피해야 합니다.
							다. 마취의 경우 설명사항
							 ① 현 환자상태에 적합한 마취방법
							  □ 전신마취  □ 척추마취  □ 국소마취(마취부위 : DDDOO))  □ 기타
							 ② 발현가능한 부작용(후유증)의 내용, 정도 및 대처방법
							 ③ 마취 방법의 변경 가능성
							    수술 준비 중 환자의 상태에 따라 부득이하게 마취방법이 변경될 수 있습니다. 다만, 이에 따라 환자 또는 대리인에게 추가로 설명하여야 하는 사항이 있는 경우 수술을 시행하기 전에 이에 대하여 설명하고 동의를 얻기로 합니다.
							 ④ 기타 사항(예시: 환자가 특별히 원하는 마취방법의 위험성)
							설 명 의 사 :                 (서명 또는 날인)
							
							설 명 의 사 :                 (서명 또는 날인)
							* 마취통증의학과 의사가 마취에 관한 사항을 별도로 설명하는 등 설명의사가 여럿일 경우 설명한 부분을 특정하여 각자 서명 또는 기명․날인할 수 있습니다. 
							
							나는 다음의 사항을 확인하고 동의합니다.
							① 나(또는 환자)에 대한 수술(시술, 검사, 마취, 의식하진정)의 목적·효과·과정·예상되는 합병증·후유증 등에 대한 설명(필요시 별지 포함)을 의사로부터 들었음을 확인합니다.
							② 이 수술(시술, 검사, 마취, 의식하진정)로서 불가항력적으로 야기될 수 있는 합병증 또는 환자의 특이체질로 예상치 못한 사고가 생길 수 있다는 점을 위 ①의 설명으로 이해했음을 확인합니다.
							③ 이 수술(시술, 검사, 마취, 의식하진정)에 협력하고, 이 동의서 제1조의 환자의 현재 상태에 대해 성실하게 고지할 것을 서약하며, 이에 따른 의학적 처리를 주치의의 판단에 위임하여 이 수술(시술, 검사, 마취, 의식하진정)을 하는 데에 동의합니다.
							④ 수술(시술·검사) 방법의 변경 또는 수술범위의 추가 가능성에 대한 설명을 이 수술(시술·검사·마취·의식하진정)의 시행 전에 의사로부터 들었음을 확인합니다.
							⑤ 주치의(집도의)의 변경 가능성과 사유에 대한 설명을 이 수술(시술, 검사, 마취, 의식하진정)의 시행 전에 의사로부터 들었음을 확인합니다.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked> 동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N"> 동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <!-- 회원가입 -->
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" name="id" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divName">
                    <label for="inputName" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" name="name" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" name="password" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" name="email" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="phoneNo" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                    </div>
                </div>
                <div class="form-group" id="divBirth">
                    <label for="inputBirth" class="col-lg-2 control-label">생년월일</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="birth" id="birth" data-rule-required="true" placeholder="생년월일" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divNickname">
                    <label for="inputNickname" class="col-lg-2 control-label">별명</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="nicknm" id="nickname" data-rule-required="true" placeholder="별명" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divAddress">
                    <label for="inputAddress" class="col-lg-2 control-label">주소</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="address" id="address" data-rule-required="true" placeholder="주소" maxlength="15">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="Y" checked> 동의합니다. <!-- name="emailReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="N"> 동의하지 않습니다. <!-- name="emailReceiveYn" -->
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="Y" checked> 동의합니다. <!-- name="smsReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="N"> 동의하지 않습니다. <!-- name="smsReceiveYn" -->
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                </div>
            </form>
        
        
        <script>
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
            
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                
                //검사하여 상태를 class에 적용
                $('#id').keyup(function(event){
                    
                    var divId = $('#divId');
                    
                    if($('#id').val()==""){
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                });
                
 				$('#name').keyup(function(event){
                    
                    var divName = $('#divName');
                    
                    if($('#name').val()==""){
                    	divName.removeClass("has-success");
                    	divName.addClass("has-error");
                    }else{
                    	divName.removeClass("has-error");
                    	divName.addClass("has-success");
                    }
                });
 
                $('#password').keyup(function(event){
                    
                    var divPassword = $('#divPassword');
                    
                    if($('#password').val()==""){
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                });
                
                $('#passwordCheck').keyup(function(event){
                    
                    var passwordCheck = $('#passwordCheck').val();
                    var password = $('#password').val();
                    var divPasswordCheck = $('#divPasswordCheck');
                    
                    if((passwordCheck=="") || (password!=passwordCheck)){
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                });
                
                $('#email').keyup(function(event){
                    
                	var divEmail = $('#divEmail');
                    
                    if($.trim($('#email').val())==""){
                    	divEmail.removeClass("has-success");
                    	divEmail.addClass("has-error");
                    }else{
                    	divEmail.removeClass("has-error");
                    	divEmail.addClass("has-success");
                    }
                });
                
				$('#phoneNumber').keyup(function(event){
                    
                    var divPhoneNumber = $('#divPhoneNumber');
                    
                    if($.trim($('#phoneNumber').val())==""){
                    	divPhoneNumber.removeClass("has-success");
                    	divPhoneNumber.addClass("has-error");
                    }else{
                    	divPhoneNumber.removeClass("has-error");
                    	divPhoneNumber.addClass("has-success");
                    }
                });
                
				$('#birth').keyup(function(event){
                    
                    var divBirth = $('#divBirth');
                    
                    if($.trim($('#birth').val())==""){
                    	divBirth.removeClass("has-success");
                    	divBirth.addClass("has-error");
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                });
                
                $('#nickname').keyup(function(event){
                    
                    var divNickname = $('#divNickname');
                    
                    if($.trim($('#nickname').val())==""){
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
                    }
                });
                
				$('#address').keyup(function(event){
                    
                    var divAddress = $('#divAddress');
                    
                    if($.trim($('#address').val())==""){
                    	divAddress.removeClass("has-success");
                    	divAddress.addClass("has-error");
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                });
                
				
                
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divPassword = $('#divPassword');
                    var divPasswordCheck = $('#divPasswordCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                    var divAddress = $('#divAddress');
                    
                    //회원가입약관
                    if($('#provisionYn:checked').val()=="N"){
                        modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                        modal.modal('show'); //모달 띄우기
                        
                        provision.removeClass("has-success");
                        provision.addClass("has-error");
                        $('#provisionYn').focus();
                        return false;
                    }else{
                        provision.removeClass("has-error");
                        provision.addClass("has-success");
                    }
                    
                    //개인정보취급방침
                    if($('#memberInfoYn:checked').val()=="N"){
                        modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        memberInfo.removeClass("has-success");
                        memberInfo.addClass("has-error");
                        $('#memberInfoYn').focus();
                        return false;
                    }else{
                        memberInfo.removeClass("has-error");
                        memberInfo.addClass("has-success");
                    }
                    
                    //아이디 검사
                    if($('#id').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                    
                    //패스워드 검사
                    if($('#password').val()==""){
                        modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                        $('#password').focus();
                        return false;
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                    
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                    
                    //패스워드 확인
                    if($('#passwordCheck').val()==""){
                        modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //패스워드 비교
                    if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
                        modalContents.text("패스워드가 일치하지 않습니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //이메일
                    if($('#email').val()==""){
                        modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                        $('#email').focus();
                        return false;
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                    
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                  
                    //생년월일
                    if($('#birth').val()==""){
                        modalContents.text("생년월일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divBirth.removeClass("has-success");
                        divBirth.addClass("has-error");
                        $('#birth').focus();
                        return false;
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                  
                    //별명
                    if($('#nickname').val()==""){
                        modalContents.text("별명을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                        $('#nickname').focus();
                        return false;
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
                    }
                    
                    //주소
                    if($('#address').val()==""){
                        modalContents.text("주소를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divAddress.removeClass("has-success");
                        divAddress.addClass("has-error");
                        $('#address').focus();
                        return false;
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                    
                    
                    
                
                });
                
            });
            
        </script>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            
            <div>
                <p class="text-center">
                    <small><strong>업체명</strong></small><br>
                    <small>대표 : 정지운 ㆍ 주소 : 가산동 371-106 KR 서울특별시 금천구 가산디지털1로 181 W센터 3층 ㆍ 사업자등록번호 : 123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
                    <small>Copyrightⓒ petmily.com All rights reserved.</small>
                </p>
            </div>
            <!--// 푸터 들어가는 부분 -->
        </div>
    </body>
</html>