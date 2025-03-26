<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>T셀파 문제은행</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="../inc/css/font.css">
	<link rel="stylesheet" href="../inc/css/reset.css">
	<link rel="stylesheet" href="../inc/css/common.css">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="../inc/js/common.js"></script>
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
				<div class="view-box save-complete">
					<div class="btn-wrap">
						<button class="btn-default"><a href="javascript:;">처음으로</a></button>
					</div>

					<div class="save-wrap">
						<img src="../images/common/save.png" alt="저장완료 이미지">
						<span class="txt">
							시험지가 저장되었습니다.
							<p>저장된 시험지는 시험지 보관함 메뉴에서 확인 가능합니다. </p>
						</span>
						<div class="btn-wrap">
							<button class="btn-icon">시험지 보관함으로 이동</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="dim"></div>
</body>


</html>