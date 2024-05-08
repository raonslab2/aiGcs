<%--
  Class Name : gA02Main.jsp
  Description : GCS
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2021.11.01   SCJ       GCS 생성
 
    author   : SCJ
    since    : 2021.11.01
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="egovframework.com.cmm.LoginVO" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<link rel="icon" href="/images/favicon.svg" type="image/svg+xml" />
<title>INNO GROUP</title>  
        <meta name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
        <c:import url="/EmpPageLink.do?link=main/include/src" />  
	<meta charset="utf-8">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="/inno/assets/css/jquery-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="/inno/assets/css/common.css" />
	<script src="/inno/assets/js/jquery-3.6.1.min.js"></script>
	<script src="/inno/assets/js/jquery-ui.min.js"></script>
	<script src="/inno/assets/js/slick.min.js"></script>
	<script src="/inno/assets/js/common.js"></script>
	<!--나경아 추가-->
	<style>
	.photo-upload-type {
		background: transparent !important
	}
	
	.photo-upload-type .pop-container {
		left: 78%
	}
	</style>
</head>

<body>
 
	<div id="wrap">
		<!-- lnb -->
		<div class="lnb-container">
		  <!-- left menu -->
          <c:import url="/EmpPageLink.do?link=main/include/innomenu2" />            
		</div>
		<!-- container -->
		<div class="container">
			<div class="location-content">
				<div class="location-area">
					<span class="location">주소록관리</span>
				</div>
				<span class="logo-area">
					<img src="/inno/assets/images/logo.png" alt="지우회계법인">
				</span>
				<div class="menu-area">
					<div class="lang-box">
						<div id="lang_now">
							<img src="/inno/assets/images/flags/4x3/kr.svg">
						</div>
						<select class="language">
							<option value="kr">KOR</option>
							<option value="us">ENG</option>
							<option value="jp">JPN</option>
							<option value="fr">FRN</option>
							<option value="ru">RUS</option>
							<option value="uz">UZB</option>
						</select>
					</div>
					<div class="user-box">
						<img src="/inno/assets/images/temp_photo.png" alt="" class="photo">
						<div class="info">
							<span class="tit">관리자</span>
							<strong>김상민</strong>
						</div>
					</div>
					<div class="link-box">
						
						<a href="#" class="icon-out"></a>
						<a href="#" class="icon-charge"></a>
					</div>
				</div>
			</div>
			<div class="view-content">
				<div class="com-top-tab ver3">
					<div class="com-top-tab_lt">
						<!-- <a href="target_company_A.html" class="on">최근기록</a>
						<a href="target_company_A_b.html">미해결기록</a>
						<a href="target_company_A_c.html">전체기록</a>
						<a href="target_company_A_d.html">주소록관리</a>
						<a href="target_company_A_e.html">개인관리</a>
						<a href="target_company_A_f.html">거래처관리</a>
						<a href="target_company_A_g.html">비서업무대행</a> -->
					</div>

					<div class="com-top-tab_rt">
						<button type="button" class="excel-up-btn" >엑셀 업로드</button>
						<button type="button" class="mobile-up-btn" >휴대폰 업로드</button>
						<button type="button" class="phone-add-btn" onclick="$('.layer-pop[data-index=1]').show();">연락처 추가</button>
						<button type="button" class="sort-btn" onclick="$('.layer-pop[data-index=2]').show();">병합 정리</button>
						<button type="button" class="trash-btn">휴지통</button>
					</div>
				</div>
				<div class="map-info-area">
					<div class="info-list-box3 table-type">
						<div class="schedule-area">
							<div class="top-search-box">
								<div class="schedule_top_lt">
									<select class="sel_schedule">
										<option>전체</option>
										<option>개인</option>
										<option>가족</option>
										<option>회사</option>
									</select>

									<div class="sel_nation_box">
										<div id="nation_now">
											<img src="/inno/assets/images/flags/4x3/kr.svg">
										</div>
										<select class="nation">
											<optgroup label="아시아(Asia)">
												<option value="kr">대한민국</option>
												<option value="jp">일본</option>
												<option value="cn">중국</option>
												<option value="uz">우즈베키스탄</option>
											</optgroup>
											<optgroup label="유럽(Europe)">
												<option value="fr">프랑스</option>
												<option value="ch">스위스</option>
												<option value="ru">러시아</option>
												
											</optgroup>
											<optgroup label="북아메리카(N.America)">
												<option value="us">미국</option>
												<option value="ca">캐나다</option>
											</optgroup>
											
											
											
											
											
										</select>
									</div>
									<span class="list green">SNS</span>
									<span class="list gray">전화</span>
									<span class="list yellow">미팅</span>
									<span class="list aqua">+</span>

									

									
								</div>
								<div class="schedule_top_rt">
									
								</div>
							</div>
							<div class="add-input name ver1">
								<div class="schedule-month">
									<button class="btn_date_box" id="prev_schedule-month"></button>
									<span id="schedule-month-info"></span>
									<button class="btn_date_box" id="next_schedule-month"></button>
								</div>

							</div>
							<div class="table-input-box">
								<table id="table_plan">
									<thead>
										<tr class="">
											<th class="table_plan_th">월</th>
											<th class="table_plan_th">화</th>
											<th class="table_plan_th">수</th>
											<th class="table_plan_th">목</th>
											<th class="table_plan_th">금</th>
											<th class="table_plan_th">토</th>
											<th class="table_plan_th">일</th>
											<th class="table_plan_th">주간합계</th>
										</tr>
										
									</thead>
									<tbody>
										<tr class="table_plan_week week1" id="table_plan_week1">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr>
										<tr class="table_plan_week week2" id="table_plan_week2">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr>
										<tr class="table_plan_week week3" id="table_plan_week3">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr>
										<tr class="table_plan_week week4" id="table_plan_week4">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr >
										<tr class="table_plan_week week5" id="table_plan_week5">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr>
										<tr class="table_plan_week week6" id="table_plan_week6">
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td date_space"></td>
											<td class="table_plan_td"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="visit-box ver3">
						<div class="advice-area full">

						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<!-- 레이어 팝업 : 연락처 추가 -->
	<div class="layer-pop member-add-type" data-index="1">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">연락처 추가</span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content">
				<div class="text-info-cnt">
					<ul class="half-list">
						<li>
							<span class="tit">성명/<br>직위</span>
							<div class="form two-type">
								<input type="text" value="" placeholder="성명">
								<input type="text" value="" placeholder="직위">
							</div>
							<span class="tit">아이디</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
						</li>
						<li>
							<span class="tit">소속</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
							<span class="tit">부서</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
						</li>
						<li>
							<span class="tit">핸드폰</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
							<span class="tit">전화</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
						</li>
						<li>
							<span class="tit">회사<br>이메일</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
							<span class="tit">개인<br>이메일</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
						</li>
						<li>
							<span class="tit">SNS1</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
							<span class="tit">SNS2</span>
							<div class="form">
								<input type="text" class="txt-input">
							</div>
						</li>
						<li>
							<span class="tit">회사<br>주소</span>
							<div class="form full address">
								<input type="text" class="txt-input">
								<button type="button" class="address-btn"></button>
							</div>
						</li>
						<li>
							<span class="tit">집주소</span>
							<div class="form full address">
								<input type="text" class="txt-input">
								<button type="button" class="address-btn"></button>
							</div>
						</li>
						<li>
							<span class="tit">명함첨부</span>
							<div class="form">
								<div class="photo-view">
									<div class="photo" onclick="$('.layer-pop[data-index=3]').show();"></div>
									<div class="com-toggle">
										<input type="checkbox" name="toggle-check" id="toggle-check-1">
										<label for="toggle-check-1">썸네일 노출</label>
									</div>
								</div>
							</div>
							<span class="tit">인물사진</span>
							<div class="form">
								<div class="photo-view">
									<div class="photo" onclick="$('.layer-pop[data-index=3]').show();"></div>
									<div class="com-toggle">
										<input type="checkbox" name="toggle-check-2" id="toggle-check-2">
										<label for="toggle-check-2">썸네일 노출</label>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="bottom-btn-area">
					<button type="button" class="cancel-btn" onclick="$(this).closest('.layer-pop').hide();">취소</button>
					<button type="button" class="confirm-btn">등록</button>
				</div>
			</div>
		</div>
	</div>

    
	<!-- 레이어 팝업 : 병합 정리 -->
	<div class="layer-pop merge-type" data-index="2">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">병합 정리</span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content">
				<div class="list-info-area">
					<div class="table-input-box">
						<div class="scroll-wrap">
							<table class="check-table">
								<colgroup>
									<col style='width:70px;'>
									<col style='width:85px;'>
									<col style='width:120px;'>
									<col style='width:100px;'>
									<col style='width:160px;'>
									<col style='width:145px;'>
									<col style='width:175px;'>
									<col style='width:50px;'>
								</colgroup>
								<thead>
									<tr>
										<th>인물<br>명함</th>
										<th><span class="sort on">성명/나이<br>성별</span></th>
										<th>소속<br>부서</th>
										<th><span class="sort">핸드폰<br>전화</span></th>
										<th>개인 이메일<br>회사 이메일</th>
										<th>SNS1<br>SNS2</th>
										<th>회사주소<br>집주소</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr class="on">
										<td>
											<span class="photo">
												<img src="/inno/assets/images/temp_photo_5.png" alt="">
												<button type="button" class="more-btn"></button>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<span class="txt">미영</span>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<img src="/inno/assets/images/temp_photo_5.png" alt="">
												<button type="button" class="more-btn"></button>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<span class="txt">미영</span>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<img src="/inno/assets/images/temp_photo_5.png" alt="">
												<button type="button" class="more-btn"></button>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<span class="txt">미영</span>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<img src="/inno/assets/images/temp_photo_5.png" alt="">
												<button type="button" class="more-btn"></button>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<span class="txt">미영</span>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<img src="/inno/assets/images/temp_photo_5.png" alt="">
												<button type="button" class="more-btn"></button>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
									<tr>
										<td>
											<span class="photo">
												<span class="txt">미영</span>
											</span>
										</td>
										<td>
											<span class="name">박미영</span>(부장)<br>
											<span class="user-id">abcid</span>
										</td>
										<td>
											<span class="short-txt">가파이러츠오브가파이러츠오브가파이러츠오브</span>
											<span class="txt">기획</span>
										</td>
										<td>010-2066-0000<br>02-206-0000</td>
										<td>bbb_bbb@hanmail.net<br>aa_aaa@nate.com</td>
										<td>
											<span class="facebook">weareoneexo</span>
											<span class="blog">wantedkr</span>
										</td>
										<td>서울 강남구 도산대로 447<br>서울 서초구 잠원로4길 35</td>
										<td class="center">
											<button type="button" class="round-btn red">병합</button>
											<button type="button" class="round-btn">닫기</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    
	<!-- 레이어 팝업 : 명함 올리기 -->
	<div class="layer-pop photo-upload-type" data-index="3">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">명함 올리기</span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content no-padding">
				<div class="photo-upload-area">
					<div class="input-box">
						<input type="text" value="" placeholder="사진 파일 선택" value="" readonly>
						<div class="btn">
							<input type="file" name="file-btn" id="file-btn">
							<label for="file-btn"></label>
						</div>
					</div>
					<div class="list-box">
						<ul>
							<li>1. 4MB 이내 해상도 좋은 이미지 파일로 등록하세요</li>
							<li>2. 원본사진에 마우스를 드래그하여 사진 영역을 편집하세요</li>
						</ul>
					</div>
				</div>
				<div class="photo-crop-area">
					<div class="real-box">
						<span class="tit">원본사진</span>
						<div class="crop">
							<img src="/inno/assets/images/temp_crop_1.png" alt="">
						</div>
					</div>
					<span class="ic"></span>
					<div class="after-box">
						<span class="tit">수정사진</span>
						<div class="crop">
							<img src="/inno/assets/images/temp_crop_2.png" alt="">
						</div>
					</div>
				</div>
				<div class="bottom-btn-area">
					<button type="button" class="cancel-btn" onclick="$(this).closest('.layer-pop').hide();">취소</button>
					<button type="button" class="confirm-btn">등록</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 레이어 팝업 : 히스토리 -->
	<div class="layer-pop history-type" data-index="5" style="display: none;">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">히스토리</span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content">
				<div class="info-list-box">
					<div class="top-tite-area">
						<span class="tit">박미영 <small>(부장)</small></span>
						<span class="time">20</span>
					</div>
					<ul class="list-area">
						<li>
							<div class="info-txt">
								<span class="day">22.07.10 (금)</span>
								<span class="name">조니 김 <small>(마케팅팀/이사)</small></span>
							</div>
							<div class="detail-txt">
								<ul class="list">
									<li>
										<span class="info">소속</span>
										<span class="txt">에이치앤에이치바이오(주)</span>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="info-txt">
								<span class="day">22.07.10 <small>(금)</small></span>
								<span class="name">조니 김 <small>(마케팅팀/이사)</small></span>
							</div>
							<div class="detail-txt">
								<ul class="list">
									<li>
										<span class="info">핸드폰</span>
										<span class="txt">010-4444-8888</span>
									</li>
									<li>
										<span class="tit">전화</span>
										<span class="txt">02-000-0000</span>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="info-txt">
								<span class="day">22.07.10 <small>(금)</small></span>
								<span class="name">조니 김 <small>(마케팅팀/이사)</small></span>
							</div>
							<div class="detail-txt">
								<ul class="list">
									<li>
										<span class="info">집주소</span>
										<span class="txt">경북 경산시 남매공원로1길 12 중앙타워 3층</span>
									</li>
									<li>
										<span class="info">개인 이메일</span>
										<span class="txt">aaa@nate.com</span>
									</li>
									<li>
										<span class="info">SNS1</span>
										<span class="txt facebook">CochlearKorea</span>
									</li>
									<li>
										<span class="info">SNS2</span>
										<span class="txt twitter">samyangfoods</span>
									</li>
									<li>
										<span class="info">명함</span>
										<span class="txt photo"></span>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="com-paging">
					<button type="button" class="prev-btn"><span class="blind">이전</span></button>
					<button type="button" class="on">1</button>
					<button type="button">2</button>
					<button type="button">3</button>
					<button type="button">4</button>
					<button type="button">5</button>
					<button type="button">6</button>
					<button type="button">7</button>
					<button type="button">8</button>
					<button type="button">9</button>
					<button type="button">10</button>
					<button type="button" class="next-btn"><span class="blind">다음</span></button>
				</div>
			</div>
		</div>
	</div>    
    
	<!-- 레이어 팝업 : 이미지확대 -->
	<div class="layer-pop photo-type" data-index="6">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">박미영 <small>(부장)</small></span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content no-padding">
				<span class="photo"><img src="/inno/assets/images/temp_banner_1.png" /></span>
			</div>
		</div>
	</div>

	<!-- 레이어 팝업 : 이미지확대2 -->
	<div class="layer-pop photo-type" data-index="7">
		<div class="pop-container">
			<div class="top-info-content">
				<span class="title">박하늘별님 <small>(대리)</small></span>
				<button type="button" class="close-btn" onclick="$(this).closest('.layer-pop').hide();"><span class="blind">팝업 닫기</span></button>
			</div>
			<div class="pop-content no-padding">
				<span class="photo"><img src="/inno/assets/images/temp_banner_user.png" /></span>
			</div>
		</div>
	</div>    
</body>

</html>
