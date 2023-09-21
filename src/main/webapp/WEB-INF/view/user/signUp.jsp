<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/view/layout/header.jsp"%>
<!-- header.jsp  -->

<div class="col-sm-8">
    <h2>회원 가입</h2>
    <h5>어서오세요 환경합니다</h5>
    <div class="bg-light p-md-5 h-75">
        <form action="/user/sign-up" method="post">
            <div class="form-group">
              <label for="username">username:</label>
              <input type="text" class="form-control" placeholder="Enter username" id="username" name="username">
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password">
            </div>
            <div class="form-group">
                <label for="fullname">Fullname:</label>
                <input type="text" class="form-control" placeholder="Enter fullname" id="fullname" name="fullname">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            
            <script src="https://pay.nicepay.co.kr/v1/js/"></script> <!-- Server 승인 운영계 -->
 
 
<script>
function serverAuth() {

  AUTHNICE.requestPay({
    clientId: 'S2_bfc50c02dd6c4d1c87483170dea1b8fa',
    method: 'card',
    orderId: '4d6e2ad0-6e70-47b3-8fea-9f0cf00bf1e6',
    amount: 1004,
    goodsName: '나이스페이-상품',
    returnUrl: 'http://localhost:80/serverAuth', //API를 호출할 Endpoint 입력
    fnError: function (result) {
      alert('개발자확인용 : ' + result.errorMsg + '')
    }
 });
}
</script>

<button onclick="serverAuth()">serverAuth 결제하기</button> 
          </form>
    </div>
</div>


<!-- footer.jsp  -->
<%@ include file="/WEB-INF/view/layout/footer.jsp"%>