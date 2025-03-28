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
					<li class="active"><img src="${path}/resources/images/common/ico_step_active.png" alt="">출제 방법 선택</li>
				</ul>
				<button type="button" class="del-btn" onclick="window.close()"></button>
			</div>
			<div class="pop-content">
				<div class="view-box">
					<div class="view-top">
						<div class="paper-info">
							<span>수학 1</span>
							이준열(2015) 수정
							${chapterList[0].subjectName}
						</div>
						<div class="btn-wrap">
							<button class="btn-icon"><i class="edit"></i>선택한 시험지 편집하기</button>
							<button class="btn-icon" onclick="location.assign('${path}/sub02')"><i class="newpaper"></i>신규 시험지 만들기</button>
						</div>
					</div>

					<div class="view-bottom">
						<div class="tab-list-type01 unit-acc-wrap">
							<div class="scroll-inner">
								<c:forEach var="largeChap" items='${chapterMap.keySet()}'>
									<button type="button" class="acc-btn">${largeChap}</button>
									<div class="cnt">
										<div class="table">
											<div class="fix-head">
												<span>시험지명</span>
												<span>미리보기</span>
												<span>편집하기</span>
												<span>다운로드</span>
											</div>
											<!-- e 230706 선택 삭제, 편집하기 추가 -->
											<div class="tbody">
												<c:forEach var="middleChap" items="${chapterMap[largeChap].keySet()}">
													<c:forEach var="smallChap" items="${chapterMap[largeChap][middleChap].keySet()}">
														<div class="col">

															<span class="tit">${middleChap} > ${smallChap} > 1회</span>
															<span><button type="button" class="pop-btn btn-icon2" data-pop="prev-pop"><i
																		class="preview"></i></button></span>
															<span><button type="button" class="btn-icon2"><i class="edit-type02"></i></button></span><!--230706 편집하기 버튼 추가-->
															<span>
																<div class="btn-wrap"><button type="button" class="btn-default">전체</button> <button
																		type="button" class="btn-default">문제</button> <button type="button" class="btn-default">정답
																		+ 해설</button></div>
															</span>
														</div>
													</c:forEach>
												</c:forEach>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>

			</div>


		</div>
		<div class="dim"></div>
		<!-- 미리보기 팝업 -->
		<div id="q-preview" class="pop-wrap prev-type " data-pop="prev-pop">
			<div class="pop-inner">
				<div class="pop-header">
					<span>미리보기</span>
					<button type="button" class="pop-close"></button>
				</div>
				<div class="pop-content">
					<div class="btn-wrap">
						<button type="button" class="btn-icon"><i class="download"></i>다운로드</button>
					</div>
					<div class="view-box">
						<div class="scroll-inner">
							<!-- <img src="../images/common/sample_prev.jpg" alt="">
							<img src="../images/common/sample_prev.jpg" alt=""> -->
							<!--230824 림 추가-->
							<div class="view-data">
								<div class="example-area">
									<div class="example-box">
										<div class="item-question">
											<span class="numbering">1.</span> 
											<img src="${path}/resources/images/common/sampling-question.png" alt="">
										</div>

										<div class="choice-contanier">
											<ul class="answer-input">
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
											</ul>
										</div>

										<div class="answer-container">
											<span class="answer-tit">(정답)</span>
											<div class="answer-img" style="height:25px; background:lightgray"><img src="${path}/resources/images/common/answer-img.png" alt=""></div>
										</div>

										<div class="explain-answer">
											<span class="explain-tit">(해설)</span>
											<div class="explain-img"><img src="${path}/resources/images/common/sampling-question2.png" alt=""></div>
										</div>
									</div>
								</div>

								<div class="example-area">
									<div class="example-box">
										<div class="item-question">
											<span class="numbering numbering-numbers">10~20. </span>
											<img src="${path}/resources/images/common/sampling-question.png" alt="">
										</div>

										<div class="choice-contanier">
											<ul class="answer-input">
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
											</ul>
										</div>

										<div class="answer-container">
											<span class="answer-tit">(정답)</span>
											<div class="answer-img" style="height:25px; background:lightgray"><img src="${path}/resources/images/common/answer-img.png" alt=""></div>
										</div>

										<div class="explain-answer">
											<span class="explain-tit">(해설)</span>
											<div class="explain-img"><img src="${path}/resources/images/common/sampling-question2.png" alt=""></div>
										</div>
									</div>
								</div>

								<div class="example-area">
									<div class="example-box">
										<div class="item-question">
											<span class="numbering">1.</span> 
											<img src="${path}/resources/images/common/sampling-question.png" alt="">
										</div>

										<div class="choice-contanier">
											<ul class="answer-input">
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
											</ul>
										</div>

										<div class="answer-container">
											<span class="answer-tit">(정답)</span>
											<div class="answer-img" style="height:25px; background:lightgray"><img src="${path}/resources/images/common/answer-img.png" alt=""></div>
										</div>

										<div class="explain-answer">
											<span class="explain-tit">(해설)</span>
											<div class="explain-img"><img src="${path}/resources/images/common/sampling-question2.png" alt=""></div>
										</div>
									</div>
								</div>

								<div class="example-area">
									<div class="example-box">
										<div class="item-question">
											<span class="numbering">1.</span>	
											<img src="${path}/resources/images/common/sampling-question.png" alt="">
										</div>

										<div class="choice-contanier">
											<ul class="answer-input">
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
												<li>
													<img src="${path}/resources/images/common/sampling-question-1.png" alt="">
												</li>
											</ul>
										</div>

										<div class="answer-container">
											<span class="answer-tit">(정답)</span>
											<div class="answer-img" style="height:25px; background:lightgray"><img src="${path}/resources/images/common/answer-img.png" alt=""></div>
										</div>

										<div class="explain-answer">
											<span class="explain-tit">(해설)</span>
											<div class="explain-img"><img src="${path}/resources/images/common/sampling-question2.png" alt=""></div>
										</div>
									</div>
								</div>
								
							</div>				
						</div>
					</div>
				</div>
				<!--<div class="pop-footer">
					<div class="page-num">
						<span>1 / 2</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
<script>
	// debugger;
	// const chapterList = [];
	// const sortedChapterNameList = {};
	// fetch('http://localhost:9090/api/chapterlist')
	// .then(response=>response.json())
	// .then(data=>{
	// 	chapterList = data.chapterList;
	// 	console.log(data);
	// 	console.log(chapterList);
	// 	sortChapter();
	// });
	// const sortChapter=function(){

	// console.log(chapterList);
	//
	// chapterList.forEach(c=>{
	// 	debugger;
	// 	const largeKey = Object.keys(sortedChapterNameList);
	// 	const largeChap = largeKey!=null?largeKey.find(lk => lk == c.largeChapterName):null;
	// 	if(largeChap!=null){
	// 		const mediumKey = Object.keys(sortedChapterNameList[largeChap]);
	// 		const mediumChap = mediumKey!=null?mediumKey.find(mk => mk == c.mediumChapterName):null;
	// 		if(mediumChap!=null){
	// 			const smallKey = Object.keys(sortedChapterNameList[largeChap][mediumChap]);
	// 			const smallChap = smallKey!=null?smallKey.find(sk => sk == c.smallChapterName):null;
	// 			if(smallChap!=null){
	// 				sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName].push(c.topicChapterName);
	// 			}
	// 			else{
	// 				sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName] = [];
	// 				sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName].push(c.topicChapterName);
	// 			}
	// 		}
	// 		else{
	// 			sortedChapterNameList[c.largeChapterName][c.mediumChapterName] = {};
	// 			sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName] = [];
	// 			sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName].push(c.topicChapterName);
	// 		}
	// 	}else{
	// 		sortedChapterNameList[c.largeChapterName] = {};
	// 		sortedChapterNameList[c.largeChapterName][c.mediumChapterName] = {};
	// 		sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName] = [];
	// 		sortedChapterNameList[c.largeChapterName][c.mediumChapterName][c.smallChapterName].push(c.topicChapterName);
	// 	}
	// })
	// console.log(sortedChapterNameList);
	// }
</script>
</body>
</html>