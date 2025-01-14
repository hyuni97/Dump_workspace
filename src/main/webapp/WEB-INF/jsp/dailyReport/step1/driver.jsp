<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/include/header.jsp" %>

<style>
    .homescreen {
        background-color: #cce0f7;
        padding: 5px;
    }
    #datepicker1,
    #datepicker2 {
        width: 100px;
    }
    .ui-datepicker-trigger {
                    display: none;
                }
    #update-button {
        padding: 3px;
        border-radius: 10px;
        position: absolute;
        background-color: #ffffff;
        margin-left: 10px;
        border: 1px solid #0068b7;
        font-size: 16px;
        font-weight: bold;
    }
    ul.basic-menu {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        margin-bottom: 30px;
        margin-top: 10px;
    }
    .management {
        display: flex;
    }
    .car-management {
        margin-left: 15px;
    }
    .race-text,
    .car-text {
        font-weight: bold;
        margin-bottom: 10px;
    }
    .race-bundle,
    .car-bundle {
        display: inline-flex;
    }
    .race-bundle {
        text-align: center;
    }
    .race-registration,
    .race-check,
    .car-registration,
    .car-check {
        padding: 10px;
        border-radius: 15px;
        border: 2px solid #0068b7;
        margin-right: 10px;
        text-align: center;
        white-space: nowrap;
        background-color: #ffffff;
    }
    .car-search-link {
        margin-left: 10px;
    }
    .race-search-link {
        margin-left: 5px;
    }
    .check-car,
    .registration-car,
    .search-race,
    .write-race {
        color: #000000;
    }
    .race-write,
    .race-search,
    .car-repair,
    .car-search {
        width: 45px;
    }
    .race-management {
        border-right: 1px solid #0068b7;
    }
    .basic-menu li {
        display: flex;
    }
    .today-recruitment-menu th, .today-menu th:nth-child(2) {
        border-left: 1px solid;
        border-right: 1px solid;
    }
    .today-recruitment-menu th, .today-menu th:nth-child(4) {
        border-left: 1px solid;
        border-right: 1px solid;
    }
    .today-recruitment-menu, .car-menu, .today-menu{
        font-size : 14px;
        font-weight : 600;
        }
    .today-car,
    .car-care,
    .today-recruitment {
        margin-top: 30px;
    }
    .search-race{
    margin-left : -5px
    }
    .write-race{
    margin-left : -8px
    }
    .check-car, .registration-car{
    margin-left : 6px
    }
    .today-car,
    .car-care,
    .today-recruitment {
        font-weight: bold;
    }
    .today-graph,
    .car-graph, .today-car-recruitment {
        margin-top: 10px;
    }
    .today-menu,
    .car-menu, .today-recruitment-menu {
        background-color: #e0e3e8;
    }
    .car-graph, .today-car-recruitment, .today-graph {
        border: 1px solid;
        border-collapse: collapse;
        width: 100%;
    }
    .car-menu th:nth-child(2) {
        border-left: 1px solid;
        border-right: 1px solid;
    }
    .car-search-link,
    .car-repair-link,
    .race-search-link,
    .race-write-link {
        text-decoration-line: none;
    }
    @media (min-width: 551px) {
        .homescreen {
            position: absolute;
        }
        .start-text {
            font-size: 18px;
            font-weight: bold;
        }
        .management {
            justify-content: center;
        }
        #start-date,
        #end-date {
            font-size: 18px;
        }
        #update-button {
            font-size: 18px;
        }
        .race-text,
        .car-text {
            font-size: 18px;
        }
        .today-car,
        .car-care,
        .today-recruitment {
            font-size: 18px;
        }
        .today-menu,
        .car-menu {
            height: 30px;
        }

        .basic-menu {
            place-items: center;
        }
        .date-container {
            margin-top: 50px;
            position: relative;
            left: 50%;
            transform: translate(-50%, -50%);
            top: 50%;
            text-align: center;
        }
    }
</style>


<script type="text/javascript"
        src="/resources/js/dailyReport/list.js?jsVerType=20<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyyMMddHHmmss"/>"></script>
<section class="sub-contents-wrap maxwrap">



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
                    "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
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
        <div class="date-container">
            <div class="date-picker">
                <label class="start-text" for="start-date"
                >운행일
                    <input id="datepicker1" />
                    <span>~</span>
                    <input id="datepicker2" />
                </label>
                <button id="update-button">조회</button>
                <ul class="basic-menu">
                    <li>
                        총 운반 금액 :
                        <div class="carrying-money">원</div>
                    </li>
                    <li>
                        총 운행대 수 :
                        <div class="carrying-car">대</div>
                    </li>
                    <li>
                        총 비용 금액 :
                        <div class="expense-money">원</div>
                    </li>
                    <li>마지막 등록일 :</li>
                </ul>
            </div>
        </div>
        <section class="management">
            <section class="race-management">
                <p class="race-text">운행 일보 관리</p>
                <div class="race-bundle">
                    <a class="race-write-link" href="/dailyReport/form">
                        <div class="race-registration">
                            <img
                                    class="race-write"
                                    src="/resources/image/step1/write.png"
                                    alt="일보등록"
                            />
                        </div>
                        <span class="write-race">일보등록</span>
                    </a>
                    <a class="race-search-link" href="/dailyReport/list">
                        <div class="race-check">
                            <img
                                    class="race-search"
                                    src="/resources/image/step1/check.png"
                                    alt="일보조회"
                            />
                        </div>
                        <span class="search-race">일보조회</span>
                    </a>
                </div>
            </section>
            <section class="car-management">
                <p class="car-text">차량 관리</p>
                <div class="car-bundle">
                    <a
                            class="car-repair-link"
                            href="/dailyReport/carcareform"
                    >
                        <div class="car-registration">
                            <img
                                    class="car-repair"
                                    src="/resources/image/step1/car-repair.png"
                                    alt=""
                            />
                        </div>
                        <span class="registration-car">차계부등록</span>
                    </a>
                    <a
                            class="car-search-link"
                            href="/dailyReport/carcarelist"
                    >
                        <div class="car-check">
                            <img
                                    class="car-search"
                                    src="/resources/image/step1/car-check.png"
                                    alt=""
                            />
                        </div>
                        <span class="check-car">차계부조회</span>
                    </a>
                </div>
            </section>
        </section>
        <section>
            <p class="today-car">금일 배차 현황</p>
            <table class="today-graph">
                <tr class="today-menu">
                    <th>제출처</th>
                    <th>상차지</th>
                    <th>하차지</th>
                    <th>품목</th>
                    <th>대수</th>
                </tr>
            </table>
            <p class="car-care">차량 관리</p>
            <table class="car-graph">
                <tr class="car-menu">
                    <th>분류</th>
                    <th>교환 예정일</th>
                    <th>교환 주행거리</th>
                </tr>
            </table>
            <p class="today-recruitment">금일 차량 모집 공고</p>
            <table class="today-car-recruitment">
                            <tr class="today-recruitment-menu">
                                <th>제출처</th>
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