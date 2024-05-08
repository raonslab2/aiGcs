<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2021.05.18   MBA       신규
 
    author   : 평가계획관리시스템 MBA
    since    : 2021.05.18 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="egovframework.com.cmm.LoginVO" %>
<div class="header">
    <div class="menu-container">  
        <div class="menu-item" data-tab="0">
            <a href="/gcs/TD0001/AiWork200.do" data-active="0"> 
                Ai Work
            </a>
        </div> 
        <div class="menu-item" data-tab="1">
            <a href="/gcs/TD0001/AiWork201.do" data-active="1"> 
                Ai Work 2
            </a>
        </div> 
        <div class="menu-item" data-tab="2">
            <a href="/gcs/TD0001/AiWork202.do" data-active="2"> 
                Ai Work 3
            </a>
        </div> 
        <div class="menu-item" data-tab="3">
            <a href="/gcs/TD0001/AiWork203.do" data-active="3"> 
                Ai Work 4
            </a>
        </div> 
        <div class="menu-item" data-tab="4">
            <a href="/gcs/TD0001/AiWork204.do" target="_blank" data-active="5"> 
                Ai Work 5
            </a>
        </div>
        <div class="menu-logout" id="menu-logout">
           <span>logout</span>
        </div>
    </div>
</div>
    
<script>
// jQuery를 사용하여 로그아웃 버튼에 클릭 이벤트 추가
$(document).ready(function() {
  $("#menu-logout").on("click", function() {
    // 클릭 시 실행할 동작을 정의합니다.
    // 예를 들어, 로그아웃 기능을 여기에 추가할 수 있습니다.
    $(location).attr('href', '/gcs/login/actionLogout.do');
  });
});
</script>

<style>
/* PC 및 모바일 환경에서의 공통 스타일 */
.header {
    background-color: #fff;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

.menu-container {
    display: flex;
    justify-content: flex-end; /* 메뉴를 우측으로 정렬합니다. */
    align-items: center;
    padding: 10px 30px;
}

.menu-item {
    margin-left: 20px; /* 메뉴 항목 간격 조정 */
}

.menu-logout {
    margin-left: 20px; /* 로그아웃 버튼 왼쪽 여백 추가 */
}

/* 모바일 환경에서의 스타일 */
@media (max-width: 768px) {
    .menu-container {
        flex-wrap: wrap; /* 너비를 벗어나면 줄바꿈되도록 설정 */
    }
    
    .menu-item {
        margin-left: 0;
        margin-bottom: 10px;
        width: calc(50% - 20px); /* 반응형으로 2열로 표시 */
    }
    
    .menu-logout {
        margin-left: 0;
        margin-bottom: 10px;
        width: 100%; /* 로그아웃 버튼은 한 줄에 하나만 표시 */
    }
}

/* 링크 및 메뉴 항목 스타일 */ 
.link {
    text-decoration: none;
    color: inherit;
    display: block;
    padding: 10px; /* 기존에 있던 높이값 */
    background-color: #f0f0f0;
    border-radius: 5px;
}

.menu-item:hover {
    background-color: #e0e0e0;
}

</style>
