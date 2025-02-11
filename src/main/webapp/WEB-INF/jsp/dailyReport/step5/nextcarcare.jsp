<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/include/header.jsp" %>
<script src="/resources/js/step5/popup.js"></script>
<script src="/resources/js/step5/voice.js"></script>
<link rel="stylesheet" href="/resources/css/step5/import.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>
<script type="text/javascript" src="/resources/js/dailyReport/form.js?jsVerType=20<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyyMMddHHmmss"/>" ></script>
<script type="text/javascript"
        src="/resources/js/dailyReport/list.js?jsVerType=20<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyyMMddHHmmss"/>"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />



<script>
    function dvFristbtn(){
        $('#droildiv').css('color: rgb(0, 203, 230)', 'border-color: rgb(0, 203, 230)');
    }
</script>

<script>
    var closeBtn = null;
    var openBtn = null;

    $(document).ready(function(){
        init();
        popupJS(openBtn,closeBtn);
    });

    function init(){
        closeBtn = $(".closeBtn");
        openBtn = $(".openBtn");
    }

    function popupJS(openBtn,closeBtn){
        var openTarget;
        $(openBtn).click(function(){
            openTarget = "#"+ $(this).attr("data-popName");
            $(openTarget).addClass('active');
        });
        $(closeBtn).click(function(){
           $(openTarget).removeClass("active")
        });
    }

</script>

<!-- <header>
<div>
<span>
<img src="images/ico-call.png" alt="01037177406" onclick="document.location.href='tel:01037177406'">
</span>
<div>
<span>7777</span>
</div>
<div>
<ul>
<li>로그아웃</li>
<li>메뉴</li>
</ul>
</div>
</div>
</header> -->

<section class="DrvSection">
    <h2>차량관리 차계부 등록</h2> <span></span>
    <form method="post">
        <fieldset>
            <input type="radio" name="radioGroup" id="rdOli">
            <label for="rdOli" class="active">주유</label>

            <input type="radio" name="radioGroup" id="rdDEF">
            <label for="rdDEF">요소수</label>

            <input type="radio" name="radioGroup" id="rdEngOil">
            <label for="rdEngOil">엔진오일</label>

            <input type="radio" name="radioGroup" id="rdFix">
            <label for="rdFix">정비(수리)</label>

            <input type="radio" name="radioGroup" id="rdNote">
            <label for="rdNote">기타</label>
            <ul>
                <li>
                    <label class="drvLabel" for="drvDate">날짜</label>
                    <span class="drvInputSpan"><input id="drvDate" type="date"></span>

                    <label for="chk2">결재</label> <!--? 결제 체크박스 클릭시 수정 불가 -->
                    <input id="chk2" type="checkbox">
                </li>
                <li>
                    <label class="drvLabel" for="lastKm">최종 주행거리</label>
                    <span class="drvInputSpan"><input id="lastKm" type="number" pattern=”\d*” placeholder="최종 주행거리"></span>
                </li>
                <li>
                    <label class="drvLabel" for="useAmt">사용금액</label>
                    <span class="drvInputSpan"><input id="useAmt" type="number" pattern=”\d*” placeholder="사용금액"></span>
                </li>
                <li>
                    <label class="drvLabel" for="useOil">주유량</label>
                    <span class="drvInputSpan"><input id="useOil" type="number" pattern=”\d*” placeholder="주유량"></span>
                </li>
                <li>
                    <label class="drvLabel" for="drvRem">기타(설명) <span><img class="drvVoiceImg" src="images/Ico_mic.png" alt=""></span> </label>
                    <span class="drvInputSpan"><textarea id="drvRem voiceNotification" class="voice-notification" cols="30" rows="2"></textarea></span>
                </li>
                <li>
                    <label class="drvLabel" for="nextdrvDate">교환 예정일</label>
                    <span class="drvInputSpan"><input id="nextdrvDate" type="date"></span>
                </li>
                <li>
                    <label class="drvLabel" for="nextlastkm">교환 주행거리</label>
                    <span class="drvInputSpan"><input id="nextlastkm" type="number" pattern=”\d*” placeholder="교환 주행거리"></span>
                </li>
                <li>
                    <label for="ChangeConf">교환 확인</label>
                    <span class="drvInputSpan2"><input id="ChangeConf" type="checkbox" value=""></span>
                </li>
            </ul>
        </fieldset>
    </form>
    <script src="js/voice.js"></script>

    <div>
        <button class="openBtn" data-popName="drvpop1">삭제</button> <button class="openBtn" data-popName="drvpop2">저장</button> <button class="openBtn" data-popName="drvpop3">이전화면</button>
    </div>

    <div id="drvpop1" class="drvPopup1 closeBtn">
        <div>
            <span class="material-symbols-outlined">close</span>
            <p>정말 삭제하시겠습니까?</p>
            <input type="button" value="확인">
        </div>
    </div>

    <div id="drvpop2" class="drvPopup2 closeBtn">
        <div>
            <span class="material-symbols-outlined">close</span>
            <p>저장 하시겠습니까?</p>
            <input type="button" value="확인">
        </div>
    </div>

    <div id="drvpop3" class="drvPopup3 closeBtn">
        <div>
            <span class="material-symbols-outlined">close</span>
            <p>이전 화면으로 돌아가시겠습니까?</p>
            <input type="button" value="확인" onClick="history.go(-1)">
        </div>
    </div>

    <table>
        <thead>
        <tr>
            <th>no</th>
            <th>분류</th>
            <th>최종주행거리</th>
            <th>사용금액</th>
            <th>기타(설명)</th>
            <th>교환 주기</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>800</td>
            <td>정비(수리)</td>
            <td>100,000</td>
            <td>100,000</td>
            <td>이젠 알아요 영원할줄 알았던 그대와의 사랑마저 가져온다는걸 그대여 빌게요 나 없이 그대가 행복하게 지낼 먼 훗날의 모습</td>
            <td>X</td>
        </tr>
        </tbody>
    </table>


</section>



<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
