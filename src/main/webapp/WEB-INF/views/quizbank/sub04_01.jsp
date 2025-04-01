<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
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
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step-btn-wrap">
				<button type="button" class="btn-step" onclick="location.assign('${path}/sub03_01')">STEP 2 문항 편집</button>
				<button type="button" class="btn-step next done" onclick="saveTestPaper()">시험지 저장하기</button>
			</div>


		</div>
		<div class="dim"></div>

		<div id="q-preview" class="pop-wrap prev-type " data-pop="prev-pop">
			<div class="pop-inner">
				<div class="pop-content">
					<div class="view-box">
						<div class="scroll-inner">
							<div class="view-data">

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
<script>
	$(function(){
		const questionList = JSON.parse(sessionStorage.getItem('questionList'));
		console.log(questionList);
		questionList.forEach(question=>{
			const col = $('<div>');
			col.addClass('col');
			const num = $('<span>');
			num.text(question.itemNo);
			const tit = $('<span>');
			tit.addClass('tit');
			tit.text(question.largeChapterName + " > " + question.mediumChapterName);
			const qForm = $('<span>');
			qForm.text(question.questionFormName);
			const diff = $('<span>');
			diff.text(question.difficultyName);

			col.append(num).append(tit).append(qForm).append(diff);
			$('.tbody>.scroll-inner').append(col);
		})

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

		$(".left-wrap>.que-badge-group span.num").each((i,num)=>{
			num.innerText = diff[num.previousElementSibling.innerText];
		})

		$(".right-wrap>.que-badge-group span.num").each((i,num)=>{
			num.innerText = quesForm[num.previousElementSibling.innerText];
		})

		questionList.forEach((question,index)=>{
			const exarea = $('<div>');
			exarea.addClass('example-area');
			const exbox = $('<div>');
			exbox.addClass('example-box');

			const qitem = $('<div>');
			qitem.addClass('item-question');
			const numbering = $('<span>');
			numbering.text((index*1+1*1)+'.');
			const qimg = $('<img>');
			qimg.attr('src',question.questionUrl);
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
			aimg.attr('src',question.answerUrl);

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
			eimg.attr('src',question.explainUrl);

			eitem.append(etit);
			eimgdiv.append(eimg);
			eitem.append(eimgdiv);

			exbox.append(qitem);
			exbox.append(aitem);
			exbox.append(eitem);

			exarea.append(exbox);

			$('.view-data').append(exarea);
		})
	})

	const saveTestPaper = async () =>{
		const questionList = JSON.parse(sessionStorage.getItem('questionList'));

		// $(".pop-wrap[data-pop='prev-pop']").show();

		if($(".left-wrap .search-box>input.search").val()==''){
			alert('시험지명을 입력해주세요.');
		}else {
			// 시험지에 들어갈 정보 찾기
			if(confirm('시험지를 저장하시겠습니까?')){
				const download = document.getElementById('q-preview');
				const download2 = document.querySelector('.view-data');

				html2pdf()
				.from(download2)
				.set({
					margin: 1,
					filename: "example.pdf",
					html2canvas: { scale: 2 },
					jsPDF: { orientation: "portrait" },
				})
				.save();

				// 그리고 저장하기
				// 저장할 데이터 먼저 적어보자

				const sendQuesData = [];

				let problemType;

				let numArr = [];
				$(".right-wrap>.que-badge-group span.num").each((i,num)=>{
					numArr.push(num.innerText);
				})

				if(numArr[0]>0 && numArr[1]>0) problemType='multiple, subjective';
				else if(numArr[0]>0) problemType='multiple';
				else if(numArr[1]>0) problemType='subjective';

				// 시험지 정보인데 시험지 문항을 저장하려고 함 😅 시험지 문항은 아래로
				// examCode : sequence 사용
				// title : $(".left-wrap .search-box>input.search").val()
				// problemType : 객관식, 주관식 각각 1개 이상이면 영어로 문자열에 추가
				// difficulty : questionList에서 가져오기
				// problemForm : questionList에서 가져오기
				// examImage : 뭐 가져와야 하지? 🤔
				// questioncount : 문제 개수 세서 저장(근데 안세도 될수도 있음!)
				// examregistday : sysdate로 설정
				// subject : 이거... 어디에서 가져옴? 🤔
				// teacode : 일단 회원이 없으니 임의의 값 설정
				// midhighcode : 코드가 없어서 뭘 저장해야 할지 모르겠다 🤔
				// subCode : sessionStorage에서 가져오기
				const sendPaperData = {
					'title' : $(".left-wrap .search-box>input.search").val(),
					'problemType' : problemType,		// 객관식, 주관식에 따라 바꾸는 것으로 만들기
					'difficulty' : questionList[0].difficultyName,	// 근데 이거 뭐 저장하는 거임? 배열로 최대 5개까지 저장하는 건가?
					'problemForm' : questionList[0].questionFormName,
					'examImage' : '',			// 일단 이건 뭔지 모르겠어
					'questionCount' : questionList.length,	// 일단 문항번호로 저장
					'subject' : sessionStorage.getItem('subjectName'),
					'teaCode' : '6804',	// 임의의 번호(아님)으로 저장
					'midhighcode' : '',			// 어디서 가져오는지 모르겠어
					'subCode' : sessionStorage.getItem('subjectId')
				}
				// 그래서 2개의 항목은 비어있다...

				let examCode;
				// 페이지를 넘어가면서 저장하는 것으로 해보자...라고 할거면 어떻게 body에 넣을건데 fetch로 해야겠다
				// 여기 가서 시험지를 DB에 저장하고 시험지 번호를 가져온다. 그런데 어떻게? 위 정보로? 🙃
				// 보니까 teacode + subcode + examregistday 로 가져올 수 있겠다. teacode와 subcode가 일치하면서 examregistday가 가장 최신 것으로.
				// 그건 내일 짜겠습니다. 일단 잘래. 오늘은 더 하고 싶은 마음이 안두러...
				await fetch('${path}/edit/saveexampaper',{
					method:'POST',
					headers:{
						'Content-Type':'application/json'
					},
					body:JSON.stringify(sendPaperData)
				}).then(response=>{
					console.log(response);
					return response.json()
				})
				.then(data=>{
					console.log(data);
					examCode=data;		// 일단 여기서 시험지 번호를 가져올 생각이라 examCode=data란 코드를 친건데...
				}).catch(error=>console.error(error))

				await questionList.forEach(question=>{
					// 시험지 문항 데이터
					// questionCode : sequence 사용하기
					// passageUrl : questionList에서 가져오기(근데 지문 없는게 많긴 해)
					// questionUrl : questionList에서 가져오기
					// answerUrl : questionList에서 가져오기
					// explainUrl : questionList에서 가져오기
					// examCode : 시험지 만들고 가져오기

					console.log("examCode",examCode);
					
					sendQuesData.push({
						'passageUrl':question.passageUrl,
						'questionUrl':question.questionUrl,
						'answerUrl':question.answerUrl,
						'explainUrl':question.explainUrl,
						'examCode':String(examCode)		// 시험지 저장하고 가져오기!!! 근데 어떻게? 😐
					})
				})

				await fetch('${path}/edit/saveexamquestion',{
					method:'POST',
					headers:{
						'Content-Type':'application/json'
					},
					body:JSON.stringify(sendQuesData)
				}).then(response=>{
					if(!response.ok) alert('저장이 되지 않았습니다. 다시 시도하세요');
					else location.assign('${path}/sub04_02');
				})
			}
		}
	}
</script>
</html>