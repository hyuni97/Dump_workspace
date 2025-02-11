<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="mobile-navi-wrap">
    <h1 class="offscreen">모바일 웹 네비게이션</h1>

    <!--로그인후//dis-n 클래스 로그인에 따라 추가-->
    <div class="mobile-navi-top">
        <span>
            ${sessionScope.loginInfo.userId}
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
                <a class="left_menu" href="/dailyReport/driver">
                    <span style="font-weight: bold; color: blue;">①</span> 기사용 메뉴
                </a>
            </p>
        </li>
        <li>
            <p>
                <a class="left_menu" href="/dailyReport/manager">
                    <span style="font-weight: bold; color: blue;">②</span> 제출처용 메뉴
                </a>
            </p>
        </li>
         <li>
            <p>
                <a class="left_menu" href="/dailyReport/form">
                    <span style="font-weight: bold; color: blue;">③</span> 운행일보 등록
                </a>
            </p>
         </li>
         <li>
             <p>
                 <a class="left_menu" href="/dailyReport/list">
                     <span style="font-weight: bold; color: blue;">④</span> 운행일보 조회
                 </a>
             </p>
         </li>
         <li>
             <p>
                 <a class="left_menu" href="/dailyReport/carcareform">
                     <span style="font-weight: bold; color: blue;">⑤</span> 차량관리 차계부 등록
                 </a>
             </p>
         </li>
         <li>
              <p>
                  <a class="left_menu" href="/dailyReport/carcarelist">
                      <span style="font-weight: bold; color: blue;">⑥</span> 차량관리 차계부 조회
                  </a>
              </p>
         </li>
         <li>
                <p>
                    <a class="left_menu" href="/dailyReport/oldform">
                        <span style="font-weight: bold; color: blue;">⑦</span> 제출처 주문 등록
                    </a>
                </p>
         </li>
         <li>
               <p>
                   <a class="left_menu" href="/dailyReport/receipts">
                       <span style="font-weight: bold; color: blue;">⑧</span> 제출처 전표 조회
                   </a>
               </p>
         </li>
         <li>
               <p>
                   <a class="left_menu" href="/dailyReport/receipts">
                       <span style="font-weight: bold; color: blue;">⑨</span> 제출처 차량관리
                   </a>
               </p>
         </li>

    </ul>
</nav>