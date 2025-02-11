<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/resources/css/dailyreport.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>
<script type="text/javascript"
        src="/resources/js/dailyReport/list.js?jsVerType=20<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyyMMddHHmmss"/>"></script>

<style>
    ul.basic-menu {
        display: grid;

        grid-template-columns: repeat(2, 1fr);
        justify-content: center;

        margin-bottom: 5%;
        margin-top: 5%;
        margin-left: 12%;

    }

    #update-button {
        padding: 5px;
        border-radius: 10px;
        position: absolute;
        background-color: #ffffff;
        margin-left: 10px;
        border: 2px solid #0068b7;
    }

    .basic-menu li {
        display: flex;

    }


    .race-write,
    .race-search,
    .car-repair,
    .car-search {
        width: 60px;
        height: 40%;
    }

    .race-registration,
    .race-check,
    .car-registration,
    .car-check {
        padding: 15px;
        border-radius: 15px;
        border: 2px solid #0068b7;
        margin-right: 10px;
        text-align: center;
        white-space: nowrap;
        background-color: #ffffff;
    }

    .management {
        display: flex;

    }

    .car-management {
        margin-left: 15px;

    }

    .management {
        justify-content: center;
    }

    .today-menu th:nth-child(2) {
        border-left: 1px solid;
        border-right: 1px solid;
    }

    .today-menu th:nth-child(4) {
        border-left: 1px solid;
        border-right: 1px solid;
    }

    .today-menu,
    .car-menu {
        background-color: #e0e3e8;
    }

    .today-menu,
    .car-menu {
        height: 30px;
    }

    .car-menu>th {
        border: 1px solid;
    }

    .today-car,
    .car-care,
    .today-recruitment {
        margin-top: 30px;
    }

    .today-car,
    .car-care,
    .today-recruitment {
        font-weight: bold;
    }



    .today-graph {
        border: 1px solid;
        border-collapse: collapse;
        width: 100%;
    }

    .today-graph,
    .car-graph {
        margin-top: 10px;
    }

    .car-graph {
        border: 1px solid black;
        border-collapse: collapse;
        width: 100%;
    }
</style>


<section class="sub-contents-wrap maxwrap"style="background-color: #cce0f7">

 <script>
        // 달력 옵션 추가 코드
        $(function () {
            //input을 datepicker로 선언
            $("#datepicker1,#datepicker2").datepicker({
                dateFormat: "yy-mm-dd", //달력 날짜 형태
                showOtherMonths: true, //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                showMonthAfterYear: true, // 월- 년 순서가아닌 년도 - 월 순서
                changeYear: true, //option값 년 선택 가능
                changeMonth: true, //option값  월 선택 가능
                showOn: "both", //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시
                buttonImage:
                    "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif", //버튼 이미지 경로
                buttonImageOnly: true, //버튼 이미지만 깔끔하게 보이게함
                buttonText: "선택", //버튼 호버 텍스트
                yearSuffix: "년", //달력의 년도 부분 뒤 텍스트
                monthNamesShort: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                ], //달력의 월 부분 텍스트
                monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                ], //달력의 월 부분 Tooltip
                dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"], //달력의 요일 텍스트
                dayNames: [
                    "일요일",
                    "월요일",
                    "화요일",
                    "수요일",
                    "목요일",
                    "금요일",
                    "토요일",
                ], //달력의 요일 Tooltip
                minDate: "-5Y", //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                maxDate: "+5y", //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
            });

            //초기값을 오늘 날짜로 설정해줘야 합니다.
            $("#datepicker2").datepicker("setDate", "today"); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const updateButton = document.getElementById("update-button");
            const startDateInput = document.getElementById("datepicker1");

            // 시작 날짜를 당월 1일로 설정
            const today = new Date();
            const firstDayOfMonth = new Date(
                today.getFullYear(),
                today.getMonth(),
                1
            );
            const formattedFirstDay = firstDayOfMonth
                .toISOString()
                .split("T")[0];
            startDateInput.value = formattedFirstDay;

            // 종료 날짜를 오늘로 설정
            // const formattedToday = today.toISOString().split("T")[0];
            // endDateInput.value = formattedToday;

            // updateButton.addEventListener("click", function () {
            //     const startDate = startDateInput.value;
            //     const endDate = endDateInput.value;

            //     console.log("시작 날짜:", startDate);
            //     console.log("종료 날짜:", endDate);
            // });
        });
    </script>


    <article class="homescreen">
        <div class="date-container" style="margin-left= 10%;text-align:center; ">
            <div class="date-picker">

                <label class="start-text" for="start-date">운행일
                    <input id="datepicker1" />
                    <span>~</span>
                    <input id="datepicker2" />
                </label>
                <button id="update-button">조회</button>
                <ul class="basic-menu">
                    <li>
                        총 운반 금액 :
                        <div class="carrying-money" style="margin: 0 0 5% 0">
                        <input text class="" size="5px ,5px">원</div>
                    </li>
                    <li>
                        총 운행대 수 :
                        <div class="carrying-car" style="margin: 0 0 5% 0">
                         <input text class="" size="5px ,5px">대</div>
                    </li>
                    <li>
                        총 비용 금액 :
                        <div class="expense-money">
                         <input text class="" size="5px ,5px">원</div>
                    </li>
                    <li>
                    마지막 등록일 :
                    </li>


                </ul>
            </div>
        </div>


        <section class="management" >

        <div>
            <div style="display: flex; align-items: center">

                <div style="margin-light:5%; text-align:center; font-weight: 600">
                    <div class="race-check">
                        <img class="race-search" src="/resources/image/ico_check.png" alt="거래처전표조회" />
                    </div>

                    <span>거래처전표조회</span>

                </div>

                <div class="car-bundle">
                    <div style=" text-align:center; font-weight: 600">
                        <div class="car-registration">
                            <img class="car-repair" src="/resources/image/ico_carrepair.png" alt="주문배차등록" />
                        </div>
                        <span>주문배차등록</span>
                    </div>
                </div>
                <div style=" text-align:center; font-weight: 600">
                    <div class="car-check">
                        <img class="car-search" src="/resources/image/ico_carcheck.png" alt="" />
                    </div>
                    <span>차량관리</span>
                </div>
                </div>
        </section>



        <section>
            <p class="today-car">금일 배차 현황</p>
            <table class="today-graph">
                <tr class="today-menu">
                    <th>차량번호</th>
                    <th>상차지</th>
                    <th>하차지</th>
                    <th>품목</th>
                    <th>대수</th>
                </tr>
            </table>
            <p class="car-care">제출 받은 일보</p>
            <table class="car-graph">
                <tr class="car-menu">
                    <th>차량번호</th>
                    <th>상차지</th>
                    <th>하차지</th>
                    <th>품목</th>
                    <th>대수</th>
                </tr>
            </table>
            <p class="today-recruitment">금일 차량 모집 공고</p>
            <table class="car-graph">
            <tr class="car-menu">
                                <th>차량번호</th>
                                <th>상차지</th>
                                <th>하차지</th>
                                <th>품목</th>
                                <th>대수</th>
                            </tr>
                            </table>
        </section>
    </article>

</section>


<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>