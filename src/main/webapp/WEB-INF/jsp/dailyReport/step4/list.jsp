<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/include/header.jsp" %>
<script type="text/javascript"
        src="/resources/js/dailyReport/list.js?jsVerType=20<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyyMMddHHmmss"/>"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">



<%--<script>  // 달력 옵션 추가 코드--%>
<%--$(function() {--%>
<%--    //input을 datepicker로 선언--%>
<%--    $("#datepicker").datepicker({--%>
<%--        dateFormat: 'yy-mm-dd' //달력 날짜 형태--%>
<%--        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시--%>
<%--        ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서--%>
<%--        ,changeYear: true //option값 년 선택 가능--%>
<%--        ,changeMonth: true //option값  월 선택 가능--%>
<%--        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시--%>
<%--        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로--%>
<%--        ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함--%>
<%--        ,buttonText: "선택" //버튼 호버 텍스트--%>
<%--        ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트--%>
<%--        ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트--%>
<%--        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip--%>
<%--        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트--%>
<%--        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip--%>
<%--        ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)--%>
<%--        ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)--%>
<%--    });--%>

<%--    //초기값을 오늘 날짜로 설정해줘야 합니다.--%>
<%--    $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)--%>
<%--});--%>
<%--</script>--%>
<style>
    /*css 옮겨야함*/
    *{
        font-family: 'NotoSansKR';
        box-sizing: border-box;
        list-style: none;
    }
    html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
        margin: 0;
        padding: 0;
        border: 0;
    }
    html, body{
        font-size: 14px;
        /*background-color: #f5f5f5;*/
        color: #333;
        height: 100%;
    }

    .maxwrap{
        padding: 0 20px;
    }

    img[alt = calling_img]{
        left: 10px;
    }

    /*Content*/
    .subtitle{
        padding-bottom: 10px;
        border-bottom: 1px solid #ddd;
    }
    .sub-contents-wrap{
        padding: 20px 10px 50px;
    }

    .search_form{
        margin: 20px 0 10px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ddd;
    }

    .search_form_bottom_detail{
        text-align: center;
        padding-top: 20px;
        padding-bottom: 33px;
        border: 1px solid #ddd;
        margin: 0 0 10px;
    }

    label[for = searchType]{
        display: inline-flex;
        align-items: center;
        justify-content: flex-start;
        margin-bottom: 15px;
        width: 150px;
    }

    .data_Area > div{
        display: flex;
        margin: 20px 0 10px;
    }

    .data_Area > div > label{
        padding-top: 5px;
        margin-right: 3%;
    }

    input[type = date]{
        border: 1px solid #ddd;
        width: 36%;
        height: 35px;
    }

    .adsearch_btn{
        width: 100%;
        margin-top: 5px;
        border: 1px solid #ddd;
        background-color: #fff;
        color: #0068b7;
        font-size: 14px;
        line-height: 33px;
        font-weight: 600;
    }

    input[type = text]{
        border: 1px solid #ddd;
        background-color: #fff;
        color: #616161;
        box-sizing: border-box;
    }

    .input_select{
        position: relative;
    }

    .input_select > input{
        width: 100%;
        height: 35px;
        vertical-align: center;
        padding-right: 45px;
    }

    select{
        width: 23px;
        border: 1px solid #ddd;
        border-left: none;
        position: absolute;
        top: 0;
        bottom: 0;
        right:0;
    }

    .btn_area{
        text-align: center;
    }

    input[type = button]{
        background-image: url("/image/icons/ico_search-b.png");
        background-position: 25px 9px;
        background-repeat: no-repeat;
        background-size: 23px;
        background-color: #fff;
        font-weight: 600;
        width: 120px;
        height: 40px;
        color: #0068b7;
        border: 1px solid #0068b7;
    }

    .bottom_table{
        text-align: center;
    }

    .total{
        font-size: 15px;
        font-weight: 600;
    }

    .list-table{
        border-top: 2px solid #0068b7;
        width: 100%;
        border-collapse: collapse;
        word-break: keep-all;
    }

    thead{
        display: table-header-group;
        vertical-align: middle;
    }

    /*Footer*/
    a{
        color: black;
        text-decoration: none;
    }

    .logo-circle{
        display: flex;
        flex-direction: column;

        padding-top: 20px;
        gap: 10px;
        position: relative;
    }
    .con:first-child img{
        width: 90px;
        height: 90px;
        border-radius: 50%;
        margin-bottom: 10px;
    }

    .con p {
        font-weight: 900;
        font-size: 1.3rem;
    }

    .con{
        margin-bottom: 20px;
    }

    .con:first-child {
        margin-top: 15px;
    }



    .footerWrapper{
        border-bottom: 1px solid #fff;
        margin-bottom: 20px;
        display: flex;
    }



    @media screen and (max-width: 300px) {
        footer {
            max-width: 1920px;
            width: 100%;
            margin: 0 auto;
            background-color: #84b8e8;
            margin-top: 40px;
        }
        footer div {
            max-width: 700px;
            width: 100%;
            margin: 0 auto;
        }
        footer div:first-child {
            text-align: center;
        }
        footer div a img {
            width: 90px;
        }

        footer div:last-child address {
            color: #fff;
            font-size: 16px;
            line-height: 30px;
            text-align: center;
        }
        footer div:last-child address a {
            color: #fff;
        }

        .logo-circle{
            display: flex;
            flex-direction: column;
            font-weight: 900;
            font-size: 10px;
        }
        footer div a img{
            width: 70px;
        }

        .con p {
            font-weight: 900;
            font-size: 1rem;
        }
        .con:first-child img{
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-bottom: 5px;
        }

    }


    /* ! mobile */
    @media screen and (min-width: 301px) and (max-width: 767px) {
        footer {
            max-width: 1920px;
            width: 100%;
            margin: 0 auto;
            background-color: #84b8e8;
            margin-top: 40px;
        }
        footer div {
            max-width: 700px;
            width: 100%;
            margin: 0 auto;
        }
        footer div:first-child {
            text-align: center;
        }
        footer div a img {
            width: 90px;
        }

        footer div:last-child address {
            color: #fff;
            font-size: 16px;
            line-height: 30px;
            text-align: center;
        }
        footer div:last-child address a {
            color: #fff;
        }

        .logo-circle{
            display: flex;
            flex-direction: column;
            font-weight: 900;
            font-size: 1.2rem;
        }
        .con:first-child img{
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-bottom: 5px;
        }

        .con p {
            font-weight: 900;
            font-size: 1rem;
        }
    }

    /* ! tablet */
    @media screen and (min-width: 768px) and (max-width: 1279px) {
        footer {
            max-width: 1920px;
            width: 100%;
            margin: 0 auto;
            background-color: #84b8e8;
            margin-top: 40px;
        }
        footer div {
            max-width: 700px;
            width: 100%;
            margin: 0 auto;
        }
        footer div:first-child {
            text-align: center;
        }
        footer div a img {
            width: 150px;
        }

        footer div:last-child address {
            color: #fff;
            font-size: 18px;
            line-height: 30px;
            text-align: center;
        }
        footer div:last-child address a {
            color: #fff;
        }
    }
    /* ! desktop */
    @media screen and (min-width: 1280px) {
        footer {
            max-width: 1920px;
            width: 100%;
            margin: 0 auto;
            background-color: #84b8e8;
            margin-top: 40px;
        }
        footer div {
            max-width: 1440px;
            width: 100%;
            margin: 0 auto;
            text-align: center;
        }
        footer div:first-child {
            text-align: center;
        }
        footer div a img {
            width: 150px;
        }

        footer div:last-child address {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
        }
        footer div:last-child address a {
            color: #fff;
        }
    }
</style>
<section class="sub-contents-wrap maxwrap">
    <div>
        <h1 class="subtitle" >
            <span style="font-size: 18px;">일보 조회</span>
            <img src="/resources/image/icons/ico_que.png" alt="" class="que-dis-mn" onclick="">
        </h1>
    </div>
    <form>
        <div class="search_form">
            <div class="data_Area">
                <div>
                    <label style="font-size: 13px; font-weight: 600;">▪ 운행기간</label>
                    <input type="date" class="fromDate">
                    <span style="font-weight: 600; margin:0 5px 0 5px; padding-top: 5px;">~</span>
                    <input type="date" class="toDate">
                    <!--                        input에 오늘 날짜 세팅을 위한 스크립트-->
                    <script>
                        $('.fromDate').attr("value",new Date().toISOString().substring(0,10))
                        $('.toDate').attr("value",new Date().toISOString().substring(0,10))
                    </script>
                </div>
                <button type="button" class="adsearch_btn">상세검색 닫기 ▼</button>
                <!--                    상세검색 열고 닫는 스크립트-->
                <script>
                    $(".adsearch_btn").on("click", function (){
                        if ($(this).text() == '상세검색 닫기 ▼'){
                            $(this).text('상세검색 열기 ▼');
                        } else {
                            $(this).text('상세검색 닫기 ▼');
                        }
                        $("ul").toggle();
                    })
                </script>
            </div>
            <ul>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="제출처" name="club" class="club_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.club_input').value=
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="운반">운반</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="Kim" name="driver" disabled>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="tel" placeholder="휴대폰 번호" name="tel" class="tel_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.tel_input').value=
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="구디">구디</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="진행상태" name="state" class="state_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.state_input').value =
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="지밸리">지밸리</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="상차지" name="fromSite" class="fromSite_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.fromSite_input').value =
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="출퇴근">출퇴근</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="하차지" name="toSite" class="toSite_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.toSite_input').value =
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="자차">자차</option>
                        </select>
                    </div>
                </li>
                <li>
                    <label for=""></label>
                    <div class="input_select">
                        <input type="text" placeholder="품목" name="things" class="things_input">
                        <select class="club_slect"
                                onchange="document.querySelector('.things_input').value =
                                    this.options[this.selectedIndex].value"
                        >
                            <option value="전체">전체</option>
                            <option value="운반">운반</option>
                        </select>
                    </div>
                </li>
            </ul>
        </div>
        <div class="search_form_bottom_detail">
            <div style="width: 50%; float: left;">
                <label for="searchType">
                    <input type="radio" name="searchType" value="0">
                    제출처 기준
                </label>
                <br>
                <label for="searchType">
                    <input type="radio" name="searchType" value="1">
                    운행일 기준
                </label>
                <br>
                <label for="searchType">
                    <input type="radio" name="searchType" value="2">
                    상차지 기준
                </label>
            </div>
            <div style="margin-left: 50%;">
                <label for="searchType">
                    <input type="radio" name="searchType" value="3">
                    하차지 기준
                </label>
                <br>
                <label for="searchType">
                    <input type="radio" name="searchType" value="4">
                    품목 기준
                </label>
                <br>
                <label for="searchType">
                    <input type="radio" name="searchType" value="5">
                    대수 기준
                </label>
            </div>
        </div>
    </form>
    <div class="btn_area">
        <input type="button" value="검색">
    </div>
    <div class="bottom_table">
        <div class="table_top">
            <p class="total">데이터 0건이 검색되었습니다.</p>
        </div>
        <div>
            <table class="list-table">
                <colgroup>
                    <col width="8%">
                    <col width="15%">
                    <col width="12%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                    <col width="12%">
                    <col width="13%">
                </colgroup>
                <thead>
                <tr>
                    <th>No</th>
                    <th>차량번호</th>
                    <th>품목</th>
                    <th>상차지</th>
                    <th>하차지</th>
                    <th>제출처</th>
                    <th>대수</th>
                    <th>운행일</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>4321</td>
                    <td>오이</td>
                    <td>너네집</td>
                    <td>강원도</td>
                    <td>오이 농장</td>
                    <td>141</td>
                    <td>2023.09.05</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>1234</td>
                    <td>감자</td>
                    <td>강원도</td>
                    <td>너네집</td>
                    <td>강원도 햇감자 판매</td>
                    <td>140</td>
                    <td>2023.09.04</td>
                </tr>
                </tbody>
            </table>
            <script>
                // 테이블 정렬 함수
                function sortTableByColumn(columnIndex) {
                    var table, rows, switching, i, x, y, shouldSwitch;
                    table = document.querySelector(".list-table");
                    switching = true;

                    while (switching) {
                        switching = false;
                        rows = table.rows;

                        for (i = 1; i < rows.length - 1; i++) {
                            shouldSwitch = false;
                            x = rows[i].querySelectorAll("td")[columnIndex];
                            y = rows[i + 1].querySelectorAll("td")[columnIndex];

                            // 오름차순으로 정렬
                            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                shouldSwitch = true;
                                break;
                            }
                        }

                        if (shouldSwitch) {
                            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                            switching = true;
                        }
                    }
                }

                // 라디오 박스 클릭 시 해당 열을 기준으로 테이블 정렬 함수 호출
                var radioInputs = document.querySelectorAll("input[name='searchType']");
                radioInputs.forEach((input) =>  {
                    input.addEventListener("click", function () {
                        var columnIndex = parseInt(this.value);
                        sortTableByColumn(columnIndex);
                    });
                });
            </script>
        </div>
    </div>
</section>


<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>