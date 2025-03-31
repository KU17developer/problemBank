<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="${path}/resources/js/common.js"></script>
</head>

<body>
	<div id="wrap" class="full-pop-que">
		<div class="full-pop-wrap">
			<div class="pop-header">
				<ul class="title">
					<li>STEP 1 단원선택</li>
					<li>STEP 2 문항 편집</li>
					<li class="active">STEP 3 시험지 저장</li>
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
						<div class="btn-wrap">
							<button class="btn-default"><a href="javascript:;">처음으로</a></button>
						</div>
					</div>
					<div class="view-bottom type02 scroll-inner">
						<div class="top-form">
							<div class="left-wrap">
								<span>시험지명</span>
								<div class="search-wrap">
									<div class="search-box">
										<input type="text" placeholder="시험지명을 입력해주세요. (최대 20자)" class="search">
									</div>
								</div>
							</div>
							<!--s 230619 저장위치 영역 삭제-->
							<!-- <div class="right-wrap">
								<span>저장 위치</span>
								<div class="select-wrap">
									<button type="button" class="select-btn">
										전체
									</button>
									<ul class="select-list">
										<li>
											<a href="javascript:;">전체</a>
										</li>
										<li>
											<a href="javascript:;">저장소1</a>
										</li>
										<li>
											<a href="javascript:;">저장소2</a>
										</li>
									</ul>
								</div>
								<div class="btn-wrap">
									<button type="button" class="btn-default pop-btn" data-pop="add-folder-pop"><i
											class="add-type01"></i>폴더 추가</button>
								</div>
							</div> -->
							<!--e 230619 저장위치 영역 삭제-->
						</div>
						<div class="type-form">
							<div class="left-wrap">
								<span class="tit">난이도</span>
								<div class="que-badge-group">
									<div class="que-badge-wrap">
										<span class="que-badge purple">하</span>
										<span class="num">10</span>
									</div>
									<div class="que-badge-wrap">
										<span class="que-badge green">중</span>
										<span class="num">10</span>
									</div>
									<div class="que-badge-wrap">
										<span class="que-badge yellow">상</span>
										<span class="num">10</span>
									</div>
								</div>
							</div>
							<div class="right-wrap">
								<span class="tit">문제 형태</span>
								<div class="que-badge-group">
									<div class="que-badge-wrap">
										<span class="que-badge gray">객관식</span>
										<span class="num">35</span>
									</div>
									<div class="que-badge-wrap">
										<span class="que-badge gray">주관식</span>
										<span class="num">35</span>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-list-type01">
							<div class="table">
								<div class="fix-head">
									<span>번호</span>
									<span>문제 유형</span>
									<span>문제 형태</span>
									<span>난이도</span>
								</div>
								<div class="tbody">
									<div class="scroll-inner">
										<div class="col">
											<span>1</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>2</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>3</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>4</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>5</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>6</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>7</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>8</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>9</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
										<div class="col">
											<span>10</span>
											<span class="tit">1. 새로운 시작 > (1) 시의 아름다움</span>
											<span>주관식</span>
											<span>하</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step-btn-wrap">
				<button type="button" class="btn-step">STEP 2 문항 편집</button>
				<button type="button" class="btn-step next done">시험지 저장하기</button>
			</div>


		</div>
		<div class="dim"></div>

		<!-- 폴더 추가 팝업 -->
		<!-- s 230619 폴더 추가 팝업 삭제-->
		<!-- <div class="pop-wrap input-type" data-pop="add-folder-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>폴더 추가</span>
					<button type="button" class="pop-close"></button>
				</div>
				<div class="pop-content">
					<span class="tit">폴더명 입력</span>
					<div class="input-box">
						<input type="text" placeholder="폴더명을 입력해주세요.(최대 10글자)">
					</div>
				</div>
				<div class="pop-footer">
					<button type="button">추가하기</button>
				</div>
			</div>
		</div> -->
		<!-- e 230619 폴더 추가 팝업 삭제-->
</body>


</html>