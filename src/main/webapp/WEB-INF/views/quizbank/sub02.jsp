<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
					<li class="active">STEP 1 단원선택</li>
					<li>STEP 2 문항 편집</li>
					<li>STEP 3 시험지 저장</li>
				</ul>
				<button type="button" class="del-btn" onclick="window.close()"></button>
			</div>
			<div class="pop-content">
				<div class="view-box">
					<div class="view-top">
						<div class="paper-info">
							<!--<span>국어 1-1</span>
							노미숙(2015)-->
							${chapterList[0].subjectName}
						</div>
					</div>
					<div class="view-bottom">
						<div class="view-box-wrap">
							<div class="unit-box-wrap">
								<div class="unit-box">
									<div class="unit-cnt scroll-inner">
										<div class="title-top">
											<span>단원정보</span>
											<input type="checkbox" id="chk01_00" class="allCheck que-allCheck">
											<label for="chk01_00">전체선택</label>
										</div>
										<ul>
											<li>
												<c:forEach var="large" items="${chapterMap.keySet()}" varStatus="lstatus">
													<div class="check-group title">
														<div class="title-chk">
															<input type="checkbox" id="chk${lstatus.count}" class="que-allCheck depth01">
															<label for="chk${lstatus.count}">
																<button type="button" class="dep-btn active">${large}</button>
															</label>
														</div>
													</div>
													<div class="depth02">
														<c:forEach var="medium" items="${chapterMap[large].keySet()}" varStatus="mstatus">
															<div class="check-group">
																<input type="checkbox" id="chk${lstatus.count}_${mstatus.count}" class="que-allCheck depth01">
																<label for="chk${lstatus.count}_${mstatus.count}">
																	<button type="button" class="dep-btn active">${medium}</button>
																</label>
															</div>
															<div class="depth03">
																<c:forEach var="small" items="${chapterMap[large][medium].keySet()}" varStatus="sstatus">
																	<div class="check-group">
																		<input type="checkbox" id="chk${lstatus.count}_${mstatus.count}_${sstatus.count}" class="que-allCheck depth01">
																		<label for="chk${lstatus.count}_${mstatus.count}_${sstatus.count}">
																			<button type="button" class="dep-btn active">${small}</button>
																		</label>
																	</div>
																	<div class="depth04">
																		<c:forEach var="topic" items="${chapterMap[large][medium][small]}" varStatus="tstatus">
																			<div class="check-group">
																				<input type="checkbox" id="chk${lstatus.count}_${mstatus.count}_${sstatus.count}_${tstatus.count}">
																				<label for="chk${lstatus.count}_${mstatus.count}_${sstatus.count}_${tstatus.count}">
																					<span>${topic}</span>
																				</label>
																			</div>
																		</c:forEach>
																	</div>
																</c:forEach>
															</div>
														</c:forEach>
													</div>
												</c:forEach>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="type-box-wrap">
								<div class="type-box scroll-inner">
									<div class="title-top">
										<span>출제옵션</span>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">문제 수<em>최대 30문제</em></span>
										</div>
										<div class="count-area">
											<div class="btn-wrap">
												<button type="button" class="btn-line" onclick="quizNumChange(event)">10</button>
												<button type="button" class="btn-line" onclick="quizNumChange(event)">15</button>
												<button type="button" class="btn-line" onclick="quizNumChange(event)">20</button>
												<button type="button" class="btn-line" onclick="quizNumChange(event)">25</button>
												<button type="button" class="btn-line active" onclick="quizNumChange(event)">30</button>
											</div>
											<div class="input-area">
												<span class="num">총 <input type="text" value="30" onblur="event.target.value>30?event.target.value=30:event.target.value-=event.target.value%5;stepNumChange();"> 문제</span>
												<div class="txt">*5의 배수로 입력해주세요. </div>
											</div>

										</div>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">출처</span>
											<div class="right-area">
											</div>
										</div>
										<div class="btn-wrap multi">
											<button type="button" class="btn-line">교사용(교사용 DVD, 지도서, 신규 개발 등)</button>
											<button type="button" class="btn-line">학생용(자습서, 평가문제집 등)</button>
										</div>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">평가 영역</span>
											<div class="right-area">
											</div>
										</div>
										<c:forEach var="eval" items="${evaluation}" varStatus="status">
											<c:if test="${status.index%3==0}">
												<div class="btn-wrap multi">
											</c:if>
											<button type="button" id="${eval.domainId}" class="btn-line activity">${eval.domainName}</button>
											<c:if test="${status.index%3==2} || ${status.index+1}==${evaluation}.length">
												</div>
											</c:if>
										</c:forEach>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">문제 형태</span>
											<div class="right-area">
											</div>
										</div>
										<div class="btn-wrap multi">
											<button type="button" id="multiple" class="btn-line">객관식</button>
											<button type="button" id="subjective" class="btn-line">주관식</button>
										</div>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">난이도 구성</span>
										</div>
										<div class="step-wrap">
											<button type="button" class="btn-line type02 color01" data-step="stap1">최하</button>
											<button type="button" class="btn-line type02 color02" data-step="stap2">하</button>
											<button type="button" class="btn-line type02 color03" data-step="stap3">중</button>
											<button type="button" class="btn-line type02 color04" data-step="stap4">상</button>
											<button type="button" class="btn-line type02 color05" data-step="stap5">최상</button>
										</div>
									</div>
									<div class="box">
										<div class="title-wrap">
											<span class="tit-text">난이도별 문제 수
												<button type="button" class="btn-icon2 pop-btn" data-pop="que-range-pop" onclick="failCheck()"><i
														class="setting"></i></button>
											</span>
										</div>
										<div class="range-wrap">
											<span class="range color01" data-step="stap1">최하(n)</span>
											<span class="range color02" data-step="stap2">하(n)</span>
											<span class="range color03" data-step="stap3">중(n)</span>
											<span class="range color04" data-step="stap4">상(n)</span>
											<span class="range color05" data-step="stap5">최상(n)</span>
										</div>
									</div>

								</div>
								<div class="bottom-box">
									<p class="total-num">총 <span>30</span>문제</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="step-btn-wrap">
				<button type="button" class="btn-step" onclick="location.assign('${path}/sub01?subjedtId='+sessionStorage.getItem('subjectId'))">출제 방법 선택</button>
				<button type="button" class="btn-step next" data-pop="que-pop" onclick="editQuiz()">STEP2 문항 편집</button><!-- 230629 pop-btn 추가-->
			</div>


		</div>
		<div class="dim"></div>

		<!-- 난이도 문제 수 설정 팝업 -->
		<div class="pop-wrap range-type" data-pop="que-range-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>난이도별 문제 수 설정</span>
					<button type="button" class="pop-close" onclick="cancelQuizCount();"></button>
				</div>
				<div class="pop-content">
					<span class="txt">문제 수를 입력하여<br> 난이도별 문제 수를 조정하세요.</span>
					<div class="range-wrap">
						<!-- S: 문제 수 맞지 않을 시 .fail 클래스 추가 -->
						<div class="range color01" data-step="stap1">
							<span class="color01">최하</span>
							<input type="number" onblur="difficultyQuizCount(event)">
						</div>
						<div class="range color02" data-step="stap2">
							<span class="color02">하</span>
							<input type="number" onblur="difficultyQuizCount(event)">
						</div>
						<div class="range color03" data-step="stap3">
							<span class="color03">중</span>
							<input type="number" onblur="difficultyQuizCount(event)">
						</div>
						<div class="range color04" data-step="stap4">
							<span class="color04">상</span>
							<input type="number" onblur="difficultyQuizCount(event)">
						</div>
						<div class="range color05" data-step="stap5">
							<span class="color05">최상</span>
							<input type="number" onblur="difficultyQuizCount(event)">
						</div>
						<div class="range total">
							<span>합계</span>
							<span class="num"></span>
						</div>
						<!-- E: 문제 수 맞지 않을 시 .fail 클래스 추가 -->
					</div>
				</div>
				<div class="pop-footer">
					<button onclick="cancelQuizCount();">초기화</button>
					<button onclick="popupInputChange();">저장</button>
				</div>
			</div>
		</div>

		<!-- 문항 충족하지 않을 시 노출 팝업 -->
		<div class="pop-wrap range-type02" data-pop="que-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>문항 구성 자동 변경</span>
					<button type="button" class="pop-close"></button>
				</div>
				<div class="pop-content">
					<span class="txt">사용자가 원하는 문항 구성을 할 수 없어<br>문항 구성이 자동으로 변경되었습니다.</span>
					<div class="range-wrap">
						<div class="range" data-step="stap1">
							<span class="color01">최하</span>
							<span class="num">2</span>
						</div>
						<div class="range" data-step="stap2">
							<span class="color02">하</span>
							<span class="num">5</span>
						</div>
						<div class="range" data-step="stap3">
							<span class="color03">중</span>
							<span class="num">6</span>
						</div>
						<div class="range" data-step="stap4">
							<span class="color04">상</span>
							<span class="num">5</span>
						</div>
						<div class="range" data-step="stap5">
							<span class="color05">최상</span>
							<span class="num">2</span>
						</div>
						<div class="range total">
							<span>합계</span>
							<span class="num">20</span>
						</div>
					</div>
					<span class="txt">해당 문제 구성으로 출제하시겠습니까?</span>
				</div>
				<div class="pop-footer">
					<button class="pop-close">취소</button>
					<button class="pop-close">확인</button>	<%-- 어떻게 고치지 🤔 --%>
				</div>
			</div>
		</div>
		<!-- 문항 충족하지 않을 시 노출 팝업 -->

		<script>
			$(function () {
				// depth
				let depBtn = $('.dep-btn');

				function depFunc() {
					let _this = $(this);

					if (!_this.hasClass('active')) {
						_this.addClass('active');
						_this.parents('.check-group').next('div').stop().slideUp('fast');

					} else {
						_this.removeClass('active');
						_this.parents('.check-group').next('div').stop().slideDown('fast');
					}

					_this.parents('.check-group').toggleClass('on');
				}

				depBtn.on('click', depFunc);


				// que-checkbox
				let queChkAll = $('.que-allCheck');

				function queCheckFunc() {
					let _this = $(this);

					let checkedbox = $('.unit-cnt>ul').find('input[type=checkbox]:checked');

					console.log(checkedbox);

					if(checkedbox.length<=1){
						$(".count-area .btn-line").prop('disabled',false);
						$(".count-area .btn-line:last-child").addClass('active');
						$(".count-area span.num>input[type=text]").prop('disabled',false);
						$(".count-area span.num>input[type=text]").val(30);
						$(".btn-wrap.multi .btn-line").prop('disabled',false);
						$(".btn-wrap.multi .btn-line").addClass('active');
						$(".step-wrap .btn-line").prop('disabled',false);
						$(".step-wrap .btn-line").addClass('active');
						$(".range-wrap .range").show();
						stepNumChange();
					}

					if (_this.prop('checked')) {
						// _this.parents().next('ul').find('input[type=checkbox]').prop('checked', true);
						const checkbox = _this.parents().next('ul').find('input[type=checkbox]');
						checkbox.prop('checked', true);
						checkbox.next('label').children('button').removeClass('active');
						checkbox.parents('.check-group').next('div').stop().slideDown('fast');

					} else {
						const checkbox = _this.parents().next('ul').find('input[type=checkbox]');
						checkbox.prop('checked', false);
						checkbox.next('label').children('button').addClass('active');
						checkbox.parents('.check-group').next('div').stop().slideUp('fast');
					}

					// if (_this.prop('checked') && _this.hasClass('depth01')) {
					if (_this.prop('checked')) {
						const checkbox = _this.parents('.check-group').next('div').find('input[type=checkbox]');
						checkbox.prop('checked', true);
						_this.next('label').children('button').removeClass('active');
						_this.parents('.check-group').next('div').stop().slideDown('fast');
						checkbox.next('label').children('button').removeClass('active');
						checkbox.parents('.check-group').next('div').stop().slideDown('fast');
					} else {
						const checkbox = _this.parents('.check-group').next('div').find('input[type=checkbox]');
						checkbox.prop('checked', false);
						_this.next('label').children('button').addClass('active');
						_this.parents('.check-group').next('div').stop().slideUp('fast');
						checkbox.next('label').children('button').addClass('active');
						checkbox.parents('.check-group').next('div').stop().slideUp('fast');
					}

					if (_this.prop('checked')) {
						_this.parents('table').find('input[type=checkbox]').prop('checked', true);
					} else {
						_this.parents('table').find('input[type=checkbox]').prop('checked', false);
					}

					checkedbox = $('.unit-cnt>ul').find('input[type=checkbox]:checked');

					console.log(checkedbox);

					if(checkedbox.length<=1){
						$("#chk01_00.allCheck").prop('checked',false);
						$(".count-area .btn-line").prop('disabled',true);
						$(".count-area .btn-line").removeClass('active');
						$(".count-area span.num>input[type=text]").prop('disabled',true);
						$(".count-area span.num>input[type=text]").val('');
						$(".btn-wrap.multi .btn-line").removeClass('active');
						$(".btn-wrap.multi .btn-line").prop('disabled',true);
						$(".step-wrap .btn-line").removeClass('active');
						$(".step-wrap .btn-line").prop('disabled',true);
						$(".range-wrap .range").hide();
						$(".range-wrap .range.total").show();
					}
				}

				queChkAll.on('click', queCheckFunc);

				// $(".type-box .box .range").hide();
				$(".pop-content .range-wrap .range").hide();
				$(".pop-content .range-wrap .range.total").show();

				let stepBtn = $('.step-wrap .btn-line');

				function stepFunc() {
					let _this = $(this);
					let stepData = _this.data('step');

					_this.toggleClass('active');

					stepNumChange();

					if (_this.hasClass('active')) {
						$(".range[data-step='" + stepData + "']").show();
					} else {
						$(".range[data-step='" + stepData + "']").hide();
					}
					console.log("click!");
				}

				stepBtn.on('click', stepFunc);

				$(".count-area .btn-line").prop('disabled',true);
				$(".count-area .btn-line").removeClass('active');
				$(".count-area span.num>input[type=text]").prop('disabled',true);
				$(".count-area span.num>input[type=text]").val('');
				$(".btn-wrap.multi .btn-line").removeClass('active');
				$(".btn-wrap.multi .btn-line").prop('disabled',true);
				$(".step-wrap .btn-line").removeClass('active');
				$(".step-wrap .btn-line").prop('disabled',true);
			});

			const quizNumChange = (event) => {
				console.log(event);
				const quiznum = document.querySelector(".input-area>.num>input");
				console.log(quiznum);
				quiznum.value = event.target.innerText;
				stepNumChange();
			}

			// step2 버튼 누르면 동작할 로직
			const quizNumSet = () => {
				const inputset = document.querySelectorAll(".range-type .range-wrap>.range>input");
				const quizsum = document.querySelector(".range-type .range-wrap>.range>span.num");

				let inputsum = 0;
				inputset.forEach(input=>inputsum += (input.innerText*1));

				if(inputsum==quizsum){
					// 이건 나중에 생각해볼게
				}
			}

			const editQuiz = () => {
				const checked = $(".unit-cnt input[type=checkbox]:checked");
				const multiple = $("#multiple.active");
				const subjective = $("#subjective.active");
				const activity = $(".btn-line.activity.active");
				const level = $(".step-wrap .btn-line.active");

				if(checked.length<=0){
					alert("단원을 선택해 주세요!");
				}else if(multiple.length<=0 && subjective.length<=0) {
					alert("문제형태를 선택해 주세요!");
				}else if(activity.length<=0) {
					alert("평가영역을 선택해 주세요!");
				}else if(level.length<=0){
					alert("난이도를 선택해 주세요!");
				}else{
					// 상균씨가 한 부분
					const chapterList = JSON.parse('${sb}').chapterList;

					const minorClassification = [];
					$(".depth04 input[type=checkbox]:checked").each(function () {
						const topicName = $(this).next("label").children("span").text();
						const topic = chapterList.find(ch => ch.topicChapterName === topicName);
						if (topic) {
							minorClassification.push({
								subject: topic.subjectId.toString(),
								large: topic.largeChapterId.toString(),
								medium: topic.mediumChapterId.toString(),
								small: topic.smallChapterId.toString(),
								topic: topic.topicChapterId.toString()
							});
						}
					});

					const levelCnt = []; // 일단 난이도 부분은 주석해 둘게욤~~~~~~~~
					$(".step-wrap .btn-line").each(function () {
						if($(this).hasClass('active')){
							const step = $(this).data("step");
							const input = $(".range-type .range-wrap .range[data-step='" + step + "'] input").val();
							levelCnt.push(Number(input));
						}else{
							levelCnt.push(Number(0));
						}
					});

				// const levelCnt = [2, 4, 10, 8, 6]; // ✅ 여기 고정

					let questionForm = '';
					const multiple = $("#multiple").hasClass("active");
					const subjective = $("#subjective").hasClass("active");

					if (multiple && subjective) {
						questionForm = 'multiple,subjective';
					} else if (multiple) {
						questionForm = 'multiple';
					} else if (subjective) {
						questionForm = 'subjective';
					}

					const activityCategoryList = [];
					$(".btn-line.activity").each(function () {
						const id = $(this).attr("id");
						if (id) activityCategoryList.push(Number(id));
					});

					// 조건 검증: 합계 문제 수와 총 문제 수가 일치하는지
					const inputsum = Number($(".range-type .range.total>span.num").text());
					const quiznum = Number($(".input-area>.num>input").val());

					console.log("input",inputsum,"quiz",quiznum);
					
					if (inputsum != quiznum) {
						console.log("합계가 일치하지 않음 → 팝업 띄우고 대기");

						// 팝업 보이게 하고 fetch는 뒤로 미룸
						$(".pop-wrap[data-pop='que-pop']").show();
						$(".dim").fadeIn();
						$("html, body").css("overflow", "hidden");

						// 팝업 내부 "확인" 버튼 클릭 시 fetch + 페이지 이동
						$(".pop-wrap[data-pop='que-pop'] .pop-footer button.pop-close").off("click").on("click", function () {
							$(".pop-wrap").hide();
							$(".dim").fadeOut();
							$("html, body").css("overflow", "auto");

							// 여기서 fetch
							submitEditQuiz(minorClassification, levelCnt, questionForm, activityCategoryList);
						});
					} else {
						// 문제 수가 이미 맞으면 바로 fetch
						submitEditQuiz(minorClassification, levelCnt, questionForm, activityCategoryList);
					}
				}
			};

			// 따로 빼두는 fetch 함수
			const submitEditQuiz = (minorClassification, levelCnt, questionForm, activityCategoryList) => {
				const contextPath = "${path}";

				fetch("${path}/edit/questionList", {
					method: "POST",
					headers: {
						"Content-Type": "application/json"
					},
					body: JSON.stringify({
						'minorClassification':minorClassification,
						'levelCnt':levelCnt,
						'questionForm':questionForm,
						'activityCategoryList':activityCategoryList
					}),
					credentials: "include"
				})
						.then(response => response.json())
						.then(data => {
							sessionStorage.setItem("questionList", JSON.stringify(data));
							window.location.href = "${path}/sub03_01";
						})
						.catch(error => console.error("문항 가져오기 실패", error));

				// 성준님이 만든 부분 주석
				// const minorClassification = [];
				// $(".depth04 input[type=checkbox]:checked").next("label").children("span").toArray().forEach(span=>{
				// 	const getTopic = chapterList.find(chapter=>chapter.topicChapterName==span.innerText);
				// 	console.log(getTopic);
				// 	minorClassification.push({
				// 		"subject":"1136",
				// 		"large":getTopic.largeChapterId,
				// 		"medium":getTopic.mediumChapterId,
				// 		"small":getTopic.smallChapterId,
				// 		"topic":getTopic.topicChapterId
				// 	})
				// });
				//
				// console.log(minorClassification);
				//
				// const activeDifficulty = $(".step-wrap .btn-line.active");
				//
				// const levelCnt = [];
				// activeDifficulty.toArray().forEach(diff=>{
				// 	const step = diff.getAttribute('data-step');
				// 	const input = $(".range-type .range-wrap>.range[data-step='" + step + "']>input");
				// 	levelCnt.push(input.val()*1);
				// })
				//
				// console.log(levelCnt);
				//
				// const multiple = $(".btn-wrap.multi>button#multiple.active");
				// const subjective = $(".btn-wrap.multi>button#subjective.active");
				//
				// let questionForm = '';
				//
				// if(multiple.length>0){
				// 	if(subjective.length>0){
				// 		questionForm = 'multiple,subjective';
				// 	}else{
				// 		questionForm = 'multiple';
				// 	}
				// }else if(subjective.length>0){
				// 	questionForm = 'subjective';
				// }
				//
				// console.log("question",questionForm);
				//
				// const activity = $(".btn-wrap.multi>button.activity");
				//
				// const activityCategoryList = [];
				//
				// activity.toArray().forEach(acti=>{
				// 	console.log(acti);
				// 	activityCategoryList.push(acti.getAttribute('id'));
				// })
				//
				// console.log("actCate", activityCategoryList);
				//
				// fetch('http://localhost:9090/problembank/api/itemlist',{
				// 	method:'POST',
				// 	headers:{
				// 		'Content-Type':'application/json'
				// 	},
				// 	body:JSON.stringify({
				// 		'minorClassification':minorClassification,
				// 		'levelCnt':levelCnt,
				// 		'questionForm':questionForm,
				// 		'activityCategoryList':activityCategoryList
				// 	})
				// }).then(response=>response.json())
				// .then(data=>console.log(data));
			}

			const stepNumChange = () => {
				let activeStep = $(".box .step-wrap .btn-line.active");
				console.log(activeStep);
				let quiznum = $(".input-area>.num>input").val();
				let inputsum = 0;
				activeStep.toArray().forEach(step=>{
					let data = step.getAttribute('data-step');
					console.log("몇 번 실행됨?");
					console.log(step.innerText + Math.floor(quiznum*1/activeStep.toArray().length*1));
					$("span.range[data-step='" + data + "']").text(step.innerText + '(' + Math.floor(quiznum*1/activeStep.toArray().length*1) + ')');
					$(".range[data-step='" + data + "']>input").val(Math.floor(quiznum*1/activeStep.toArray().length*1));
					inputsum += Math.floor(quiznum*1/activeStep.toArray().length*1);
				})
				$(".range.total>span.num").text(inputsum);
			}

			const difficultyQuizCount = (event) => {
				const activeDifficulty = $(".step-wrap .btn-line.active");

				const quizsum = document.querySelector(".input-area>span.num>input[type=text]");

				let inputsum = 0;
				activeDifficulty.toArray().forEach(diff=>{
					const step = diff.getAttribute('data-step');
					const input = $(".range-type .range-wrap>.range[data-step='" + step + "']>input");
					inputsum += (input.val()*1);
				})

				if(inputsum!=quizsum.value){
					console.log("문제 수 잘못됨");
					console.log(inputsum,quizsum.value);
					$(".range-type .range-wrap>.range").addClass("fail");
					$(".range-type .pop-footer>button:last-child").addClass("disabled");
					$(".range-type .pop-footer>button:last-child").off("click",popClose);
				}else{
					console.log("문제 수 맞음");
					$(".range-type .range-wrap>.range").removeClass("fail");
					$(".range-type .pop-footer>button:last-child").removeClass("disabled");
					$(".range-type .pop-footer>button:last-child").on("click",popClose);
				}
				console.log(inputsum);
				$(".range-type .range.total>span.num").text(inputsum);
			}

			const cancelQuizCount = () =>{
				let inputsum = 0;
				$(".step-wrap>.btn-line.active").toArray().forEach(step=>{
					console.log(step);
					const datastep = step.getAttribute('data-step');
					console.log(datastep);
					const range = $(".range-wrap>span.range[data-step='" + datastep + "']").text();
					console.log(range);
					const count = range.slice(range.indexOf('(')+1,range.indexOf(')'));
					console.log(count);
					$(".range-type .range[data-step='" + datastep + "']>input[type=number]").val(count);
					inputsum+=(count*1);
				})
				let quiznum = $(".input-area>.num>input").val();
				if(inputsum==quiznum) $(".range-type .range-wrap>.range").removeClass("fail");
				$(".range-type .range.total>span.num").text(inputsum);
			}

			const popupInputChange = () => {
				let activeStep = $(".box .step-wrap .btn-line.active");
				console.log(activeStep);
				let quiznum = $(".input-area>.num>input").val();
				activeStep.toArray().forEach(step=>{
					let data = step.getAttribute('data-step');
					const inputnum = $(".range[data-step='" + data + "']>input").val();
					$("span.range[data-step='" + data + "']").text(step.innerText + '(' + inputnum + ')');
				})
				$(".range.total>span.num").text(quiznum);
			}

			const failCheck = () => {
				let quiznum = $(".input-area>.num>input").val();
				let inputsum = $(".range-type .range.total>span.num").text();
				console.log("quiz",quiznum,"input",inputsum);
				if(inputsum==quiznum){
					$(".range-type .range-wrap>.range").removeClass("fail");
					$(".range-type .pop-footer>button:last-child").removeClass("disabled");
					$(".range-type .pop-footer>button:last-child").on("click",popClose);
				}
				else{
					$(".range-type .range-wrap>.range").addClass("fail");
					$(".range-type .pop-footer>button:last-child").addClass("disabled");
					$(".range-type .pop-footer>button:last-child").off("click",popClose);
				}
			}

			function popClose(){
				console.log("이거 된거임???");

				let _dim = $(".dim");
				let _html = $("html , body");

				let _this = $(this);
				$(".pop-wrap").hide();
				_html.css("overflow", "auto");
				_dim.fadeOut();
			}
		</script>
</body>


</html>