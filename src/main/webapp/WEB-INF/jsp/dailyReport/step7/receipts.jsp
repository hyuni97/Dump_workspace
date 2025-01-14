<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--test123--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <meta name="msapplication-TileImage" content="/resources/image/favicon/favicon.png">
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.png">

    <!-- Style-->
    <link href="/resources/js/jquery.modal-master/css/jquery.modal.css?version=1.2&20230831191239" type="text/css"
          rel="stylesheet"/>
    <link href="/resources/js/jquery.modal-master/css/jquery.modal.theme-xenon.css?version=1.2&20230831191239"
          type="text/css" rel="stylesheet"/>
    <link href="/resources/js/jquery.modal-master/css/jquery.modal.theme-atlant.css?version=1.2&20230831191239"
          type="text/css" rel="stylesheet"/>

    <link href="/resources/css/step7/style.css?jsVerType=20230831191239" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/resources/css/loading.css">
    <style type="text/css">

        .default-tab__ul.cnt8 li {
            width: 12.5%;
        }

        .wp70 {
            width: 70%;
        }

        .wp90 {
            width: 90%;
        }

        @media screen and (min-width: 1025px) {
            .onlyMobileFunction {
                display: none;
            }

        }

        @media screen and (max-width: 1024px) {
            .workplan_select {
                width: 23px;
                position: absolute;
                top: 0;
                right: 0;
                border-left: none;
                padding-left: 0;
            }

            .search-form-details label {
                position: absolute;
                left: 0;
                font-size: 13px;
                width: 35%;
            }

            .search-form-details li {
                width: 100%;
                float: none;
                margin-right: 0;
                position: relative;
                padding-bottom: 10px;
            }

            .search-form-details .input-group {
                width: 100%;
                padding-left: 120px;
            }
        }

        .po-re {
            position: relative;
        }

        .po-ab {
            position: absolute;
            top: 0;
            right: 30px;
        }

        .table_text_word {
            word-break: break-all;
            wrap: hard;
        }

        .table_text_word_keep {
            word-break: break-word;
            wrap: hard;
        }

        .pre_text_word {
            white-space: pre-wrap; /* CSS3*/
            white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
            white-space: -pre-wrap; /* Opera 4-6 */
            white-space: -o-pre-wrap; /* Opera 7 */
            word-wrap: break-all; /* Internet Explorer 5.5+ */
        }

        .mobile_helpBox_list {
            position: relative;
            z-index: 1
        }

        .opacity_0_5 {
            opacity: 0.5;
        }

        .ui-datepicker {
            font-size: 12px;
            width: 250px
        }

        .ui-datepicker select.ui-datepicker-month {
            width: 30%;
            font-size: 11px;
            margin-left: 5%;
            height: 20px
        }

        .ui-datepicker select.ui-datepicker-year {
            width: 30%;
            font-size: 11px;
            height: 20px
        }

        #banner_wrap {
            margin: 0 auto;
            text-align: center;
        }

        #banner_quick_bg {
            margin: 0 auto;
            text-align: center;
            width: 1000px;
            position: relative;
        }

        #banner_quick {
            position: absolute;
            z-index: 2;
            top: 15px;
            width: 150px;
            height: 30px;
            right: -270px;
            border: 1px solid rgba(51, 86, 123, 0.8);
            border-width: 5px;
            background-color: #002c5a
        }

        #banner_quick a {
            color: white;
        }

        #banner_container {
            position: relative;
        }

        .lineFirstBold:first-line {
            color: #6f1111;
            font-weight: bold;
        }


        .comp-name-mode {
            max-width: 310px;
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-weight: 600;
        }

        .comp-name-mode-question {
            max-width: 310px;
            position: absolute;
            top: 80%;
            left: 52%;
            transform: translate(-50%, -50%);
            font-weight: 600;
        }


        @media screen and (max-width: 1024px) {
            .onlyPCFunction {
                display: none;
            }

            .mobile-fw-300 {
                font-weight: 300;
            }
        }

        #graph_donut_title {
            width: 40%;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
        }

        .schedule-bg {
            color: rgb(0, 104, 183);
            font-weight: bold;
            border: 1px solid rgb(0, 104, 183);
        }

        /* LINE :: focus mouse change */
        .pointer {
            cursor: pointer;
        }

        /* LINE :: th align center */
        .list-table th.center {
            text-align: center;
        }

        .mobile-navi-dept1 a.active {
            background: #0068b7;
            color: #fff;
        }

        .closeMask {
            position: fixed;
            z-index: 99;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }

        @media screen and (max-width: 280px) {
            .search-form-major .date-wrap {
                margin-top: initial;
                margin-left: initial;
            }

        }
    </style>

    <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

    <script src="/resources/js/include/header.js?jsVerType=2020230831191239"></script>

    <script type="text/javascript"
            src="/resources/js/jquery.modal-master/js/jquery.modal.js?jsVerType=20230831191239"></script>

    <title>배차관리시스템</title>
</head>


<body>

<div class="layer-mask"></div>
<header class="header">
    <div class="header-top">
        <div class="maxwrap">
            <div class="header-topWrap">
					<span style="font-weight: bold; font-size: 0; display: inline-block;">
						<img src="/resources/image/login/ico-call.png" alt="" onclick="document.location.href='tel:'">

						<span style="padding-left: 10px;">



									<img src="/resources/image/icons/ico_que.png" alt="" class="que-dis-mn"
                                         onclick="$.openLayerHelpMsgPopUp(this, 'W01-3');">


							</span>
					</span>

                <!--업체명-->
                <span class="comp-name">
						미래내일
					</span>

                <div class="header-top-right">
                    <ul class="header-top__ul">
                        <li><a href="#" onclick="$.logout();" style="width: auto; font-size: 17px; font-weight: bold;">로그아웃</a>
                        </li>
                        <li>
                            <button class="header__btn-menu" onclick="$.toggleLeftMenu()"
                                    style="width: 35px; font-size: 17px; font-weight: bold;">
                                메뉴
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!--header-top-->

    <nav class="mobile-navi-wrap">
        <h1 class="offscreen">모바일 웹 네비게이션</h1>

        <!--로그인후//dis-n 클래스 로그인에 따라 추가-->
        <div class="mobile-navi-top">
        <span>
            임창운 님
        </span>
            <span class="bar"></span>
            <span class="app-dis-n">
            <span onclick="$.moveChangeForm();">
                암호변경
            </span>
        </span>
            <span class="bar"></span>
            <span class="app-dis-n">
            <span onclick="$.logout()">종료</span>
        </span>
            <a href="javascript:$.toggleLeftMenu()" class="close-btn" title="메뉴창 닫힘">
                <img src="/resources/image/icons/ico_close.png" alt="닫기">.
            </a>
        </div>

        <ul class="mobile-navi-dept1">


            <li>
                <p>
                    <a class="left_menu" href="/carManage/list">
                        <span style="font-weight: bold; color: blue;">①</span>
                        운행 및 배차진행·전표관리
                    </a>
                </p>
            </li>

            <li>
                <p><a class="left_menu" href="/integrateDispatch/list">

                    <span style="font-weight: bold; color: blue;">③</span>


                    차량별 배차현황


                </a></p>
            </li>


        </ul>
    </nav>
</header>

<div id="page_loading_progressbar"
     style="z-index:9998; position:fixed; visibility:hidden; left:calc(100%/2); top:calc(100%/2);">
    <div class="closeMask" style="left:0px; top:0px;"></div>

    <div id="ajaxloader2">
        <div class="outer"></div>
        <div class="inner" style="top: -40px;"></div>
        <p style="color:#fff; text-align:center;">Checking...</p>
    </div>
</div>


<div class="layerMask dis-n pop-wrap" id="pop-question" tabindex="0">
    <div class="layerMask__inner" style="min-height: 50px">
        <section class="layer-popup" style="min-height: 50px;">
            <div class="pop-header modal-title">
                <h3 id="helpMsgTitle"></h3>

                <button type="button" onclick="$.closeLayerHelpMsgPopUp(this);" class="pop-close">
                    <i class="ico-close-b"></i>
                    <span class="offscreen">닫기버튼</span>
                </button>
            </div>

            <div style="padding: 20px 10px;overflow-y: scroll;min-height: 50px; max-height: 450px;">
                <pre style="white-space: break-spaces; font-family: 'NotoSansKR' !important;" id="helpMsgBody"></pre>
            </div>
        </section>
    </div>
</div>

<script type="text/javascript"
        src="/resources/js/dailyReport/step7/list.js?jsVerType=2020230831191239"></script>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64bdd806e937defb179aa9a2b9cc6c95&libraries=services"></script>

<script>
    $(document).ready(function () {
        if ('4' == 4) {
            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd",
                showMonthAfterYear: true,
                monthNamesShort: month_text,
                dayNamesMin: day_text,
                yearSuffix: "년",
                changeYear: true,
                changeMonth: true,
                minDate: '-2m',
                yearRange: "-1:+5",
            });
            $('.last').datepicker("option", "minDate", $(".fst").val()); // 운행기간 종료일 범위 초기값 설정

            $('.fst').on('change', function () { // 운행기간 종료일 범위 동적처리
                $('.last').datepicker("option", "minDate", $(".fst").val());
            });
        } else {
            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd",
                showMonthAfterYear: true,
                monthNamesShort: month_text,
                dayNamesMin: day_text,
                yearSuffix: "년",
                changeYear: true,
                changeMonth: true,
                yearRange: "-5:+5",
            });
            $('.last').datepicker("option", "minDate", $(".fst").val()); // 운행기간 종료일 범위 초기값 설정

            $('.fst').on('change', function () { // 운행기간 종료일 범위 동적처리
                $('.last').datepicker("option", "minDate", $(".fst").val());
            });
        }


    });
</script>

<section class="sub-contents-wrap maxwrap">

    <div class="sub-title">
        <h1 class="sub-title__h1">
				<span class="v-mid">
                        제출처 전표 조회
				</span>
            <img src="/resources/image/icons/ico_que.png" alt="" class="que-dis-mn"
                 onclick="$.openLayerHelpMsgPopUp(this, 'W05');">
        </h1>

        <ul class="location__ul">
            <li><span class="offscreen">홈</span></li>
            <li>
					<span>

                               제출처 전표 조회

					</span>
            </li>
        </ul>
    </div>

    <form name="listfrm" method="post">
        <input type="hidden" name="pageNo" value="1"/>
        <input type="hidden" name="searchStartDate" value="2023-08-31"/>
        <input type="hidden" name="searchEndDate" value="2023-08-31"/>
        <input type="hidden" name="carNo" value="임창운"/>
        <input type="hidden" name="fromsite" value=""/>
        <input type="hidden" name="tosite" value=""/>
        <input type="hidden" name="item" value=""/>
        <input type="hidden" name="currStatus" value=""/>
        <input type="hidden" name="sheetID"/>
        <input type="hidden" name="searchType" value="car"/>
        <input type="hidden" name="searchDetailChk" value="0">
    </form>

    <form name="pagefrm" method="post">
        <input type="hidden" name="pageNo" value="1"/>
        <input type="hidden" name="searchStartDate" value="2023-08-31"/>
        <input type="hidden" name="searchEndDate" value="2023-08-31"/>
        <input type="hidden" name="carNo" value="임창운"/>
        <input type="hidden" name="fromsite" value=""/>
        <input type="hidden" name="tosite" value=""/>
        <input type="hidden" name="item" value=""/>
        <input type="hidden" name="searchType" value="car"/>
        <input type="hidden" name="club" value=""/>
        <input type="hidden" name="carHost" value=""/>
        <input type="hidden" name="allChk2Result" value="0">
        <input type="hidden" name="searchDetailChk" value="0">
        <input type="hidden" name="sscode" value="">
        <input type="hidden" name="autoSSChk" value="false">

    </form>

    <form name="searchfrm" method="post">
        <input type="hidden" name="pageNo" value="1"/>
        <input type="hidden" id="searchDetailChk" name="searchDetailChk" value="0">

        <div class="search-form">
            <div class="search-form-major" id="dateArea">
                <label>운행기간</label>
                <div class="date-wrap dis-ib dis-b-t">
                    <input type="text" value="2023-08-31" class="fst datepicker"
                           name="searchStartDate" readonly autocomplete="off"> <span class="unit">~</span>
                    <input type="text" value="2023-08-31" class="last datepicker" name="searchEndDate"
                           readonly autocomplete="off">
                </div>

                <button type="button" id="advsearch" class="btn btn-details">상세검색 열기 ▼</button>
            </div>

            <ul class="search-form-details dis-n searchArea">
                <li>
                    <label>구분</label>
                    <div class="input-group select">
                        <input type="text" class="wp100 clubAutocomplete trn" placeholder="구분" name="club" id="club"
                               value=""
                               autocomplete="off">
                        <%--                        <span class="input-group-clear dis-n" id="club_clear">x</span>--%>
                        <select class="club " id="clubBox" onchange="$.selectBoxChange(this.value, 'club')">
                            <option value="">전체</option>
                            <option value="운반"
                            >운반
                            </option>
                        </select>
                    </div>
                </li>
                <%--                <li>--%>
                <%--                    <label>차량번호</label>--%>
                <%--                    <div class="input-group select">--%>
                <%--                        <input type="text" class="wp100 carNoAutocomplete trn" placeholder="차량번호" name="carNo"--%>
                <%--                               id="carNo" value="임창운"--%>
                <%--                               autocomplete="off" disabled>--%>

                <%--                    </div>--%>
                <%--                </li>--%>
                <li>
                    <label>상차지</label>
                    <div class="input-group select">
                        <input type="text" class="wp100 fromsiteAutocomplete trn" placeholder="상차지" name="fromsite"
                               id="fromsite" value="" autocomplete="off">
                        <%--                        <span class="input-group-clear" id="fromsite_clear">x</span>--%>
                        <select class="fromsite " id="fromsiteBox" onchange="$.selectBoxChange(this.value, 'fromsite')">
                            <option value="">전체</option>

                            <option value="구디"
                            >구디
                            </option>

                        </select>
                    </div>
                </li>
                <li>
                    <label>하차지</label>
                    <div class="input-group select">
                        <input type="text" class="wp100 tositeAutocomplete trn" placeholder="하차지" name="tosite"
                               id="tosite" value="" autocomplete="off">
                        <%--                        <span class="input-group-clear" id="tosite_clear">x</span>--%>
                        <select class="tosite " id="tositeBox" onchange="$.selectBoxChange(this.value, 'tosite')">
                            <option value="">전체</option>

                            <option value="지밸리"
                            >지밸리
                            </option>

                        </select>
                    </div>
                </li>
                <li>
                    <label>품목</label>
                    <div class="input-group select">
                        <input type="text" class="wp100 itemAutocomplete trn" placeholder="품목" name="item" id="item"
                               value="" autocomplete="off">
                        <%--                        <span class="input-group-clear" id="item_clear">x</span>--%>
                        <select class="item " id="itemBox" onchange="$.selectBoxChange(this.value, 'item')">
                            <option value="">전체</option>

                            <option value="출퇴근"
                            >출퇴근
                            </option>

                        </select>
                    </div>
                </li>
                <li>
                    <label>차량번호</label>
                    <div class="input-group select">


                        <input type="text" class="wp100 carHostAutocomplete trn" placeholder="차량번호"
                               name="carHost" id="carHost" value="" autocomplete="off">
                        <%--                        <span class="input-group-clear dis-n" id="carHost_clear">x</span>--%>
                        <select class="carHost " id="carHostBox"
                                onchange="$.selectBoxChange(this.value, 'carHost')">
                            <option value="">전체</option>

                            <option value="자차"
                            >자차
                            </option>

                        </select>


                    </div>
                </li>

                <%--                <li>--%>
                <%--                    <label>진행상태</label>--%>
                <%--                    <div class="input-group select">--%>
                <%--                        <input type="text" class="wp100 Autocomplete trn" placeholder="진행상태"--%>
                <%--                               name="currStatus" id="currStatus" value="" autocomplete="off">--%>
                <%--                        <span class="input-group-clear dis-n" id="currStatus_clear">x</span>--%>
                <%--                        <select class="currStatus " id="currStatusBox"--%>
                <%--                                onchange="$.selectBoxChange(this.value, 'currStatus')">--%>
                <%--                            <option value="">전체</option>--%>
                <%--                            <option value="배차">배차</option>--%>
                <%--                            <option value="요청">요청</option>--%>
                <%--                            <option value="상차">상차</option>--%>
                <%--                            <option value="하차">하차</option>--%>
                <%--                        </select>--%>
                <%--                    </div>--%>
                <%--                </li>--%>
            </ul>
        </div>


        <div style="text-align: center;padding-top: 30px;border: 1px solid #ddd;padding-bottom: 30px; margin: 0 0 10px;">
            <div style="width: 50%;  float: left;">
                <label style="display: inline-flex;align-items: center;justify-content: flex-start;"><input
                        type="radio" name="searchType"
                        value="car" checked/>차량 기준</label>
                <%--                <label style="display: inline-flex;align-items: center;margin-top: 15px;justify-content: flex-start;width: 155px;"><input--%>
                <%--                        type="radio" name="searchType"--%>
                <%--                        value="tosite"/>하차지 기준</label>--%>
                <%--                <br/>--%>
                <%--                <label style="display: inline-flex;align-items: center;margin-top: 15px;justify-content: flex-start;width: 155px;"><input--%>
                <%--                        type="radio" name="searchType"--%>
                <%--                        value="operation"/>운행일 기준</label>--%>
            </div>
            <div style="margin-left: 50%;">
                <label style="display: inline-flex;align-items: center; justify-content: flex-start;width: 155px;"><input
                        type="radio" name="searchType"
                        value="fromsite"/>운행일 기준</label>
                <%--                <br/>--%>
                <%--                <label style="display: inline-flex;align-items: center;margin-top: 15px;justify-content: flex-start;width: 190px;"><input--%>
                <%--                        type="radio" name="searchType"--%>
                <%--                        value="carCost"/>차량 운반비--%>
                <%--                    기준</label>--%>
            </div>
        </div>
    </form>

    <div class="btn-area erpSearchBtn">
        <input type="button" class="btn btn-search btn-search__line" value="검색" onClick="$.search()"
               onkeydown="if(event.keyCode == 13) return false;">
    </div>

    <div class="">
        <div class="table-top" style="height: auto; display:  block;">
            <p class="total">
                <span>데이터</span> <span class="cnt default-blue">1</span>
                <span>건 (총대수 : <span class="cnt default-blue">1</span> 대)가 검색되었습니다.</span>
            </p>
        </div>

        <div class="btn-area">
            <input type="button" class="btn btn-black" value="일괄결제" onClick="$.search()"
                   onkeydown="if(event.keyCode == 13) return false;">
            <input type="button" class="btn btn-black" value="취소" onClick="$.search()"
                   onkeydown="if(event.keyCode == 13) return false;">
        </div>

        <div style="width: 100%; overflow-x:auto; overflow-y: hidden;">
            <table class="list-table">
                <%--            <colgroup>--%>
                <%--                <col style="width: 2%">--%>
                <%--                <col style="width: 9%">--%>
                <%--                <col style="width: 20%">--%>
                <%--                <col style="width: 21%">--%>
                <%--                <col style="width: 21%">--%>
                <%--                <col style="width: 6%">--%>
                <%--                <col style="width: 6%">--%>
                <%--                <col style="width: 15%">--%>
                <%--            </colgroup>--%>
                <thead>
                <tr>
                    <th>운행일</th>
                    <%--                <th>차량번호</th>--%>
                    <%--                <th>품목</th>--%>
                    <th>상차지</th>
                    <th>하차지</th>
                    <th>차량번호</th>
                    <th>대수</th>
                    <th>진행</th>
                </tr>
                </thead>
                <tr style="border-bottom: 2px solid red;">
                    <td>
                        1
                    </td>
                    <%--                <td>--%>
                    <%--                    임창운--%>
                    <%--                </td>--%>
                    <%--                <td>--%>
                    <%--                    출퇴근--%>
                    <%--                </td>--%>
                    <td>
                        구디
                    </td>
                    <td>
                        지밸리
                    </td>
                    <td>
                        37우2598
                    </td>
                    <td>
                        1
                    </td>
                    <td>
                        <span style="color: #000080; font-weight: bold;">하차</span>
                    </td>
                </tr>
            </table>
            <div>
                <section class="paging">
                    <ul class="paging__ul" id="page-div">

                        <li><a style="cursor: pointer;" onclick="$.valuePg(1)"><img
                                src="/resources/image/icons/ico_prev.png" alt="이전"></a></li>

                        <li class="pageNum">


                            <a style="cursor: pointer;"
                               onclick="$.valuePg(1)"
                               class="active">1</a>


                        </li>

                        <li><a style="cursor: pointer;" onclick="$.valuePg(1);"><img
                                src="/resources/image/icons/ico_next.png" alt="다음"></a></li>
                    </ul>
                </section>

            </div>

</section>


<style>
    .popSearch-listWrap {
        border-top: none;
        max-height: inherit;
        padding-top: 10px;
    }
</style>

<div class="layerMask dis-n pop-wrap" id="pop-integrateform" tabindex="0">
    <div class="layerMask__inner" style="height: auto; width: 90%">


        <section class="layer-popup" style="height: 100%;">
            <div class="popSearch-listWrap integrateFromArea">

            </div>

        </section>
    </div>
</div>

<button class="screen_top up-btn">
    <img src="/resources/image/icons/ico-top.png" style="width: 40px; height: 40px;">
</button>
<%--<footer class="footer" id="footer">--%>
<%--    <h1>--%>
<%--        <img src="/resources/image/common/erp_logo_white.png">--%>
<%--        <a href="http://www.kiwontech.com" target="_blank" style="color: #FFFFFF;">http://www.kiwontech.com</a>--%>
<%--    </h1>--%>

<%--    <p>--%>
<%--        <span>(주)기원테크</span>--%>
<%--        <span class="btw_bar">|</span>--%>
<%--        <span>서울특별시 구로구 디지털로31길 53 이앤씨벤처드림타워5차 509호</span>--%>
<%--        <span class="btw_bar">|</span>--%>
<%--        <span>대표전화: <a href="tel:010-3717-7406">010-3717-7406</a></span>--%>
<%--        <span class="btw_bar">|</span>--%>
<%--        <span>e-mail:100@kiwontech.com</span>--%>
<%--    </p>--%>
<%--</footer>--%>
</body>
</html>
<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>