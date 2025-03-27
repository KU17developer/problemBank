<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

<html lang="ko">
<head>
    <!-- TS4 -->
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-5GLJFMV');</script>
    <!-- End Google Tag Manager -->
    <!-- Google tag (gtag.js) -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=G-9BRVE8BR14"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-9BRVE8BR14');
    </script>
    <title>T셀파 중고등 - 오직 선생님만을 위한 교수학습 무료지원</title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
    <meta content="origin" name="Referrer"/>
    <meta content="IE=Edge" http-equiv="X-UA-Compatible"/>
    <meta content="width=1768" name="viewport"/>
    <meta content="index,follow" name="robots">
    <meta content="T셀파 중고등 - 오직 선생님만을 위한 교수학습 무료지원" name="title"/>
    <meta content="<%= request.getContextPath() %>" name="url"/>
    <meta content="T셀파 중고등,티셀파 중고등,교수지원,천재교육,천재교과서" name="keywords"/>
    <meta content="천재교육, 천재교과서의 모든 학습자료는 기본! 강력한 평가자료와 다양한 콘텐츠제공!" name="description"/>
    <meta content="<%= request.getContextPath() %>/resources/css/images/sub00img/OpenGraph_1200x630_m.jpg" name="image"/>
    <meta content="T셀파 중고등 - 오직 선생님만을 위한 교수학습 무료지원" name="apple-mobile-web-app-title"/>
    <meta content="453644223372937" property="fb:app_id"/>
    <meta content="website" property="og:type"/>
    <meta content="T셀파 중고등 - 오직 선생님만을 위한 교수학습 무료지원" property="og:title"/>
    <meta content="<%= request.getContextPath() %>/" property="og:url"/>
    <meta content="천재교육, 천재교과서의 모든 학습자료는 기본! 강력한 평가자료와 다양한 콘텐츠제공!" property="og:description"/>
    <meta content="<%= request.getContextPath() %>/resources/css/images/sub00img/OpenGraph_1200x630_m.jpg" property="og:image"/>
    <meta content="summary_large_image" name="twitter:card"/>
    <meta content="T셀파 중고등 - 오직 선생님만을 위한 교수학습 무료지원" name="twitter:title">
    <meta content="<%= request.getContextPath() %>/" name="twitter:url"/>
    <meta content="천재교육, 천재교과서의 모든 학습자료는 기본! 강력한 평가자료와 다양한 콘텐츠제공!" name="twitter:description"/>
    <meta content="<%= request.getContextPath() %>/resources/css/images/sub00img/OpenGraph_1200x630_m.jpg" name="twitter:image"/>
    <link href="<%= request.getContextPath() %>/resources/css/images/sub00img/favicon-9f0957a54705223dc8146656eb5dc851.ico" rel="shortcut icon"/>
    <link href="<%= request.getContextPath() %>/resources/css/images/sub00img/Favorites_T-spa-efcf1f38b818e5300b32cd726f599bd2.png" rel="apple-touch-icon-precomposed" sizes="192x192"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/common-1050b1daa0a6c3377c241977c2e96f65.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/layout-302ded104006bae7681d2dd03e8ffa56.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/layout-mobile-c724cd9780851591f8adedd9a3b33cb0.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/list_guide-93ec19143269cd93ad34dcf5bb1c7df6.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/main-4b867fba1ea94b4c75c5ea1d75620020.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/teachingboard-a3e742a44c3508e67d68defbf21a144c.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/error-63231362f176c9973da1f99feaaae05d.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/additional-385f7809797181baa5b86e629ecf7715.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/special-99b07f5e24e7336c0cb7b7baad796068.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/popup-d7bb4e2166dffe416a92e1de5a2021a8.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/page-7215b39d63a9e1350fb4d2b5af236b75.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/special_2022-404adccb066c092add56483a91fc502e.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/classresearch-92385851d815fb5ac5c170292f7584c1.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/layout_2022_v2-dcffcd49c618da1616c0ebee6471d7be.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/quick-ab36c7d672770ae547740432f80a581f.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/textbookmaterial-85fbe6f326ac51c259c3094f3d9f92ec.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/include-60c9c6cebb0074df60e6267ecf50bbb3.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/testbank-5f66eba87e02e6625c928c3ffa15180b.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/main_202306-5f9191518d214ce520f109b2b74968b3.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/dataroom-4fe8a04efbec2df2f2f1db0bede5e7e1.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/mobile_2023-fa9af9934ccaf82d3c4600bdb625a453.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/career-90f097b64757f141983253cb6c4576b9.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/music_story-0488c7300f231308aa3da82ff9b6d39c.css" rel="stylesheet" type="text/css"/>
    <link href="<%= request.getContextPath() %>/resources/css/sub00css/digital_sc-caad0d2ab831ca2127298629d8adb1d4.css" rel="stylesheet" type="text/css"/>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/jquery.min-4b57cf46dc8cb95c4cca54afc85e9540.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/jquery.mCustomScrollbar.min-79da02c489da1f70030e0abf956b8ad9.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/bootstrap.min-d039b2b9ceb69f48a85309806ca078f4.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/bootstrap-datepicker.min-0ec5664fc2e0badb5ce61b55beeae2e5.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/swiper.min-2ac19265b38d14235141d184bca54d9a.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/moment.min-8cb13767cf53aa49d8b1b1096e513a18.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/moment.locale-14369b837e9e15378938754b04bd2189.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/lodash.min-4ad84e20e2c560e8d2bf026cbdcea2c2.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/js.cookie.min-9736caa043e0a67571913cd19d1a9ce5.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/js.storage.min-99bc78871b76f7beb3271a2a804f9955.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/handlebars.min-8d8e6abd659e36b6aead88b4a93bff49.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/alpine-3.12.0.min-4b5643f7d8641662eb58a3eee6009752.js" type="module"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/auth-latest.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/queryencrypt-latest.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/legacy_common-d2d7d5cb7969edb323cd785fc9c44390.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/sub00js/common-635a3dfdd0d391c3f5ed081913381970.js"></script>

    <script>
        var currentDevice = 'DESKTOP';
        var downloadServerUrl = 'https://bfile.tsherpa.co.kr/popup/downfile_multi_new_dext5.aspx';
        var cdnUrl = 'https://cdata2.tsherpa.co.kr/tsherpa';

        //통합회원 체크
        window.onload = function () {
            if (false) {
                if (Common.getCookie("popupYN") != "N") {
                    if (Common.getCookie("loginCheck") == "Y") {
                        integratedChange();
                    }
                }
                Common.setCookie("loginCheck", "N");
            }
        };

        function isUserLogin() {
            return false;
        }

        function checkUserLoggedIn(redirect) {
            if (!false) {
                alert('로그인 후 이용할 수 있는 서비스입니다.');
                if (redirect !== false) {
                    location.href = '/login.html?returnUrl=' + encodeURIComponent(location.href);
                }
            }
            return false;
        }

        function isStudentMember() {
            return false;
        }

        function returnMemberType() {
            return '';
        }

        function iRegularMember() {
            return false;
        }

        // 유치, 교대생, 중고등 준회원, 정회원, 영업 X && 초등 정회원, 영업, 초중고 관리자 (우리반T셀파, 알림장 등)
        function newRegularMember() {
            return false;
        }

        // 교대생, 유치 준회원, 중고등 준회원, 정회원, 영업 X && 유치/초등 정회원, 영업, 초중고 관리자 (tBag)
        function tBagRegularMember() {
            return false;
        }

        // 중고등 창체, 특별한수업자료, forTea 공통 권한, 유치 전체X, 초중고 교대생, 정회원, 영업, 관리자만 가능 (글내용, 미리보기, 다운로드 권한)
        function mRegularMember() {
            return false;
        }

        // 초중고 비/준회원, 유치 비/준/정회원, 관리자 X && 초중고 교대생, 정회원, 영업, 관리자, 유치원 영업 (내 교과/평가)
        // 초등에서는 초등 정회원만, 중고에서는 중고 정회원만 가능하도록 수정
        //[권한] 초등 정회원 권한 수정 #703 2023.09.15
        function CEMember() {
            return false;
        }

        // 유치X, 초등 영업, 관리자 중고등 정회원, 영업, 관리자만 가능 (교과서, 과목자료)
        function tBookSubRegularMember() {
            return false;
        }

        function checkMenuPermission(menu) {
            if (!isUserLogin() && (menu == 'curri' || menu == 'community' || menu == 'exam' || menu == 'creativity')) {
                checkUserLoggedIn(true);
            }
        }

        function integratedChange() {
            if (false) {
                let userName = '';
                let encryption = encodeURIComponent(queryEncrypt.encrypt(userName));
                $.get("https://sso.chunjae.co.kr:446/api/member/JoinedSite", {
                    userID: encryption
                }).done(function (Status) {
                    if (Status.Result.Items[0].CreDate < "2018") {
                        if (Status.Result.Itemsummary.TotalCnt < 3) {
                            let url = "/modal/membership-integration.html";
                            document.querySelector("#memberChangeModal").load(url, function (response, status, xhr) {
                                document.querySelector("#memberChange").modal('show');
                            });
                        }
                    }
                });
            }
        }

        function certification() {
        }
    </script>
    <script type="text/javascript">
        (function(c,l,a,r,i,t,y){
            c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
            t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
            y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
        })(window, document, "clarity", "script", "j50r9or0xl");
    </script>
    <script>
        $.ajax({
            url: "https://sso.chunjae.co.kr:446/api/auth/Validation",
            data: {sessionData: "q+TpYbQBW2S/hXDnwltnIFfBzFIyZXYrMCfRvJ2Y5dPZ6ElR9qzWK3hwqE/mB5wXQgp/lbeiNYdZUkoard8Q9Q=="},
            dataType: 'json',
            cache: false,
            success: function (data) {
                if (data && data.Result) {
                    let Items = data.Result.Items;
                    $.ajax({
                        url: "https://sso.chunjae.co.kr:446/api/auth/Authorize?Token=" + Items.Token,
                        dataType: 'text',
                        xhrFields: {withCredentials: true},
                        cache: false,
                        success: function (data) {
                            let reg = /_ChunjaeSSOEncData = '(.*)';/
                            let ssoData = reg.exec(data)[1];
                            if (ssoData) {
                                $.post("/ssoLogin.do", {encData: ssoData, isReconn: true}).done(function (data) {
                                    if (data.success) {
                                        if (isLoginPage()) {
                                            alert("통합인증 로그인으로 재접속 합니다.");
                                            location.href = "/";
                                        } else {
                                            if (!sessionStorage.getItem("tsherpa_sso_reload")) {
                                                sessionStorage.setItem("tsherpa_sso_reload", "on");
                                                location.reload(true);
                                            }
                                        }
                                    } else {
                                        alert(data.message);
                                    }
                                });
                            } else {
                            }
                        },
                        error: function (e) {
                            console.error(e);
                        }
                    });
                }
            },
            error: function (e) {
                console.error(e);
            }
        });

        function isLoginPage() {
            return location.pathname == '/login.html'
                || location.pathname == '/mo_membership/login.html'
                || location.pathname == '/mo_membership/class_app_login.html'
                || location.pathname.startsWith("/mo_membership/signup");
        }

        async function isSsoStudentLogout(){
            const response1 = await fetch("https://sso.chunjae.co.kr:446/api/auth/Validation?sessionData=" + encodeURIComponent('q+TpYbQBW2S/hXDnwltnIFfBzFIyZXYrMCfRvJ2Y5dPZ6ElR9qzWK3hwqE/mB5wXQgp/lbeiNYdZUkoard8Q9Q=='), {
                method: 'GET',
                cache: 'no-cache',
                headers: {
                    'Accept': 'application/json'
                }
            });
            const data1 = await response1.json();
            if (data1 && data1.Result) {
                const Items = data1.Result.Items;
                const response2 = await fetch("https://sso.chunjae.co.kr:446/api/auth/AuthorizeStudent?Token=" + Items.Token, {
                    method: 'GET',
                    cache: 'no-cache',
                    credentials: 'include', // This is equivalent to xhrFields: {withCredentials: true}
                    headers: {
                        'Accept': 'text/plain'
                    }
                });
                const data2 = await response2.text();
                const reg = /_ChunjaeSSOEncData = '(.*)';/
                const ssoData = reg.exec(data2)[1];
                if (ssoData) {
                    alert('다른 SSO 세션이 존재하여, 로그아웃 하겠습니다.');
                    const url = location.href.replace(location.search, '');
                    document.location.href = "https://class.tsherpa.co.kr//tclass/logout?returnUrl="  +
                        encodeURIComponent("https://sso.chunjae.co.kr:446/api/auth/logout?returnUrl=" +
                            encodeURIComponent(url + encodeURIComponent(location.search)));
                    return true;
                }
            }
            return false;
        }
    </script>
    </head>
<script crossorigin="anonymous" src="https://kit.fontawesome.com/0ebf843a0e.js"></script>
<body>
<!--header-->
<style>
    .header_bg_2022_v2 .gnb_submenu .inner .box03__list li a.on, .header_bg_2022_v2 .gnb_submenu .inner .box03__list li a:hover { color: #5670dc; }
</style>
<div class="header_bg_2022_v2 sticky" x-data="mhHeaderObj">
    <header class="header">
        <div class="util-line clearfix">
<span class="util-link">
<a href="https://kid.tsherpa.co.kr/">유치</a>
<a href="https://ele.tsherpa.co.kr/">초등</a>
<a class="dark" href="https://mh.tsherpa.co.kr/">중학 · 고등</a>
<a href="https://mall.tsherpa.co.kr/" target="_blank">T셀파몰</a>
<a href="https://edu.tsherpa.co.kr/" target="_blank">연수원</a>
<a href="https://text.tsherpa.co.kr/" target="_blank"><img src="<%= request.getContextPath() %>/resources/images/sub00img/ico-new.png"/>22개정 천재교과서</a>
<a href="https://ai.chunjae.co.kr/" target="_blank"><img src="<%= request.getContextPath() %>/resources/images/sub00img/ico-new.png"/>AI 디지털교과서 전시관</a>
</span>
            <span class="util-member">
<a href="javascript:doLogin();"><span class="underline">로그인</span></a>
<a href="https://www.tsherpa.co.kr/mo_membership/signup.html">회원가입</a>
<a href="https://www.tsherpa.co.kr/center/M-noticM.html">고객센터</a>
<a href="https://www.tsherpa.co.kr/event/index.html">이벤트</a>
<a href="https://www.tsherpa.co.kr/center/M-sitemap.html">사이트맵</a>
</span>
        </div>
        <script>
            function doLogin() {
                let loginUrl = "/login.html";
                if (location.pathname.indexOf("/login.html") < 0) {
                    loginUrl += '?returnUrl=' + encodeURIComponent(location.href);
                }
                location.href = loginUrl;
            }

            function logout() {
                Storages.cookieStorage.remove('gnb_seleted_grade');
                $.post("/ssoLogout.do")
                    .done(function (data) {
                        if (data.success) {
                            let returnUrl = location.protocol + '//' + location.host;
                            document.location.href = "https://sso.chunjae.co.kr:446/api/auth/logout?returnUrl=" + returnUrl;
                        } else {
                            alert(data.message);
                        }
                    });
            }
        </script>
        <div class="header_top">
            <h1>
                <a href="/">
                    <img alt="티셀파 중고등 로고" src="<%= request.getContextPath() %>/resources/images/sub00img/img-logo_20230614-b6f4c2bf2ba17f391a7341ecaea14273.png">
                    </img></a>
            </h1>
            <form action="" autocomplete="off" id="keywordForm" method="get" name="keywordForm" onsubmit="return false;" target="_blank">
                <div class="search_area">
                    <input id="keyword" name="keyword" onkeyup="press();" placeholder="검색어를 입력해주세요." type="text"/>
                    <a class="btn btn_search" href="javascript:" id="searchButton">검색</a>
                </div>
            </form>
            <div class="header_top-banner">
                <a href="https://www.geniatutor.co.kr/" target="_blank">
                    <img alt="지니아튜터" onerror="this.style.display='none';" src="//cdata2.tsherpa.co.kr/tsherpa///BI/배너_지니아튜터.jpg">
                    </img></a>
            </div>
        </div>
        <div class="header_nav">
            <div class="btn btn_allMenu">
                <button type="button">
                    <span>전체메뉴</span>
                </button>
            </div>
            <!-- 1뎁스 -->
            <nav>
                <ul class="gnb">
                    <li><a class="dot" data-target="sub01" href="#">교과서자료</a></li>
                    <li>
                        <a class="dot active" href="/testbank/testbank.html">문제은행</a>
                    </li>
                    <li>
                        <img alt="NEW" src="<%= request.getContextPath() %>/resources/images/sub00img/round-new-2d0f847d91070be32c02b6ed388b356f.png" style=" width:19px; height:18px; vertical-align: -2px; margin-right:2px;"/>
                        <a class="dot" href="/edutech/index.html">에듀테크</a>
                    </li>
                    <li><a class="dot" href="/class-research/research/index.html">수업연구소</a></li>
                    <li>
                        <img alt="NEW" src="<%= request.getContextPath() %>/resources/images/sub00img/round-new-2d0f847d91070be32c02b6ed388b356f.png" style=" width:19px; height:18px; vertical-align: -2px; margin-right:2px;"/>
                        <a class="dot" href="/credit/h-credit/index.html">진로진학</a>
                    </li>
                    <li>
                        <a href="https://sschannel.tsherpa.co.kr/" target="_blank">쌤채널</a>
                    </li>
                    <li class="gnb-logo" style="margin-right:106px;">
                        <a href="https://ele.tsherpa.co.kr/site/aidt_data/main.html" target="_blank">
                            <img alt="AI디지털 교과서 자료실" src="<%= request.getContextPath() %>/resources/images/sub00img/gnb-aidt-d6bf64d32adef43ed5fef381d9da7f13.png"/>
                        </a>
                    </li>
                </ul>
                <ul class="gnb">
                </ul>
            </nav>
        </div>
    </header>
    <!-- 2뎁스 -->
    <!-- D://  on 메뉴보이게 -->
    <div class="gnb_submenu">
        <a class="gnb_submenu__close" href="#"><span class="ir_su">메뉴닫기</span></a>
        <!-- 2뎁스 : 교과서자료 -->
        <div class="subs sub01">
            <div class="inner">
                <div class="box01">
                    <ul class="box01__list">
                        <li><a class="on" href="#" onclick="mhCateIndex = 0; getTextBookList();">중학 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="mhCateIndex = 1; getTextBookList();">고등 <span class="img-arrow-right-blue"></span></a></li>
                    </ul>
                    <a class="box01_banner" href="https://text.tsherpa.co.kr/" target="_blank"><img alt="2022 교과서 전시관" src="<%= request.getContextPath() %>/resources/images/sub00img/banner_20240911-a4e5875bdaab3202727676fcbbb53ef9.png"/></a>
                </div>
                <div class="box02">
                    <!-- 중등 과목 -->
                    <ul class="box02__list on">
                        <li><a class="on" href="#" onclick="getTextBookList(1)">국어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(2)">영어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(3)">수학 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(4)">사회/역사/도덕 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(5)">과학/기술·가정/정보 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(6)">음악/미술/체육 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(7)">중국어/일본어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(8)">한문/보건/환경/진로 <span class="img-arrow-right-blue"></span></a></li>
                    </ul>
                    <!-- 고등 과목 -->
                    <ul class="box02__list">
                        <li><a class="on" href="#" onclick="getTextBookList(1)">국어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(2)">영어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(3)">수학 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(4)">사회/지리 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(5)">역사 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(6)">윤리 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(7)">과학 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(8)">기술·가정/정보 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(9)">음악/미술/체육 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(10)">한문/중국어/일본어 <span class="img-arrow-right-blue"></span></a></li>
                        <li><a href="#" onclick="getTextBookList(11)">교양/전문 <span class="img-arrow-right-blue"></span></a></li>
                    </ul>
                </div>
                <div class="box03">
                    <div class="box03__column" x-show="showTextBookList['2009']">
                        <a class="box03__column__btn on" href="#">2009 개정</a>
                        <ul class="box03__list on">
                            <template x-for="item in showTextBookList['2009']">
                                <li><a href="javascript:" onclick="goBookPage(item.id)" x-text="item.name"></a></li>
                            </template>
                        </ul>
                    </div>
                    <div class="box03__column" x-show="showTextBookList['2015']">
                        <a class="box03__column__btn on" href="#">2015 개정</a>
                        <ul class="box03__list on">
                            <template x-for="item in showTextBookList['2015']">
                                <li><a href="javascript:" onclick="goBookPage(item.id)" x-text="item.name"></a></li>
                            </template>
                        </ul>
                    </div>
                    <div class="box03__column" x-show="showTextBookList['2022']">
                        <a class="box03__column__btn on" href="#">2022 개정</a>
                        <ul class="box03__list on">
                            <template x-for="item in showTextBookList['2022']">
                                <li><a href="javascript:" onclick="goBookPage(item.id)" x-text="item.name"></a></li>
                            </template>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <span class="gnb_submenu__bg">
<span></span>
</span>
    </div>
    <script>
        $(function () {
            /* 1뎁스 클릭 관련 */
            document.querySelector(".gnb li a").addEventListener("click", function(e) {
                e.stopPropagation();
                let depths_one = $(this).attr('data-target');
                bgDimClose();
                if (depths_one == null || depths_one == "") {
                    //빈값이면
                    document.querySelector(".gnb li a").removeClass("on"); //1뎁스 비활성화
                    document.querySelector(".gnb_submenu").removeClass("on"); //2뎁스 영역 비활성화
                } else {
                    //클릭한 1뎁스의 href 에 값이있으면
                    if ($(this).hasClass("on")) {
                        //활성화된 상태에서 1뎁스 메뉴 클릭시
                        $(this).removeClass("on");
                        document.querySelector(".gnb_submenu").removeClass("on");
                        document.querySelector(".subs").removeClass("on");
                    } else {
                        //비활성화된 상태에서 1뎁스 메뉴 클릭시
                        document.querySelector(".gnb li a").removeClass("on");
                        $(this).addClass("on");
                        document.querySelector(".gnb_submenu").addClass("on");
                        $(".subs." + depths_one).addClass("on").siblings().removeClass("on");
                        document.querySelector("body").addClass('modal-open')
                            .insertAdjacentHTML("beforeend", "<div class='gnb-bg' style='z-index:50; position:fixed; width:100%; height:100%; left:0; top:0; background-color: rgba(0,0,0,.2);'></div>");
                        $(document).on('click.gnb2depth', function (e) {
                            let $clicked = $(e.target);
                            if (!$clicked.closest(".subs." + depths_one).length) {
                                bgDimClose();
                                document.querySelector(".gnb li a").removeClass("on"); // 1뎁스 비활성
                                document.querySelector(".gnb_submenu").removeClass("on"); // 2뎁스 영역 비활성
                            }
                        });
                    }
                }
            });
            /* 네비게이션 우측 닫기버튼 클릭시 */
            document.querySelector(".gnb_submenu__close").addEventListener("click", function(e) {
                bgDimClose();
                document.querySelector(".gnb li a").removeClass("on"); // 1뎁스 비활성
                document.querySelector(".gnb_submenu").removeClass("on"); // 2뎁스 영역 비활성
            });

            function bgDimClose() {
                //열려있는 2뎁스 닫을때 딤드 관련 제거
                document.querySelector(".gnb-bg").remove();
                document.querySelector("body").removeClass('modal-open');
                $(document).off('click.gnb2depth'); // 닫기영역 클릭 이벤트 비활성
            }

            /* 2뎁스 교과서자료실 : 중학 & 고등 메뉴 클릭시 */
            document.querySelector(".box01__list li a").addEventListener("click", function(e) {
                let num = $(this).parent().index();
                // 이전 선택 과목 초기화 & 첫번째 과목 선택
                document.querySelector(".box02__list li a").removeClass('on');
                document.querySelector(".box02__list").eq(num).find('li a').eq(0).addClass('on');
                // 현재선택한 중학 & 고등 메뉴 클릭시
                document.querySelector(".box01__list li a").removeClass('on');
                $(this).addClass('on');
                document.querySelector(".box02__list").css("display", "none")
                    .eq($(this).parent().index()).css("display", "block");
            });
            /* 3뎁스 과목 클릭시 */
            document.querySelector(".box02__list li a").addEventListener("click", function(e) {
                document.querySelector(".box02__list li a").removeClass('on');
                $(this).addClass('on');
            });
            /* 4뎁스 클릭 관련 ~~~ 2015, 2020 개정 교육 과정 클릭 관련 */
            document.querySelector(".box03__column__btn").addEventListener("click", function(e) {
                let _h = $(this).parent().find('.box03__list')[0].scrollHeight;
                if ($(this).hasClass("on")) {
                    $(this).parent().find(".box03__list").attr('style', 'height:0px');
                    $(this).removeClass("on");
                    $(this).parent().find(".box03__list").removeClass("on");
                } else {
                    $(this).parent().find(".box03__list").attr('style', 'height:' + _h + 'px');
                    $(this).addClass("on");
                    $(this).parent().find(".box03__list").addClass("on");
                }
            });
        });
    </script>
</div>
<script>
    let mhHeaderObj = {
        mhCateIndex: 0,
        mhCateList: [{"id": "604260", "code": "M-textBook", "name": "중학"},{"id": "605947", "code": "H-textBook", "name": "고등"}],
        showTextBookList: {},
        getTextBookList: async function (groupId = 1) {
            let _this = this;
            // 교과서자료 GNB 메뉴 교과서 가져오기

            _this.showTextBookList = await $.get("/midhigh/getTextbookData.do", {mhCateId: _this.mhCateList[_this.mhCateIndex].id, groupId: groupId});

            // 애니메이션효과를 주기위해 불가피하게 높이값을 고정으로 설정(auto설정 후 높이값 측정)
            let $column = document.querySelector(".box03__column__btn");
            $column.each(function () {
                if ($(this).hasClass("on")) {
                    $(this).siblings(".box03__list").attr('style', 'height: auto');
                    // #3611 [중고등] 교과서자료 2뎁스 메뉴 내 과목리스트 줄바꿈 요청(고등> 과학> 22개정 > 물리학(최혁준)이 윗줄로 나오고 있는데 두번째줄로 나올 수 있도록)
                    if(_this.mhCateIndex === 1 && groupId === 7) {
                        $(this).siblings(".box03__list").attr('style', 'height: auto;width: 650px');
                    }
                }
            });
            setTimeout(function () {
                $column.each(function () {
                    let _h = $(this).siblings('.box03__list')[0].scrollHeight;
                    if ($(this).hasClass("on")) {
                        if (_h) $(this).siblings(".box03__list").attr('style', 'height:' + _h + 'px');

                        // #3611 [중고등] 교과서자료 2뎁스 메뉴 내 과목리스트 줄바꿈 요청(고등> 과학> 22개정 > 물리학(최혁준)이 윗줄로 나오고 있는데 두번째줄로 나올 수 있도록)
                        if(_this.mhCateIndex === 1 && groupId === 7) {
                            if (_h) $(this).siblings(".box03__list").attr('style', 'height:' + _h + 'px;width: 650px');
                        }
                    }
                });
            }, 200)
        },
        goBookPage: function (id) {
            let _this = this;
            location.href = "/curri/schoolbookdata.html?id=" + id;
        },
        showTextBookMenu: function (mhIndex, groupId) {
            let _this = this;
            _this.mhCateIndex = mhIndex;
            _this.getTextBookList(groupId);
            document.querySelector(".btn_close_menu").trigger("click");
            setTimeout(() => {
                document.querySelector(".gnb li:first-child a").click();
                $('.box01__list li:eq(' + mhIndex + ') a').trigger("click");
                $('.box02__list:eq(' + mhIndex + ') li:eq(' + (groupId - 1) + ') a').trigger("click");
            }, 250);
        },
        init: function () {
            let _this = this;
            _this.getTextBookList(1);
        },
    };
</script>
<!-- gnb sitemap -->
<div class="gnb_sitemap_2023">
    <div class="map_header">
        <div class="inner">
            <span>T셀파 중학·고등 전체 서비스</span>
            <a class="btn_close_menu" href="#">
                <img alt="닫기버튼" src="<%= request.getContextPath() %>/resources/images/sub00img/btn-close-big-white-e3f31666f5dec9709719f4ffa2a1bea7.png">
                </img></a>
        </div>
    </div>
    <div class="map_wrap">
        <div class="map_inner">
            <div class="site_list">
                <div class="subject">
                    <span><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 1)">중학 교과서 자료</a></span>
                    <ul>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 1)">국어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 2)">영어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 3)">수학</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 4)">사회/역사/도덕</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 5)">과학/기술·가정/정보</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 6)">음악/미술/체육</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 7)">중국어/일본어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(0, 8)">한문/보건/환경/진로</a></li>
                    </ul>
                </div>
            </div>
            <div class="site_list">
                <div class="subject">
                    <span><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 1)">고등 교과서 자료</a></span>
                    <ul>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 1)">국어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 2)">영어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 3)">수학</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 4)">사회/지리</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 5)">역사</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 6)">윤리</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 7)">과학</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 8)">기술·가정/정보</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 9)">음악/미술/체육</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 10)">한문/중국어/일본어</a></li>
                        <li><a href="#" onclick="mhHeaderObj.$data.showTextBookMenu(1, 11)">교양/전문</a></li>
                    </ul>
                </div>
            </div>
            <div class="site_list">
                <div class="subject">
                    <span><a href="/testbank/testbank.html">문제은행</a></span>
                    <ul>
                        <li><a href="/testbank/testbank.html?cateCode=M-TestBank">중학</a></li>
                        <li><a href="/testbank/testbank.html?cateCode=H-TestBank">고등</a></li>
                        <li><a href="/testbank/testbank.html?cateCode=TestBank-Storage">시험지 보관함</a></li>
                    </ul>
                </div>
            </div>
            <div class="site_list">
                <div class="subject">
                    <span><a href="/edutech/index.html">에듀테크</a></span>
                    <ul>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-chunjae">천재 에듀테크</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-all">전과목</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-kor">국어</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-math">수학</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-eng">영어</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-so">사회/역사</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-sc">과학</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-mu">음악</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-art">미술</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-phy">체육</a>
                        </li>
                        <li>
                            <a href="/edutech/index.html?type=mh-edutech-info">정보</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="site_list">
                <div class="subject">
                    <span><a href="/class-research/tspoon/index.html">수업연구소</a></span>
                    <ul>
                        <li><a href="/class-research/tspoon/index.html">Tspoon(매거진)</a></li>
                        <li><a href="https://sschannel.tsherpa.co.kr/channel/home.html?channel_id=1385">자료집 WORLD</a></li>
                        <li><a href="https://www.tsherpa.co.kr//special/special-literary/master.html">문학터(국어)</a></li>
                        <li><a href="/class-research/genience/list.html">지니언스(과학)</a></li>
                        <li><a href="https://e.tsherpa.co.kr/dabooks/booklist.aspx">영어원서도서관</a></li>
                        <li><a href="https://e.tsherpa.co.kr/bookdata/?curri=C1">교재자료실</a></li>
                        <li><a href="https://koc.chunjae.co.kr/main.do">천재학습백과</a></li>
                        <li><a href="/class-research/vote/index.html">T Poll(설문조사)</a></li>
                        <li><a href="/class-research/request/index.html">자료요청</a></li>
                    </ul>
                </div>
            </div>
            <div class="site_list">
                <div class="subject">
                    <span><a href="https://sschannel.tsherpa.co.kr/" target="_blank">쌤 채널</a></span>
                    <ul>
                        <li><a href="https://sschannel.tsherpa.co.kr/" target="_blank">쌤 채널</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <span class="drop_showArea">
<span></span>
</span>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 사이트맵 클릭 관련
        document.querySelector(".btn_allMenu").addEventListener("click", function(e) {
            e.preventDefault();
            $(this).parents('body').addClass('_body_scroll');
            document.querySelector(".quick_menu").css("z-index", 50);
            $(this).toggleClass("open");
            document.querySelector(".gnb_sitemap_2023").slideToggle(100);
            document.querySelector(".submenu-bg_dmimd").remove();
            document.querySelector(".header_bg_2022_v2").insertAdjacentHTML("beforeend", '<div class="submenu-bg_dmimd"></div>');
        });
        document.querySelector(".btn_close_menu").addEventListener("click", function(e) {
            e.preventDefault();
            $(this).parents('body').removeClass('_body_scroll');
            document.querySelector(".quick_menu").css("z-index", 105);
            document.querySelector(".gnb_sitemap_2023").slideUp(100);
            document.querySelector(".btn_allMenu").removeClass("open");
            document.querySelector(".submenu-bg_dmimd").remove();
        });
    });
</script>
<!-- // gnb sitemap -->
<div class="quick_menu v2_1">
    <button class="btn_quick_toggle"><i>화살표</i></button>
    <p class="tit">Quick menu</p>
    <!-- 로그인 전 -->
    <div class="login_area">
        <form action="/doLogin.do" method="post" name="q_loginForm">
            <ul class="input_field">
                <li>
                    <input class="i_text" id="ID" name="q_username" placeholder="아이디" type="text"/>
                </li>
                <li>
                    <input class="i_text" id="PW" name="q_password" placeholder="비밀번호" type="password"/>
                </li>
            </ul>
            <div class="custom-control custom-checkbox save_id">
                <input class="custom-control-input" id="rememberUserId" type="checkbox"/>
                <label class="custom-control-label" for="rememberUserId">아이디 저장</label>
            </div>
            <a class="btn_login" href="javascript: void(0);">로그인</a>
            <p class="login_find_btn_area">
                <a class="btn_find" href="https://www.tsherpa.co.kr/mo_membership/form_find_id.html?tab=id">아이디</a>
                <a class="btn_find" href="https://www.tsherpa.co.kr/mo_membership/form_find_id.html?tab=pw">비밀번호 찾기</a>
            </p>
            <p class="sns_login_btns" style="left: 13px;">
                <a href="javascript: void(0);" onclick="oauthLogin('naver');"><img alt="네이버 로그인" src="<%= request.getContextPath() %>/resources/images/sub00img/01-ico-naver-87f221453f29695d7ee15e95b54ff119.png"/></a>
                <a href="javascript: void(0);" onclick="oauthLogin('kakao');"><img alt="카카오 로그인" src="<%= request.getContextPath() %>/resources/images/sub00img/02-ico-kakao-a7c9aa8150f4979aadaea551b4fe2d19.png"/></a>
                <a href="javascript: void(0);" onclick="oauthLogin('google');"><img alt="구글 로그인" src="<%= request.getContextPath() %>/resources/images/sub00img/04-ico-goo-27b03b6e5688cb70968f3b797b171833.png"/></a>
                <a href="javascript: void(0);" onclick="oauthLogin('apple');"><img alt="애플 로그인" src="<%= request.getContextPath() %>/resources/images/sub00img/06-ico-a-03e6ab8f9c86fdeee9ef10b934ea87e1.png"/></a>
                <a href="javascript: void(0);" onclick="oauthLogin('whalespace');"><img alt="웨일스페이스 로그인" src="<%= request.getContextPath() %>/resources/images/sub00img/05-ico-w-e8cc30726b443e2dd56643428d33ab0a.png"/></a>
            </p>
        </form>
        <!-- 퀵메뉴 접혔을 시 버튼 -->
        <button class="quick_open inp_auto">로그인</button>
        <!-- //퀵메뉴 접혔을 시 버튼 -->
    </div>
    <!-- //로그인 전 -->
    <ul class="quick_lst go_link">
        <li class="link_timetbl"><a href="https://www.tsherpa.co.kr/myT/curri/myCurri.html"><i></i> <span>교과서 설정</span></a></li>
    </ul>
    <ul class="quick_lst go_tbag">
        <li class="lst07"><a href="/testbank/testbank.html"><i></i> <span>문제은행</span></a></li>
        <li class="lst08"><a href="javascript:" onclick="openBookDVD();"><i></i> <span>교사용 DVD</span></a></li>
        <li class="lst01"><a href="https://class.tsherpa.co.kr/" target="_blank"><i></i> <span>우리반 T셀파</span><mark class="icon icon-new">new</mark></a></li>
        <li class="lst02"><a href="https://www.clpong.co.kr/" target="_blank"><i></i> <span>클래스 핑퐁</span><mark class="icon icon-new">new</mark></a></li>
        <li class="lst09"><a href="https://www.classlink.co.kr/" target="_blank"><i></i> <span>클래스 링크</span><mark class="icon icon-new">new</mark></a></li>
        <li class="lst11"><a href="https://www.clboard.co.kr/" target="_blank"><i></i> <span>클래스 보드</span><mark class="icon icon-new">new</mark></a></li>
    </ul>
    <a class="btn_top" href="#"><span></span>TOP</a>
</div>
<script>
    if (Storages.cookieStorage.setPath('/').get('menu_collapse') == 'Y') {
        document.querySelector(".quick_menu").addClass("active");
    } else {
        document.querySelector(".quick_menu").removeClass("active");
    }
    $(function () {
        document.querySelector(".btn_quick_toggle").addEventListener("click", function(e) {
            e.preventDefault();
            document.querySelector(".quick_menu").toggleClass("active");
            setQuickMenuCookie();
        });
        document.querySelector(".quick_open").addEventListener("click", function(e) {
            e.preventDefault();
            document.querySelector(".quick_menu").removeClass("active");
            if ($(this).hasClass("inp_auto")) {
                document.querySelector(".input_field #ID").focus();
            }
            setQuickMenuCookie();
        });
        var btnTop = document.querySelector(".btn_top");
        btnTop.addEventListener("click", function(e) {
            e.preventDefault();
            document.querySelector("html, body").animate({
                scrollTop: 0
            }, 'slow');
        });
        $(window).on('load', function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > 50) {
                btnTop.css({'opacity': 1});
            } else {
                btnTop.css({'opacity': 0});
            }
        });
        $(window).on('scroll', function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > 50) {
                btnTop.css({'opacity': 1});
            } else {
                btnTop.css({'opacity': 0});
            }
        });

        function setQuickMenuCookie() {
            if (document.querySelector(".quick_menu").hasClass("active")) {
                Storages.cookieStorage.setPath('/').set('menu_collapse', 'Y');
            } else {
                Storages.cookieStorage.setPath('/').set('menu_collapse', 'N');
            }
        }
    });
</script>
<script>
    async function oauthLogin(type) {
        if (await isSsoStudentLogout()) {
            return;
        }
        location.href = "https://www.tsherpa.co.kr/oauth2/login/" + type + "?returnUrl=" + encodeURIComponent(location.href);
    }

    function processLoginSuccess(response, id, pwd) {
        const doRedirect = (ssoLoginData) => {
            if (!(ssoLoginData.user.curri === 'C2' || ssoLoginData.user.curri === 'C3')) {
                location.reload();
                return;
            }
            $.get("/pinCurri/getMainTpinCurri?siteId=7")
                .then((result) => {
                    if (result?.mainTpinCurri?.categoryId) {
                        location.replace("/curri/schoolbookdata.html?id=" + result.mainTpinCurri.categoryId);
                    } else {
                        location.reload();
                    }
                })
                .catch(() => location.reload());
        };
        let isIE11 = !!navigator.userAgent.match(/Trident.*rv\:11\./);
        if (isIE11) {
            let scriptUrl = 'https://sso.chunjae.co.kr:446/api/auth/authenticate?SiteName=TSHERPA&Token=' + response.Items.Token;
            let s = document.createElement("script");
            s.type = "text/javascript";
            s.src = scriptUrl;
            document.querySelector("head").append(s);
            let params = {
                token: response.Items.Token, /* ★ 1. Token 정보는 필수사항입니다. ★ */
                id: queryEncrypt.encrypt(id), /* 아래 항목들은 각 사이트에 맞게 적용*/
                pwd: queryEncrypt.encrypt(pwd),
                openerType: "pagelogin",
                returnUrl: encodeURIComponent(queryEncrypt.encrypt(location.href)),
                encData: response.Items.SSOEncData,
                oReturnUrl: "",
                siteInfoIncorrect: "0"
            };
            $.post("/ssoLogin.do", params)
                .done(function (data) {
                    if (data.success) {
                        setTimeout(function () {
                            Common.setCookie("loginCheck", "Y")
                            doRedirect(data);
                        }, 600)
                    } else {
                        alert(data.message);
                    }
                });
        } else {
            $.getScript("https://sso.chunjae.co.kr:446/api/auth/authenticate?SiteName=TSHERPA&Token=" + response.Items.Token).done(function (script, textStatus) {
                let params = {
                    token: response.Items.Token, /* ★ 1. Token 정보는 필수사항입니다. ★ */
                    id: queryEncrypt.encrypt(id), /* 아래 항목들은 각 사이트에 맞게 적용*/
                    pwd: queryEncrypt.encrypt(pwd),
                    openerType: "pagelogin",
                    returnUrl: encodeURIComponent(queryEncrypt.encrypt(location.href)),
                    encData: response.Items.SSOEncData,
                    oReturnUrl: "",
                    siteInfoIncorrect: "0"
                };
                $.post("/ssoLogin.do", params)
                    .done(function (data) {
                        if (data.success) {
                            Common.setCookie("loginCheck", "Y")
                            doRedirect(data);
                        } else {
                            alert(data.message);
                        }
                    });
            });
        }
    }

    async function login() {
        if (await isSsoStudentLogout()) {
            return;
        }
        let id = document.querySelector(".login_area input[name=q_username]").value;
        let pwd = document.querySelector(".login_area input[name=q_password]").value;
        if (!id || !pwd) {
            alert("아이디나 비밀번호가 입력되지 않았습니다.");
            return false;
        }
        let params = {UserID: queryEncrypt.encrypt(id), Pwd: queryEncrypt.encrypt(pwd), SiteID: 1, Mobile: 0};
        $.ajax({
            url: "https://sso.chunjae.co.kr:446/api/auth/Login2",
            data: params,
            dataType: 'json',
            cache: false,
            async: false,
            success: function (res) {
                switch (res.Status) {
                    case Chunjae.Auth.Status.OK:
                        processLoginSuccess(res.Result, id, pwd)
                        break;
                    case Chunjae.Auth.Status.INFO_INCORRECT:
                        alert("아이디 또는 비밀번호를 잘못 입력하셨습니다.");
                        break;
                    case Chunjae.Auth.Status.SITEINFO_INCORRECT:
                        alert("사이트 정보가 일치하지 않습니다.");
                        break;
                    case Chunjae.Auth.Status.ID_DORMANT:
                        alert("해당 아이디는 휴면계정입니다.");
                        break;
                    case Chunjae.Auth.Status.AUTH_ERROR:
                        alert("인증 에러입니다.");
                        break;
                    case Chunjae.Auth.Status.MEMBER_ERROR:
                        alert("회원정보 에러입니다.");
                        break;
                    case Chunjae.Auth.Status.AUTH_TIMEOUT:
                        alert("잘못된 아이디 또는 비밀번호를 입력하셨습니다. 60초 후에 다시 로그인을 진행해주세요.");
                        break;
                    case Chunjae.Auth.Status.AUTH_STUDENT:
                        alert("우리반T셀파 학생 로그인을 이용해주세요.");
                        location.href = 'https://class.tsherpa.co.kr/';
                        break;
                    default:
                        alert("정보를 불러오는데 문제가 발생하였습니다.\n다시 시도해주세요.");
                        break;
                }
            },
            error: function (e) {
                console.error(e);
            }
        });
        if ($("input:checkbox[id='rememberUserId']").checked) {
            Storages.localStorage.set('loginuserid', id);
        } else {
            Storages.localStorage.remove('loginuserid');
        }
    }

    $(function () {
        document.querySelector(".btn_login").addEventListener("click", function() {
            login();
        });
        // 로그인 이벤트 추가
        document.querySelector("input[name=q_password]").addEventListener("keypress", function(e) {
            if (e.keyCode == 13) {
                login();
            }
        });
        let userid = Storages.localStorage.get('loginuserid');
        let $form = $('form[name="q_loginForm"]');
        if (userid) {
            $("input[name='q_username']", $form).val(userid);
            $("input:checkbox[id='rememberUserId']").checked = true;
        }
        $form.submit(function (e) {
            e.preventDefault();
            login(e);
        });
    });
</script>
<form action="" id="searchHeaderForm" method="get" name="searchHeaderForm" target="_blank">
    <input id="q" name="q" type="hidden" value="">
    <input id="fromSiteType" name="fromSiteType" type="hidden" value="midhigh">
    </form>
<script>
    let _findUrl = 'https://www.tsherpa.co.kr/';
    let _keyword = '';
    let _section = '';
    let _keywordForm = document.querySelector("#keywordForm");
    let _searchForm = document.querySelector("#searchHeaderForm");

    // 검색 전송
    function doSearch() {
        alert('로그인 후에 이용할수 있는 서비스입니다.');
        $("input[name='q_username']").focus();
        return false;
    }

    function press() {
        if (event.keyCode == 13) {
            if ($(_keywordForm).find("#keyword").value) {
                doSearch();
            }
        }
    }

    document.querySelector("#searchButton").addEventListener("click", function() {
        doSearch();
    });
</script>
<div id="tDvdModalDiv"></div>
<script>
    function openTShareCommonUrl(url) {
        if (!checkUserLoggedIn()) {
            return;
        }
        location.href = url;
    }

    // 교사용 DVD
    function openBookDVD(code) {
        if (!checkUserLoggedIn()) {
            return;
        }
        if (!CEMember()) {
            alert("중,고등 정회원만 서비스를 이용하실 수 있습니다.");
            return;
        }
        let schoolType = 'mid';
        let param = new URLSearchParams({tBook: code, type: schoolType, name: '', year: '2015'});
        front.loading.showLoading();
        document.querySelector("#tDvdModalDiv").load("/modal/tDVD.html?" + param.toString(), function () {
            document.querySelector("#tDvdPopup").modal('show');
            front.loading.hideLoading();
        });
    }
</script>
<!--header-->
<main class="testbank_body">
    <div class="content-section">
        <!-- 230823 추가 -->
        <div class="content-section__header">
            <h2>문제은행<img alt="베타" class="beta-i" src="<%= request.getContextPath() %>/resources/images/sub00img/beta_i-f7ae6ae47c2dcc68e854e20db7a7e1a4.png"/></h2>
            <p>문제출제, 시험지 편집까지! 편리하게 시험지 제작 서비스를 제공합니다.</p>
        </div>
        <!-- // 230823 추가 -->
        <div class="columns">
            <div class="data-body">
                <div class="data-details__content">
                    <div class="tabs">
                        <!-- 중등 고등, 수능, 시험지 보관함 탭 -->
                        <ul class="tabs__list tabs__list--3">
                            <li class="tabs__item">
                                <a class="tabs__link tabs__link--on" href="testbank.html?cateCode=M-TestBank">중학</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=H-TestBank">고등</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=TestBank-Storage">시험지 보관함</a>
                            </li>
                        </ul>
                        <!-- // 중등 고등, 수능, 시험지 보관함 탭 -->
                        <!-- 과목 카테고리 탭 -->
                        <ul class="tabs__list tabs__list--4">
                            <li class="tabs__item">
                                <a class="tabs__link tabs__link--on" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-ko&amp;testbankYN=Y">국어</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-eng&amp;testbankYN=Y">영어</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-math&amp;testbankYN=Y">수학</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-society&amp;testbankYN=Y">사회</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-history&amp;testbankYN=Y">역사</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-morality&amp;testbankYN=Y">도덕</a>
                            </li>
                            <li class="tabs__item">
                                <a class="tabs__link" href="testbank.html?cateCode=M-TestBank&amp;subjectCode=M-testBank-science&amp;testbankYN=Y">과학</a>
                            </li>
                        </ul>
                        <!-- // 과목 카테고리 탭 -->
                    </div>
                    <!-- // 상단 메인,세부 카테고리 탭 메뉴 --> <!-- 상단 메인,세부 카테고리 탭 메뉴 -->
                    <!-- 즐겨찾는 교과서  -->
                    <div class="tb-container tb-bookmark" style="display: none;">
                        <form action="bookmark_data.html" id="bookmarkListForm" method="get" onsubmit="return false;"></form>
                        <h2 class="tb-container__header">
                            즐겨찾는 교과서
                        </h2>
                        <div class="tb-container__body">
                            <div class="columns" id="divBookmarkList"></div>
                        </div>
                    </div>
                    <!-- //즐겨찾는 교과서  -->
                    <!-- 평가자료 다운 팝업 -->
                    <div aria-modal="true" class="modal fade" id="subjectPopup" role="dialog" tabindex="-1">
                        <form action="exam_data.html" id="examDataListForm" method="get" onsubmit="return false;">
                            <input id="examCateId" name="examCateId" type="hidden" value=""/>
                        </form>
                        <div class="modal-dialog-centered modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="modal-title">평가자료 다운로드</div>
                                    <a aria-label="Close" class="close" data-dismiss="modal">
                                        <img alt="닫기버튼" aria-hidden="true" src="<%= request.getContextPath() %>/resources/images/sub00img/btn-close-big-white-e3f31666f5dec9709719f4ffa2a1bea7.png">
                                        </img></a>
                                </div>
                                <div class="modal-body evalData_download-popup">
                                    <div class="category-line">
                                        <p class="loc">
                                            <span id="sp_lTitle"></span>
                                            <span id="sp_mTitle"></span>
                                            <span id="sp_sTitle"></span>
                                        </p>
                                    </div>
                                    <div class="inner">
                                        <div class="pop_title">
                                            <p>총<span id="sp_totalCnt">0</span>개</p>
                                            <a class="btn btn-gray" href="javascript:;" onclick="checkContentAll()"><span class="name">전체 선택</span></a>
                                        </div>
                                        <div class="table_wrapper">
                                            <table class="table text-align-center flat-row">
                                                <colgroup>
                                                    <col style="width:60px;"/>
                                                    <col style="width:73px;"/>
                                                    <col style="width:auto;"/>
                                                    <col style="width:140px;"/>
                                                </colgroup>
                                                <tbody id="examList"></tbody>
                                            </table>
                                        </div>
                                        <div class="bot_btncase mt20">
                                            <p>선택한 학습자료<span id="sp_examData">0</span>개</p>
                                            <a class="btn btn-gray" href="javascript:;" onclick="allDownload()"><span class="name">다운로드</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 평가자료 다운 팝업 -->
                    <!-- 교과서 목록 -->
                    <div class="tb-container tb-list">
                        <h2 class="tb-container__header">
                            2022 개정 교육과정
                        </h2>
                        <div class="tb-container__body">
                            <div class="columns">
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_830715" onclick="delBookmark('M-testBank-ko_01_11', 830715);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_830715" onclick="addBookmark('M-testBank-ko_01_11','Y', 830715);"><span class="ir_su">즐겨찾기 등록</span></a>
                                        <mark>NEW</mark>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//00_교과서홍보관_중학/표지/01_국어/중등국어1-1(노미숙)_표1.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-1 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('5757');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_830985" onclick="delBookmark('M-testBank-ko_03_11', 830985);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_830985" onclick="addBookmark('M-testBank-ko_03_11','Y', 830985);"><span class="ir_su">즐겨찾기 등록</span></a>
                                        <mark>NEW</mark>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//00_교과서홍보관_중학/표지/01_국어/A-중등 국어1-1_1-2(정호웅)_1.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-1 (정호웅)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('5756');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                            </div>
                        </div>
                    </div>
                    <!-- // 교과서 목록  -->
                    <!-- 교과서 목록 -->
                    <div class="tb-container tb-list">
                        <h2 class="tb-container__header">
                            2015 개정 교육과정
                        </h2>
                        <div class="tb-container__body">
                            <div class="columns">
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611500" onclick="delBookmark('M-testBank-ko_01_01', 611500);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611500" onclick="addBookmark('M-testBank-ko_01_01','Y', 611500);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-02-03.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-1 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1154');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611501" onclick="delBookmark('M-testBank-ko_01_02', 611501);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611501" onclick="addBookmark('M-testBank-ko_01_02','Y', 611501);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-02-04.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-2 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1155');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611502" onclick="delBookmark('M-testBank-ko_01_03', 611502);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611502" onclick="addBookmark('M-testBank-ko_01_03','Y', 611502);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/15개정_(중)국어(노미숙)_2-1.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 2-1 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1156');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611503" onclick="delBookmark('M-testBank-ko_01_04', 611503);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611503" onclick="addBookmark('M-testBank-ko_01_04','Y', 611503);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/15개정_(중)국어(노미숙)_2-2.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 2-2 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1157');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611504" onclick="delBookmark('M-testBank-ko_01_05', 611504);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611504" onclick="addBookmark('M-testBank-ko_01_05','Y', 611504);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중 바꿀 썸네일/중 국어 3-1.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 3-1 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1158');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611505" onclick="delBookmark('M-testBank-ko_01_06', 611505);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611505" onclick="addBookmark('M-testBank-ko_01_06','Y', 611505);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/(15개정)(노)중학_국어3-2_교과서.jpg">
                                                </img></figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 3-2 (노미숙)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1159');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611506" onclick="delBookmark('M-testBank-ko_02_01', 611506);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611506" onclick="addBookmark('M-testBank-ko_02_01','Y', 611506);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-03-01.jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-1 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1198');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611507" onclick="delBookmark('M-testBank-ko_02_02', 611507);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611507" onclick="addBookmark('M-testBank-ko_02_02','Y', 611507);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-03-02.jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 1-2 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1199');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611508" onclick="delBookmark('M-testBank-ko_02_03', 611508);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611508" onclick="addBookmark('M-testBank-ko_02_03','Y', 611508);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-03-03.jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 2-1 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1200');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611509" onclick="delBookmark('M-testBank-ko_02_04', 611509);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611509" onclick="addBookmark('M-testBank-ko_02_04','Y', 611509);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/15개정_(중)국어2-2(박영목)교과서.jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 2-2 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1201');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611510" onclick="delBookmark('M-testBank-ko_02_05', 611510);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611510" onclick="addBookmark('M-testBank-ko_02_05','Y', 611510);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/A8-C2-KK-KK-03-05.jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 3-1 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1202');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                                <!-- item -->
                                <div class="item">
                                    <div class="item-mark">
                                        <a class="tooltip-mark add-bookmark" href="javascript:;" id="add_611511" onclick="delBookmark('M-testBank-ko_02_06', 611511);" style="display: none;"><span class="ir_su">즐겨찾기 삭제</span></a>
                                        <a class="tooltip-mark" href="javascript:;" id="del_611511" onclick="addBookmark('M-testBank-ko_02_06','Y', 611511);"><span class="ir_su">즐겨찾기 등록</span></a>
                                    </div>
                                    <div class="item-content">
                                        <div class="item-image">
                                            <figure class="image is-thumnail">
                                                <img alt="교과서 이미지" src="//cdata2.tsherpa.co.kr/tsherpa//중학표지/15개정(중)국어3-2(박영목)교과서표1(4).jpg"/>
                                            </figure>
                                        </div>
                                        <div class="item-info">
                                            <p class="data_title">국어 3-2 (박영목)</p>
                                            <div class="data_buttons">
                                                <a class="button" href="javascript:;" onclick="customExamPopup('1203');" title="새창 열림">
                                                    <i class="icon icon-memo-center"></i>시험지 만들기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- // item -->
                            </div>
                        </div>
                    </div>
                    <!-- // 교과서 목록  -->
                    <script>
                        $(function(){
                            getBookmark();
                        });

                        function downloadContents(ids) {
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }
                            if (ids.length === 0 || ids === undefined) {
                                alert("선택한 항목이 없습니다.");
                                return false;
                            }
                            openHiddenFrame("/common/download_files.html?ids=" + ids);
                        }

                        function checkContentAll(){
                            let list =document.querySelector("input[name=examData]:checked");
                            let checkCnt=0;
                            if(list.length > 0) {
                                document.querySelector('input[type="checkbox"][name="examData"]').each(function () {
                                    $(this).checked = false;
                                });
                            } else {
                                document.querySelector('input[type="checkbox"][name="examData"]').each(function () {
                                    $(this).checked = true;
                                    checkCnt++;
                                });
                            }

                            document.querySelector("#sp_examData").html(checkCnt);
                        }

                        function checkContent(){
                            let checkCnt=0;
                            document.querySelector('input[type="checkbox"][name="examData"]').each(function () {
                                if($(this).prop("checked")) {
                                    checkCnt++;
                                }
                            });
                            document.querySelector("#sp_examData").html(checkCnt);
                        }

                        function allDownload(){
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }
                            let ids=[];
                            document.querySelector('input[type="checkbox"][name="examData"]').each(function () {
                                if($(this).prop("checked")) {
                                    ids.push($(this).value);
                                }
                            });
                            downloadContents(ids);
                        }

                    </script>
                    <script>
                        //즐겨찾는 교과서
                        function getBookmark(){
                            callAjax('bookmarkListForm', function(data){
                                try {
                                    let result = JSON.parse(data);
                                    let totalCnt = Number(result['totCnt'])||0;
                                    let bookmarkList = result['list']||[];
                                    document.querySelector("#divBookmarkList").empty();
                                    if(totalCnt>0) {
                                        bookmarkList.forEach(function (item, index) {
                                            console.log(item);
                                            let tmpHtml = "";
                                            if (item.subjectId > 1135) {
                                                tmpHtml = '<a href="javascript:;" onclick="customExamPopup(' + item.subjectId + ');" title="새창 열림" class="button"><i class="icon icon-memo-center"></i>시험지 만들기</a>';
                                            }
                                            let newHtml="";
                                            if(item.newYN ==="Y"){
                                                newHtml = '<mark>NEW</mark>';
                                            }

                                            document.querySelector("#divBookmarkList").append(
                                                '<div class="item">' +
                                                '    <div class="item-mark">' +
                                                '        <a href="javascript:;" onclick="delBookmark(\'' + item.testbookCode + '\', ' + item.cateId + ');" class="tooltip-mark add-bookmark"><span class="ir_su">즐겨찾기 삭제</span></a>' +
                                                '        ' + newHtml +
                                                '    </div>' +
                                                '    <div class="item-content">' +
                                                '        <!-- 썸네일 -->' +
                                                '        <div class="item-image">' +
                                                '            <figure class="image is-thumnail">' +
                                                '                <img src="' + item.cover + '" alt="교과서 이미지" />' +
                                                '            </figure>' +
                                                '        </div>' +
                                                '        <div class="item-info">' +
                                                '            <p class="data_title">' + item.title + '</p>' +
                                                '            <div class="data_buttons">' +
                                                '                ' + tmpHtml +
                                                '            </div>' +
                                                '        </div>' +
                                                '    </div>' +
                                                '</div>'
                                            );
                                        });
                                        document.querySelector(".tb-container.tb-bookmark").style.display = "block";
                                    } else {
                                        document.querySelector(".tb-container.tb-bookmark").style.display = "none";
                                    }
                                }catch (e){
                                    console.log(e);
                                }
                            });
                        }

                        //평가자료 팝업
                        function getExam(id){
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }

                            document.querySelector("#examCateId").val(id);
                            callAjax('examDataListForm', function (data) {
                                try {
                                    let result = JSON.parse(data);
                                    let examList = [];
                                    let totalCnt = Number(result['totCnt']);

                                    if(totalCnt>0) {
                                        examList = result['list'];

                                        document.querySelector("#sp_totalCnt").html(totalCnt);
                                        document.querySelector("#sp_lTitle").html(result['lTitle']);
                                        document.querySelector("#sp_mTitle").html(result['mTitle']);
                                        document.querySelector("#sp_sTitle").html(result['sTitle']);

                                        document.querySelector("#examList").empty();
                                        examList.forEach(function(item, index) {
                                            document.querySelector("#examList").append(
                                                '<tr>'+
                                                '    <td>'+
                                                '        <div class="custom-control custom-checkbox no-label">'+
                                                '           <input type="checkbox" class="custom-control-input" name="examData" id="check_'+item.id+'" value="'+item.id+'" onclick="checkContent();">'+
                                                '           <label class="custom-control-label" for="check_'+item.id+'"></label>'+
                                                '        </div>'+
                                                '    </td>'+
                                                '    <td><span class="point_colum">'+item.type+'</span></td>'+
                                                '    <td>'+item.title+'</td>'+
                                                '    <td>'+
                                                '        <a href="javascript:;" onclick="downloadContents('+item.id+')" class="btn btn-gray">'+
                                                '            <i class="icon icon-download"></i><span class="name">다운로드</span>'+
                                                '        </a>'+
                                                '    </td>'+
                                                '</tr>'
                                            );
                                        });

                                        document.querySelector("#subjectPopup").modal('show');
                                    } else {
                                        alert("등록된 자료가 없습니다.");
                                    }
                                } catch (e) {
                                    console.log(e);
                                }
                            });
                        }

                        //즐겨찾기 추가
                        function addBookmark(testbookCode, testbankYN, cateId) {
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }

                            let data = {
                                testbookCode: testbookCode.toString(),
                                testbankYN: testbankYN.toString()
                            };

                            $.ajax({
                                type: 'post',
                                url: '/pinTestbook/add',
                                data: data,
                                dataType: 'json',
                                cache: false,
                                async: false,
                                success: function (response) {
                                    let result = response.success;
                                    if(result){
                                        alert("즐겨찾는 교재로\n등록되었습니다.");
                                        getBookmark();
                                        $("#add_"+cateId).style.display = "block";
                                        $("#del_"+cateId).style.display = "none";
                                    }
                                },
                                error: function (request, status, error) {
                                    console.error(request, status, error);
                                }
                            });
                        }

                        //즐겨찾기 삭제
                        function delBookmark(testbookCode, cateId){
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }

                            let data = {testbookCode: testbookCode.toString()};
                            $.ajax({
                                type: 'post',
                                url: '/pinTestbook/delete',
                                data: data,
                                dataType: 'json',
                                cache: false,
                                async: false,
                                success: function (response) {
                                    let result = response.success;
                                    if(result){
                                        alert("즐겨찾는 교재에서\n삭제되었습니다.");
                                        getBookmark();
                                        $("#add_"+cateId).style.display = "none";
                                        $("#del_"+cateId).style.display = "block";
                                    }
                                },
                                error: function (request, status, error) {
                                    console.error(request, status, error);
                                }
                            });
                        }

                        function customExamPopup(subjectId) {
                            if (!checkUserLoggedIn(location.href)) {
                                return false;
                            }
                            //새창으로 열기
                            let pop_title = "win_pop";
                            let url = 'https://testbank.tsherpa.co.kr/customExam/step0';

                            window.open("",pop_title,'width=1400,height=1024,status=no,toolbar=no,scrollbars=no, left=500, top=0');

                            //form
                            let new_form = document.createElement("form");
                            new_form.attr("name", "new_form");
                            new_form.attr("charset", "UTF-8");
                            new_form.attr("method", "post");
                            new_form.attr("action", url);
                            new_form.attr("target", pop_title);

                            //step0 세팅지 리스트를 위한 교재정보 - 문항통합에서 교재정보 컬럼명 = subjectId
                            new_form.append($('<input/>', {type: 'hidden', name: 'subjectId', value: subjectId}));

                            new_form.appendTo('body');
                            new_form.submit();
                        }
                    </script> </div>
                <!-- ‘T셀파 교수자료 무단 배포 주의사항 안내’ 노출 화면 -->
                <div class="middle-wrapper">
                    <div class="caution-box">
                        <p class="caution1">
                            T셀파 교수자료 무단 배포 주의사항 안내 드립니다.
                        </p>
                        <p class="caution2">
                            소중한 T셀파의 교수자료가 무단 배포 및 유출되지 않도록 선생님들의 적극적인 협조 부탁드립니다.<br/>
                            자료 유출로 인한 어려움을 겪지 않도록 선생님들께 간곡한 부탁드립니다.<br/>
                            학교에서 연구 목적 또는 수업 시에만 활용해 주세요.
                        </p>
                        <p class="caution3">
                            T셀파의 교수자료의 저작권은 (주)천재교육에 있으며, 당사의 허락 없이 무단으로 이를 유출하거나<br/>
                            무단으로 타 사이트에 게재하는 경우 저작권법에 위배됩니다. T셀파의 교수자료의 저작권은 (주)천재교육에 있으며, 당사의 허락 없이 무단으로 이를
                            유출하거나<br/>
                            무단으로 타 사이트에 게재하는 경우 저작권법에 위배됩니다.
                        </p>
                        <a class="btn btn-secondary btn-icon" href="#" onclick="$('#unitSelect').modal('show')">
                            <span class="name">유출 사례보기</span><i class="icon icon-arrow-right-white"></i>
                        </a>
                    </div>
                </div>
                <!--// ‘T셀파 교수자료 무단 배포 주의사항 안내’ 노출 화면 -->
            </div>
        </div>
    </div>
</main>
<!--footer-->
<div class="footer">
    <div class="service_wrap">
        <div class="service_inner">
            <div class="information">
                <p><span class="info">T셀파 이용문의 1577-7609</span><span>(평일 09:00~17:30)</span></p>
                <p class="ml30"><span class="info">AI 디지털교과서 공동 CS센터 1661-0777</span></p>
            </div>
            <div class="utility clearfix">
                <div class="util_box">
                    <span><a href="https://www.tsherpa.co.kr/center/M-mainservicM.html" target="_blank">이용안내</a></span>
                    <span><a href="https://www.tsherpa.co.kr/center/M-qna-list.html" target="_blank">자주 묻는 질문</a></span>
                    <span><a href="https://www.tsherpa.co.kr/center/M-inquiry.html" target="_blank">1:1 문의</a></span>
                </div>
                <div class="icon_box">
                    <a class="kakao" href="https://pf.kakao.com/_xlxhDrT" target="_blank"></a>
                    <a class="instagram" href="https://www.instagram.com/tsherpa_official/" target="_blank"></a>
                    <a class="facebook" href="https://www.facebook.com/T%EC%85%80%ED%8C%8C-315305932501668/" target="_blank"></a>
                    <a class="blog" href="https://blog.naver.com/tsherpabyus" target="_blank"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="site_wrap clearfix">
        <div class="site_inner">
            <div class="terms_box">
                <span><a href="https://www.chunjae.co.kr/#/main" target="_blank">천재교육</a></span>
                <span><a href="https://chunjaetext.co.kr" target="_blank">천재교과서</a></span>
                <span><a href="https://pass.chunjae.co.kr/#/policy?site=6&amp;tab=1" target="_blank">이용약관</a></span>
                <span><a class="point" href="https://pass.chunjae.co.kr/#/policy?site=6&amp;tab=2" target="_blank">개인정보처리방침</a></span>
                <span><a href="https://www.tsherpa.co.kr/center/M-noticM.html" target="_blank">고객센터</a></span>
            </div>
            <div class="select_box">
                <select class="form-control" onchange="if(this.value) window.open(this.value);" title="패밀리 사이트 선택">
                    <option selected="" value="">패밀리 사이트</option>
                    <option value="https://www.chunjae.co.kr/#/main">천재교육</option>
                    <option value="http://www.milkt.co.kr/Main/Main_v4">밀크티 초등</option>
                    <option value="http://mid.milkt.co.kr/">밀크티 중학</option>
                    <option value="https://hme.chunjae.co.kr/">HME 전국 해법수학 학력평가</option>
                    <option value="https://mall.chunjae.co.kr/">천재교육 쇼핑몰</option>
                </select>
            </div>
        </div>
    </div>
    <div class="info_wrap clearfix">
        <div class="box">
            <div class="logo"><img alt="천재교육 로고" src="<%= request.getContextPath() %>/resources/images/sub00img/bg-footer-logo-education-284061740116f6af660a85b14d649951.png"/></div>
            <div class="text">
                <p>대표 : 강희철, 최정민</p>
                <p>주소 : 서울시 금천구 가산로 9길 54</p>
                <p>사업자 등록번호 : 119 - 81 - 19350</p>
                <p>부가통신사업신고번호 : 016712</p>
            </div>
        </div>
        <div class="box">
            <div class="logo"><img alt="천재교과서 로고" src="<%= request.getContextPath() %>/resources/images/sub00img/bg-footer-logo-textbook-2f9f6b39e3e2fd4c2ab8b23513ae5f1f.png"/></div>
            <div class="text">
                <p>대표 : 박정과, 임형진</p>
                <p>주소 : 서울특별시 금천구 가산디지털1로 16, 2011호(가산동)</p>
                <p>사업자 등록번호 : 119 - 81 - 70643</p>
            </div>
        </div>
        <div class="box">
            <div class="logo"><img alt="isms 로고" src="<%= request.getContextPath() %>/resources/images/sub00img/bg-footer-logo-isms-d8fceb962d9c2222fecb1617a485d981.png"/></div>
            <div class="text">
                <p>인증범위 - 온라인 교육 및 학습지원 서비스 운영</p>
                <p>인증기간 - 2023년 3월 25일 ~ 2026년 3월 24일</p>
            </div>
            <p class="copy">copyright© 2021 by chunjae co.ltd all rights reserved.</p>
        </div>
    </div>
</div>
<!--//footer-->
<style>
    .loading {
        position: fixed;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        display: none;
        z-index: 200;
        background: rgba(0, 0, 0, 0.6);
    }
    .loading > img {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }
</style>
<div class="loading _loading" id="loading-ani" style="user-select: none;">
    <img alt="로딩중" src="<%= request.getContextPath() %>/resources/images/sub00img/loading-e4d6cd210aee8eb578c222de3977cd08.gif"/>
</div>
<div id="recentlyVideoModalDiv"></div>
<div id="modalDiv"></div>
<div id="copyrightModalDiv"></div>
<div id="teachingBoardUploadDiv"></div>
<div id="certModalFooterDiv"></div><!-- 공통 인증 modal  -->
<div id="memberChangeModal"></div>
<div id="changeCompletion"></div>
<iframe id="hiddenFrame" name="hiddenFrame" style="visibility: hidden;position: absolute; left: 0; top: 0; height:0; width:0; border: none;"></iframe>
<iframe id="ssoHiddenFrame" name="ssoHiddenFrame" src="https://e.tsherpa.co.kr/sso/check_sso.aspx" style="visibility: hidden;position: absolute; left: 0; top: 0; height:0; width:0; border: none;"></iframe>
<script src="https://wcs.naver.net/wcslog.js"></script>
<script>
    if (!wcs_add) var wcs_add = {};
    wcs_add["wa"] = "s_4abbf5d29ccc";
    if (!_nasa) var _nasa = {};
    if (window.wcs) {
        wcs.inflow();
        wcs_do(_nasa);
    }
</script>
<div aria-modal="true" class="modal fade" id="unitSelect" role="dialog" tabindex="-1">
    <div class="modal-dialog-centered modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">교수자료 유출 사례</div>
                <a aria-label="Close" class="close" data-dismiss="modal">
                    <img alt="닫기버튼" aria-hidden="true" src="<%= request.getContextPath() %>/resources/images/sub00img/btn-close-big-white-e3f31666f5dec9709719f4ffa2a1bea7.png">
                    </img></a>
            </div>
            <div class="modal-body evaluation_case">
                <div class="section_case_wrap">
                    <p>T셀파의 교수자료는 천재교육의 소중한 자산입니다.</p>
                    <p>자료 유출로 인한 어려움을 겪지 않도록 선생님들께 부탁 드리며, 교수자료의 유출사례들을 소개드립니다.</p>
                </div>
                <ul class="section_number_wrap">
                    <li><span class="num">1</span><span class="d-block sub_title bold">T셀파 정회원으로 선생님들께서 지인분들(학부모, 학원강사)에게 유출하시거나 아이디/비밀번호를 공유하여 사용하시는 경우</span></li>
                    <li><span class="num">2</span><span class="d-block sub_title bold">학생들이 평가지를 학원에 가지고 가서 공유하는 경우</span></li>
                    <li><span class="num">3</span><span class="d-block sub_title bold">카페, 블로그, 학교 홈페이지 등 인터넷에 무단으로 업로드하는 경우</span></li>
                    <li><span class="num">4</span><span class="d-block sub_title bold">본인이 아닌, 다른 분들에게 아이디/비밀번호를 공유하는 경우</span></li>
                    <li class="info"><span>* 안전한 개인정보 보호를 위해 주기적으로 비밀번호를 변경하시는 것을 권장해 드립니다.</span></li>
                    <li class="info"><span>* 공공장소 (PC방, 학교 공용 컴퓨터실) 등에서 사용을 자제하여 주십시오.</span></li>
                </ul>
                <div class="section_info_wrap">
                    <p>T셀파의 교수자료의 저작권은 (주)천재교육에 있으므로, 무단으로 이를 유출하거나 타 사이트에 게재하지 않도록 선생님들의 적극적인 협조 부탁드립니다.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>