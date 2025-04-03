<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>T셀파 문제은행</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="${path}/resources/css/font.css">
	<link rel="stylesheet" href="${path}/resources/css/reset.css">
	<link rel="stylesheet" href="${path}/resources/css/common.css">
	
	<!-- S 230808 순서 변경-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<!-- E 230808 순서 변경-->

	<script src="${path}/resources/js/common.js"></script>
</head>

<body>
	<div id="wrap" class="full-pop-que">
		<div class="full-pop-wrap">
			<div class="pop-header">
				<ul class="title">
					<li>STEP 1 단원선택</li>
					<li class="active">STEP 2 문항 편집</li>
					<li>STEP 3 시험지 저장</li>
				</ul>
				<button type="button" class="del-btn"></button>
			</div>
			<div class="pop-content">
				<div class="view-box">
					<div class="view-top">
						<div class="paper-info">
							<span>수학 1</span>
							이준열(2015)
						</div>
						<button class="btn-default btn-research" onclick="quizResearch()"><i class="research"></i>재검색</button>
						<button class="btn-default pop-btn" data-pop="que-scope-pop">출제범위</button>
					</div>
					<div class="view-bottom type01">
						<div class="cnt-box">
							<div class="cnt-top">
								<span class="title">문제 목록</span>
								<div class="right-area">
									<div class="select-wrap">
										<button type="button" class="select-btn">문제만 보기</button>
										<ul class="select-list" style="display: none;">
											<li>
												<a href="javascript:;">문제+정답 보기</a>
											</li>
											<li>
												<a href="javascript:;">문제+해설+정답 보기</a>
											</li>
											<li class="disabled">
												<a href="javascript:;">편집단계에서만 적용되는 보기 옵션</a>
											</li>
										</ul>
									</div>
									<div class="select-wrap">
										<button type="button" class="select-btn">사용자 정렬</button>
										<ul class="select-list">
											<li>
												<a href="javascript:;">단원순</a>
											</li>
											<li>
												<a href="javascript:;">난이도순</a>
											</li>
											<li>
												<a href="javascript:;">문제 형태순</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="view-que-list scroll-inner" style="display: -webkit-box;-webkit-box-orient:vertical">
								<div class="view-que-box">
									<div class="que-top">
										<div class="title">
											<span class="num">1</span>
											<div class="que-badge-group">
												<span class="que-badge yellow">상</span>
												<span class="que-badge gray">주관식</span>
											</div>
										</div>
										<div class="btn-wrap">
											<button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>
											<button type="button" class="btn-delete"></button>
										</div>
									</div>
									<div class="view-que">
										<div class="que-content">
											<p class="txt">5×5×13×13×13×13을 거듭제곱으로 나타낼 5의 지수를 a, 13의 거듭제곱의 밑을 b라 하자. 이때 b−a의 값을 구하시오.</p>
										</div>
										<div class="que-bottom">
											<div class="data-area">
												<div class="que-info">
													<p class="answer"><span class="label">해설</span></p>
													<div class="data-answer-area">
														<!-- s: 해설 데이터 영역 -->
														<div class="paragraph" style="text-align: Justify"><span class="txt">해설 텍스트가 나오는 영역입니다.해설
																텍스트가
																나오는 영역입니다.해설 텍스트가 나오는 영역입니다.해설 텍스트가 나오는 영역입니다.</span></div>
														<div class="paragraph" style="text-align: Justify"><span class="txt">해설 텍스트가 나오는 영역입니다.해설
																텍스트가
																나오는 영역입니다.해설 텍스트가 나오는 영역입니다.해설 텍스트가 나오는 영역입니다.</span></div>
														<!-- e: 해설 데이터 영역 -->
													</div>
												</div>
											</div>
											<div class="data-area type01">
												<div class="que-info">
													<p class="answer"><span class="label type01">정답</span></p>
													<div class="data-answer-area">
														<!-- s: 정답 데이터 영역 -->
														<div class="paragraph" style="text-align: Justify"><span class="txt"> ①</span></div>
														<div class="paragraph" style="text-align: Justify"><span class="txt"> ①</span></div>
														<div class="paragraph" style="text-align: Justify"><span class="txt"> ①</span></div>
														<!-- e: 정답 데이터 영역 -->
													</div>
												</div>													<!-- 이거 샘플데이터임 바꿔야 함!!!!!!!!!! -->
												<button type="button" class="btn-similar-que btn-default" onclick="getSimilProb([5899365])"><i class="similar"></i> 유사 문제</button>
											</div>
										</div>

									</div>
									<div class="que-info-last">
										<p class="chapter">자연수의 성질>소인수분해>거듭제곱>거듭제곱으로표현자연수의 성질>소인수분해>거듭제곱>거듭제곱으로표현</p>
									</div>
								</div>
							</div>
							<div class="bottom-box">
								<div class="que-badge-group type01">
									<div class="que-badge-wrap">
										<span class="que-badge purple">하</span>
										<span class="num">5</span>
									</div>
									<div class="que-badge-wrap">
										<span class="que-badge green">중</span>
										<span class="num">15</span>
									</div>
									<div class="que-badge-wrap">
										<span class="que-badge yellow">상</span>
										<span class="num">25</span>
									</div>
								</div>
								<p class="total-num">총 <span>30</span>문제</p>
							</div>
						</div>
						<div class="cnt-box type01">
							<div class="tab-wrap">
								<ul class="tab-menu-type01">
									<li class="ui-tab-btn active">
										<a href="javascript:;">문제지 요약</a>
									</li>
									<li class="ui-tab-btn">
										<a href="javascript:;" onclick="noSimilProb()">유사 문제</a>
									</li>
									<li class="ui-tab-btn">
										<a href="javascript:;">삭제 문항</a>
									</li>
								</ul>
								<div class="contents on">
									<div class="table half-type no-passage">
										<!--지문 없는 테이블 유형-->
										<div class="fix-head">
											<span>이동</span>
											<span>번호</span>
											<span>시험지명</span>
											<!--문제 유형-->
											<span>문제 형태</span>
											<span>난이도</span>
										</div>
										<div class="tbody">
											<div class="scroll-inner">
												<div class="test ui-sortable" id="table-1">
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>1</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>2</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>3</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>4</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>5</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>6</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>7</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">상</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>8</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>9</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">상</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>10</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>1</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>2</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>3</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>4</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>5</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>6</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>7</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>8</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">중</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>9</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">대단원&gt;중단원&gt;소단원&gt;토픽</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>객관식</span>
															<span>
																<span class="que-badge">상</span>
															</span>
														</a>
													</div>
													<div class="col">
														<a href="javascript:;">
															<span class="dragHandle ui-sortable-handle"><img
																	src="../images/common/ico_move_type01.png" alt=""></span>
															<span>10</span>
															<!-- S 230808 tooltip-wrap 추가-->
															<span class="tit">
																<div class="txt">자연수의 성질&gt;소인수분해&gt;거듭제곱&gt;거듭제곱으로표현</div>
																<div class="tooltip-wrap">
																	<button type="button" class="btn-tip"></button>
																	<div class="tooltip type01">
																		<div class="tool-type01">
																			시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~시험지명블라블라~~</div>
																	</div>
																</div>
															</span>
															<!-- E 230808 tooltip-wrap 추가-->
															<span>주관식</span>
															<span>
																<span class="que-badge">하</span>
															</span>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="bottom-box">
										<div class="que-badge-group type02">
											<div class="que-badge-wrap">
												<span class="que-badge gray">객관식</span>
												<span class="num">35</span>
											</div>
											<div class="que-badge-wrap">
												<span class="que-badge gray">주관식</span>
												<span class="num">15</span>
											</div>
										</div>
									</div>
								</div>
								<div class="contents">
									<div class="view-que-list no-data">
										<p>
											문제 목록에서 <i class="ic-no-data"></i> 유사문제 버튼을 선택해주세요.
										</p>
									</div>
								</div>
								<div class="contents">
									탭 컨텐츠 (3)
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step-btn-wrap">
				<button type="button" class="btn-step">STEP 1 단원 선택</button>
				<button type="button" class="btn-step next" onclick="location.assign('${path}/sub04_01')">STEP 3 시험지 저장 </button>
			</div>


		</div>
		<div class="dim"></div>

		<!-- 문항 오류 신고 팝업 -->
		<div class="pop-wrap table-type" data-pop="error-report-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>문항 오류 신고</span>
					<button type="button" class="pop-close"></button>
				</div>
				<div class="pop-content">
					<table>
						<colgroup>
							<col width="30%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th>오류유형</th>
								<td>
									<div class="select-wrap">
										<button type="button" class="select-btn">문제오류</button>
										<ul class="select-list">
											<li>
												<a href="javascript:;">문제오류</a>
											</li>
											<li>
												<a href="javascript:;">정답오류</a>
											</li>
											<li>
												<a href="javascript:;">풀이오류</a>
											</li>
											<li>
												<a href="javascript:;">이미지오류</a>
											</li>
											<li>
												<a href="javascript:;">유형오류</a>
											</li>
											<li>
												<a href="javascript:;">기타</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td class="file">
									<input type="text" placeholder="최대 100MB까지 등록가능">
									<button type="button" class="btn-icon">파일 첨부</button>
								</td>
							</tr>
							<tr>
								<th>오류 내용</th>
								<td>
									<textarea name="" id="" cols="30" rows="4" placeholder="오류내용을 간단히 적어주세요. (최대 50자)"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pop-footer">
					<button type="button">신고하기</button>
				</div>
			</div>
		</div>

		<!-- 출제범위 팝업 -->
		<div class="pop-wrap scope-type" data-pop="que-scope-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>국어 1-1</span>
					<button type="button" class="pop-close"></button>
				</div>
				<div class="pop-content scroll-inner">
					<div class="scope-wrap">
<%--						<ul>1. 새로운 시작--%>
<%--							<li>(1)시의 아름다움--%>
<%--								<span>[1] 포근한 봄</span>--%>
<%--								<span>[2] 포근한 봄</span>--%>
<%--							</li>--%>
<%--							<li>(2)산문의 향기--%>
<%--								<span>[1] 꿩</span>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--						<ul>2. 세상과 함께 자라는 꿈--%>
<%--							<li>(1) 자료 찾으며 책 읽기--%>
<%--								<span>[1] 버터 플라이</span>--%>
<%--							</li>--%>
<%--							<li>(2) 통일성 있게 글 쓰기</li>--%>
<%--						</ul>--%>
<%--						<ul>3. 언어랑 국어랑 놀자--%>
<%--							<li>(1) 언어의 본질과 국어 생활</li>--%>
<%--							<li>(2) 우리말의 아홉 품사</li>--%>
<%--						</ul>--%>
<%--						<ul>4. 더불어 살아가기--%>
<%--							<li>(1) 문학과 갈등</li>--%>
<%--							<li>(2) 토의하기</li>--%>
<%--						</ul>--%>
<%--						<ul>1. 새로운 시작--%>
<%--							<li>(1)시의 아름다움</li>--%>
<%--							<li>(2)산문의 향기</li>--%>
<%--						</ul>--%>
					</div>
				</div>
			</div>
		</div>
	</div>

		<script>
			// // tooltip hover
			// let tipBtns = $(".btn-tip");

			// $(function () {
			// 	tipBtns.on("mouseover", function () {
			// 		let _this = $(this);
			// 		let _tooltip = _this.next(".tooltip"); // 툴팁 요소를 바로 뒤에 있는 요소로 찾아옴
			// 		let _tooltipPosition = _this.offset().top; // 버튼(_this)의 전체 문서에서의 위치값을 가져옴

			// 		console.log(_tooltipPosition);

			// 		if (_tooltipPosition > 490) {
			// 			_tooltip.css("top", "-130px"); // 툴팁 위치 변경
			// 			_tooltip.addClass("before-active"); // 클래스 추가
			// 		}
			// 	});
			// });
			$(function () {
				let _leg = $('.view-que').length;
				let arr = [];

				viewListFunc();

				$(".view-que-list").change(function () {
					let _leg = $('.view-que').length;
					let arr = [];

					viewListFunc();
				})

				const diff = {'하':0,'중':0,'상':0}
				const quesForm = {'객관식':0,'주관식':0}
				JSON.parse(sessionStorage.getItem('questionList')).forEach(q=>{
					const quesType = q.questionFormCode/10==5?'객관식':'주관식';
					diff[q.difficultyName]++;
					quesForm[quesType]++;
				});

				$(".bottom-box>.type01 span.num").each((i,num)=>{
					num.innerText = diff[num.previousElementSibling.innerText];
				})

				$(".bottom-box>.type02 span.num").each((i,num)=>{
					num.innerText = quesForm[num.previousElementSibling.innerText];
				})

				function viewListFunc() {
					$('.col').on('click', function () {

						let _idx = $(this).index();

						for (var i = 0; i < _leg; i++) {
							arr.push($('.view-que').eq(i).offset().top - 280);
						}

						console.log(arr);

						$('.view-que-list').animate({
							scrollTop: arr[_idx]
						}, 400);

						let _this = $(this);
						if (!_this.hasClass('active')) {
							_this.parents('.test.ui-sortable').find('.col').removeClass('active');
							_this.addClass('active');
							$('.view-que-box').removeClass('active');
							$('.view-que-box').eq(_idx).addClass('active');
						}

					})
				}

				const chapMap = JSON.parse(sessionStorage.getItem("chapMap"));
				Object.keys(chapMap).forEach(large=>{
					const largeul = $('<ul>');
					largeul.text(large);
					Object.keys(chapMap[large]).forEach(medium=>{
						const mediumli = $('<li>');
						mediumli.text(medium);
						Object.keys(chapMap[large][medium]).forEach(small=>{
							const smallspan = $('<span>');
							smallspan.text(small);
							mediumli.append(smallspan);
						})
						largeul.append(mediumli);
					})
					$('.scope-wrap').append(largeul);
				})

				$('.scope-type .pop-header').children('span').text(sessionStorage.getItem("subjectName"));
			})

			// 파라미터에 itemIdList(Long[]) 넣어야 함!!
			const getSimilProb = (itemIdList) => {
				fetch('${path}/api/similarlist',{
					method:'POST',
					headers:{
						'Content-Type':'application/json'
					},
					body:JSON.stringify(itemIdList)
				}).then(response=>response.json())
				.then(data=> {
					$(".tab-wrap>.contents:nth-child(3)").html('');

					console.log("얼마나 오래 걸릴까?");

					const cnttop = $('<div>');
					cnttop.addClass('cnt-top');
					const cnttitle = $('<span>');
					cnttitle.addClass('title');
					const right = $('<div>');
					right.addClass('right-area');
					const selwrap = $('<div>');
					selwrap.addClass('select-wrap');
					const selbtn = $('<button>');
					selbtn.addClass('select-btn');
					const sellist = $('<ul>');
					sellist.addClass('select-list');
					const highli = $('<li>');
					const higha = $('<a>');
					higha.attr('href','javascript:');
					const middleli = $('<li>');
					const middlea = $('<a>');
					middlea.attr('href','javascript:');
					const lowli = $('<li>');
					const lowa = $('<a>');
					lowa.attr('href','javascript:');

					highli.append(higha);
					middleli.append(middlea);
					lowli.append(lowa);

					sellist.append(highli);
					sellist.append(middleli);
					sellist.append(lowli);

					selwrap.append(selbtn);
					selwrap.append(sellist);

					right.append(selwrap);

					cnttop.append(cnttitle);
					cnttop.append(right);

					$(".tab-wrap>.contents:nth-child(3)").append(cnttop);

					const viewlist = $('<div>');
					viewlist.addClass('view-que-list');
					viewlist.addClass('scroll-inner');

					data.forEach((prob,index)=>{
						console.log("아무것도 안 보이니");
						const sortgroup = $('<div>');
						sortgroup.addClass('sort-group');
						const viewbox = $('<div>');
						viewbox.addClass('view-que-box');
						const quetop = $('<div>');
						quetop.addClass('que-top');
						const title = $('<div>');
						title.addClass('title');
						const num = $('<span>');
						num.addClass('num');
						num.text((index*1+1*1));
						const badgegroup = $('<div>');
						badgegroup.addClass('que-badge-group');
						const difficulty = $('<span>');
						difficulty.addClass('que-badge');
						if(prob.difficultyName=='상') {
							difficulty.addClass('yello');
						}else if(prob.difficultyName=='중') {
							difficulty.addClass('green');
						} else if(prob.difficultyName=='하') {
							difficulty.addClass('purple');
						}
						difficulty.text(prob.difficultyName);

						const questype = $('<span>');
						questype.addClass('que-badge');
						questype.addClass('gray');
						if(prob.questionFormCode/10==5) questype.text('객관식');
						else questype.text('주관식');

						badgegroup.append(difficulty);
						badgegroup.append(questype);
						title.append(num);
						title.append(badgegroup);

						const btnwrap = $('<div>');
						btnwrap.addClass('btn-wrap');
						const btnwrap2 = $('<div>');
						btnwrap2.addClass('btn-wrap');
						const tooltip = $('<div>');
						tooltip.addClass('tooltip-wrap');
						const btnerror = $('<button>');
						btnerror.addClass('btn-error');
						btnerror.addClass('pop-btn');
						btnerror.data('pop','error-report-pop');

						tooltip.append(btnerror);
						btnwrap2.append(tooltip);
						btnwrap.append(btnwrap2);
						quetop.append(title);
						quetop.append(btnwrap);

						const viewque = $('<div>');
						viewque.addClass('view-que');
						const quecontent = $('<div>');
						quecontent.addClass('que-content');
						const queimg = $('<img>');
						queimg.attr('src',prob.questionUrl);

						quecontent.append(queimg);

						const quebottom = $('<div>');
						quebottom.addClass('que-bottom');
						const quebtnwrap = $('<div>');
						quebtnwrap.addClass('btn-wrap');
						const btndefault = $('<button>');
						const add = $('<i>');
						add.addClass('add-type02');
						const btndefault2 = $('<button>');
						const replace = $('<i>');
						replace.addClass('replace');
						btndefault.html(add.prop('outerHTML')+'추가');
						btndefault2.html(replace.prop('outerHTML')+'교체');

						quebtnwrap.append(btndefault);
						quebtnwrap.append(btndefault2);
						quebottom.append(quebtnwrap);
						viewque.append(quecontent);
						viewque.append(quebottom);
						viewbox.append(quetop);
						viewbox.append(viewque);

						const quelast = $('<div>');
						quelast.addClass('que-info-last');
						const chapter = $('<p>');
						chapter.addClass('chapter');
						chapter.text(prob.largeChapterName + '>' + prob.mediumChapterName + '>' + prob.smallChapterName + '>' + prob.topicChapterName);

						quelast.append(chapter);
						viewbox.append(quelast);
						sortgroup.append(viewbox);
						viewlist.append(sortgroup);
					})
					$(".tab-wrap>.contents:nth-child(3)").append(viewlist);
				});
				console.log("이렇게 하는거지 뭐");

				$(".tab-wrap li").removeClass('active');
				$(".tab-wrap li:nth-child(2)").addClass('active');
				$(".tab-wrap>.contents").removeClass('on');
				$(".tab-wrap>.contents:nth-child(3)").addClass('on');
			}

			const noSimilProb = () => {
				$(".tab-wrap>.contents:nth-child(3)").html('');
				const nodata = $('<div>');
				nodata.addClass('view-que-list');
				nodata.addClass('no-data');
				const p = $('<p>');
				const i = $('<i>');
				i.addClass('ic-no-data');
				p.html('문제 목록에서 '+i.prop('outerHTML')+'유사문제 버튼을 선택해주세요.');
				nodata.append(p);
				$(".tab-wrap>.contents:nth-child(3)").append(nodata);
			}

			const quizResearch = () => {
				fetch("${path}/edit/questionList", {
					method: "POST",
					headers: {
						"Content-Type": "application/json"
					},
					body: JSON.stringify({
						'minorClassification':JSON.parse(sessionStorage.getItem('minorClassification')),
						'levelCnt':JSON.parse(sessionStorage.getItem('levelCnt')),
						'questionForm':JSON.parse(sessionStorage.getItem('questionForm')),
						'activityCategoryList':JSON.parse(sessionStorage.getItem('activityCategoryList'))
					}),
					credentials: "include"
				})
				.then(response => response.json())
				.then(data => {
					sessionStorage.setItem("questionList", JSON.stringify(data));
				})
				.catch(error => console.error("문항 가져오기 실패", error));
			}
		</script>
	<script>
		document.addEventListener("DOMContentLoaded", function () {
			let questionList = sessionStorage.getItem("questionList");
			if (questionList) {
				try {
					console.log(questionList);
					questionList = JSON.parse(questionList);
					if (Array.isArray(questionList)) {
						renderQuestions(questionList);
					} else {
						console.error("questionList가 배열이 아닙니다.", questionList);
					}
				} catch (error) {
					console.error("JSON 파싱 오류:", error);
				}
			} else {
				console.warn("sessionStorage에 questionList가 없습니다.");
			}
		});

		function renderQuestions(questions) {
			let container = document.querySelector(".view-que-list");
			container.innerHTML = ""; // 기존 내용 초기화

			questions.forEach((q, index) => {
				// explanation과 answers가 없으면 빈 배열로 초기화
				let explanations = Array.isArray(q.explanation) ? q.explanation : [];
				let answers = Array.isArray(q.answers) ? q.answers : [];

				let explanationHtml = "";
				explanations.forEach(exp => {
					explanationHtml += '<div class="paragraph"><span class="txt">' + exp + '</span></div>';
				});

				let answerHtml = "";
				answers.forEach(ans => {
					answerHtml += '<div class="paragraph"><span class="txt">' + ans + '</span></div>';
				});

				let badgeType = ""; // 문제 유형을 담을 변수

				if (q.questionFormName == "5지 선택") {
					badgeType = '<span class="que-badge gray">객관식</span>';
				} else if (q.questionFormName == "단답 유순") {
					badgeType = '<span class="que-badge gray">주관식</span>';
				}

				let questionHTML =
						'<div class="view-que-box">' +
						'<div class="que-top">' +
						'<div class="title">' +
						'<span class="num">' + (index + 1) + '</span>' +
						'<div class="que-badge-group">' +
						'<span class="que-badge yellow">' + (q.difficultyName || "난이도 없음") + '</span>' +
						badgeType + // if문에서 생성한 HTML을 삽입
						'</div>' +
						'</div>' +
						'<div class="btn-wrap">' +
						'<button type="button" class="btn-error pop-btn" data-pop="error-report-pop"></button>' +
						'<button type="button" class="btn-delete"></button>' +
						'</div>' +
						'</div>' +
						'<div class="view-que">' +
						'<div class="que-content">' +
						'<p class="txt">' + (q.question || "문제 내용 없음") + '</p>' +
						'</div>' +
						'<div class="que-bottom">' +
						'<div class="data-area">' +
						'<div class="que-info">' +
						'<p class="answer"><span class="label">해설</span></p>' +
						'<div class="data-answer-area">' + explanationHtml + '</div>' +
						'</div>' +
						'</div>' +
						'<div class="data-area type01">' +
						'<div class="que-info">' +
						'<p class="answer"><span class="label type01">정답</span></p>' +
						'<div class="data-answer-area">' + answerHtml + '</div>' +
						'</div>' +
						'<button type="button" class="btn-similar-que btn-default" onclick="getSimilProb(' + (q.id || 0) + ')"><i class="similar"></i> 유사 문제</button>' +
						'</div>' +
						'</div>' +
						'</div>' +
						'<div class="que-info-last">' +
						'<p class="chapter">' + (q.chapter || "챕터 정보 없음") + '</p>' +
						'</div>' +
						'</div>';

				container.innerHTML += questionHTML;
			});
		}
	</script>
</body>


</html>