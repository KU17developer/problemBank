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
							<!--<span>수학 </span>
							이준열(2015) 수정-->
							${chapterList[0].subjectName}
						</div>
						<div class="btn-wrap">
							<button class="btn-icon"><i class="edit"></i>선택한 시험지 편집하기</button>
							<button class="btn-icon" onclick="location.assign('${path}/sub02?subjectId='+sessionStorage.getItem('subjectId'))"><i class="newpaper"></i>신규 시험지 만들기</button>
						</div>
					</div>

					<div class="view-bottom">
						<div class="tab-list-type01 unit-acc-wrap">
							<div class="scroll-inner">
								<c:forEach var="largeChap" items='${chapterMap.keySet()}' varStatus="s1">
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
												<c:forEach var="middleChap" items="${chapterMap[largeChap].keySet()}" varStatus="s2">
													<c:forEach var="smallChap" items="${chapterMap[largeChap][middleChap].keySet()}" varStatus="s3">
														<div class="col">
															<span class="tit">${middleChap} > ${smallChap} > 1회</span>
															<span><button type="button" class="pop-btn btn-icon2" data-pop="prev-pop"><i
																		class="preview" onclick="previewPopup('${smallChap}')"></i></button></span>
															<span><button type="button" class="btn-icon2" onclick="editProblem('${smallChap}')"><i class="edit-type02"></i></button></span><!--230706 편집하기 버튼 추가-->
															<span>
																<div class="btn-wrap"><button type="button" class="btn-default" onclick="download('all','${smallChap}')">전체</button> <button
																		type="button" class="btn-default" onclick="download('quiz','${smallChap}')">문제</button> <button type="button" class="btn-default" onclick="download('answer','${smallChap}')">정답
																		+ 해설</button></div>
															</span>
														</div>
													</c:forEach>
												</c:forEach>
											</div>
										</div>
									</div>
								</c:forEach>
<%--								바꿔야겠다 싶어서 만들려고 했는데 일단 보류 --%>
<%--								<c:forEach var="largeChap" items="${examList.keySet()}">--%>
<%--									<button type="button" class="acc-btn">${largeChap}</button>--%>
<%--									<div class="cnt">--%>
<%--										<div class="table">--%>
<%--											<div class="fix-head">--%>
<%--												<span>시험지명</span>--%>
<%--												<span>미리보기</span>--%>
<%--												<span>편집하기</span>--%>
<%--												<span>다운로드</span>--%>
<%--											</div>--%>
<%--											<!-- e 230706 선택 삭제, 편집하기 추가 -->--%>
<%--											<div class="tbody">--%>
<%--												<c:forEach var="examName" items="${examList[largeChap].keySet()}" varStatus="s2">--%>
<%--													<div class="col">--%>
<%--														<span class="tit">${examName}</span>--%>
<%--														<span><button type="button" class="pop-btn btn-icon2" data-pop="prev-pop"><i--%>
<%--																class="preview" onclick="previewPopup('${examList[largeChap][examName][examId]}')"></i></button></span>--%>
<%--														<span><button type="button" class="btn-icon2" onclick="editProblem('${smallChap}')"><i class="edit-type02"></i></button></span><!--230706 편집하기 버튼 추가-->--%>
<%--														<span>--%>
<%--															<div class="btn-wrap"><button type="button" class="btn-default" onclick="download('all','${smallChap}')">전체</button> <button--%>
<%--																	type="button" class="btn-default" onclick="download('quiz','${smallChap}')">문제</button> <button type="button" class="btn-default" onclick="download('answer','${smallChap}')">정답--%>
<%--																	+ 해설</button></div>--%>
<%--														</span>--%>
<%--													</div>--%>
<%--												</c:forEach>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</c:forEach>--%>
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
	$(function(){
		sessionStorage.setItem('subjectId','${chapterList[0].subjectId}');
		// sessionStorage에 과목명 추가
		sessionStorage.setItem('subjectName','${chapterList[0].subjectName}');

		<%--console.log('${chapterList}');--%>
		<%--console.log('${chapterList[0].subjectId}')--%>
		<%--if(sessionStorage.getItem('itemIdList')==null || sessionStorage.getItem('subjectId')!='${chapterList[0].subjectId}'){--%>
		<%--	fetch('${path}/api/getitemid',{--%>
		<%--		method:'POST',--%>
		<%--		headers:{--%>
		<%--			'Content-Type':'application/json'--%>
		<%--		},--%>
		<%--		body:'${jsonChapList}'--%>
		<%--	}).then(response=>{--%>
		<%--		console.log(response);--%>
		<%--		return response.json()--%>
		<%--	})--%>
		<%--	.then(data=>{--%>
		<%--		console.log(data);--%>
		<%--		sessionStorage.setItem('subjectId','${chapterList[0].subjectId}');--%>
		<%--		sessionStorage.setItem('itemIdList',JSON.stringify(data));--%>
		<%--	});--%>
		<%--}--%>
		<%--console.log(sessionStorage.getItem('itemIdList'));--%>
	})

	const download = async (type,sChap) => {
		<%--const itemIdList = JSON.parse('${itemIdList}');--%>
		<%--console.log(type);--%>
		<%--console.log(itemIdList);--%>
		<%--console.log(scName);--%>
		<%--console.log(itemIdList[scName]);--%>

		const itemIdList = await getItemId(sChap);
		// const itemIdList = JSON.parse(sessionStorage.getItem('itemIdList'));

		if(itemIdList!=null){
			await fetch('${path}/api/download',{
				method:'POST',
				headers:{
					'Content-Type':'application/json'
				},
				body:JSON.stringify({
					"examId":"68",
					"examName":"커비는 딸기케이크를 먹고싶어",
					"itemIdList":itemIdList
				})
			}).then(response=>response.json())
			.then(data=>{
				let fileUrl = '';
				switch(type){
					case 'all':
						fileUrl = data.contentHml;
						break;
					case 'quiz':
						fileUrl = data.questionHml;
						break;
					case 'answer':
						fileUrl = data.answerHml;
						break;
				}
				return fetch('${path}/api/downloadHwp',{
					method:'POST',
					headers:{
						'Content-Type':'application/json'
					},
					body:fileUrl
				});
			}).then(response=>response.blob())
			.then(blob=>{
				const filename = "커비는 딸기케이크를 먹고싶어.hwp"; // 저장할 파일 이름 지정
				saveBlobToDisk(blob, filename);
			})
		}
	}

	function saveBlobToDisk(blob, filename) {
		if (window.navigator && window.navigator.msSaveBlob) {
			// IE를 위한 처리
			window.navigator.msSaveBlob(blob, filename);
		} else {
			const objectURL = URL.createObjectURL(blob);
			const tempLink = document.createElement("a");
			tempLink.href = objectURL;
			tempLink.download = filename; // 파일명 설정
			document.body.appendChild(tempLink);
			tempLink.click(); // 링크 클릭 이벤트로 다운로드 실행
			document.body.removeChild(tempLink); // DOM에서 링크 제거
			URL.revokeObjectURL(objectURL); // Object URL 해제
		}
	}

	const previewPopup = async (sChap) =>{
		// const itemIdList = JSON.parse(sessionStorage.getItem('itemIdList'));
		const itemIdList = await getItemId(sChap);

		if(itemIdList!=null){
			await fetch('${path}/api/preview',{
				method:'POST',
				headers:{
					'Content-Type':'application/json'
				},
				body:JSON.stringify(itemIdList)
			}).then(response=>response.json())
			.then(data=>{
				$('.view-data').empty();
				data.forEach((da,index)=>{
					const exarea = $('<div>');
					exarea.addClass('example-area');
					const exbox = $('<div>');
					exbox.addClass('example-box');

					const qitem = $('<div>');
					qitem.addClass('item-question');
					const numbering = $('<span>');
					numbering.text((index*1+1*1)+'.');
					const qimg = $('<img>');
					qimg.attr('src',da.questionUrl);
					numbering.addClass('numbering');

					qitem.append(numbering);
					qitem.append(qimg);

					const aitem = $('<div>');
					aitem.addClass('answer-container');
					const atit = $('<span>');
					atit.addClass('answer-tit');
					atit.text('(정답)');
					const aimgdiv = $('<div>');
					aimgdiv.addClass('answer-img');
					const aimg = $('<img>');
					aimg.attr('src',da.answerUrl);

					aitem.append(atit);
					aimgdiv.append(aimg);
					aitem.append(aimgdiv);

					const eitem = $('<div>');
					eitem.addClass('explain-answer');
					const etit = $('<span>');
					etit.addClass('explain-tit');
					etit.text('(해설)');
					const eimgdiv = $('<div>');
					eimgdiv.addClass('explain-img');
					const eimg = $('<img>');
					eimg.attr('src',da.explainUrl);

					eitem.append(etit);
					eimgdiv.append(eimg);
					eitem.append(eimgdiv);

					exbox.append(qitem);
					exbox.append(aitem);
					exbox.append(eitem);

					exarea.append(exbox);

					$('.view-data').append(exarea);
				})
			});
		}
	}

	const editProblem = async (sChap) => {
		// const itemIdList = JSON.parse(sessionStorage.getItem('itemIdList'));
		const itemIdList = await getItemId(sChap);

		if(itemIdList!=null){
			await fetch('${path}/api/preview',{
				method:'POST',
				headers:{
					'Content-Type':'application/json'
				},
				body:JSON.stringify(itemIdList)
			}).then(response=>response.json())
			.then(data=>{
				sessionStorage.setItem("questionList",JSON.stringify(data));
				location.assign('${path}/sub03_01');
			})
		}
	}

	const getItemId = (sChap) =>{
		const chapList = '${jsonChapList}';
		console.log(chapList);
		const filterChap = JSON.parse(chapList).filter(chap=>chap.smallChapterName==sChap);
		console.log(filterChap);

		const itemIdList = fetch('${path}/api/getitemid',{
			method:'POST',
			headers:{
				'Content-Type':'application/json'
			},
			body:JSON.stringify(filterChap)
		}).then(response=>{
			console.log(response);
			return response.json()
		})
		.then(data=>{
			console.log(data);
			return data;
			// sessionStorage.setItem('itemIdList',JSON.stringify(data));
		});

		return itemIdList;
	}

	// 바꿔야겠다 싶어서 만들려고 했는데 일단 보류
	<%--const previewPopup = (examId) => {--%>
	<%--	fetch('${path}/api/preview',{--%>
	<%--		method:'POST',--%>
	<%--		headers:{--%>
	<%--			'Content-Type':'application/json'--%>
	<%--		},--%>
	<%--		body:JSON.stringify(examId)--%>
	<%--	}).then(response=>response.json())--%>
	<%--	.then(data=>{--%>
	<%--		sessionStorage.setItem("questionList",JSON.stringify(data));--%>
	<%--		location.assign('${path}/sub03_01');--%>
	<%--	})--%>
	<%--}--%>
</script>
</body>
</html>