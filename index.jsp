<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>미니미타임</title>

    <link rel="stylesheet" href="./resource/css/common/reset.css">
    <!-- Bootstrap css-->
    <link href="./resource/css/bootstrap/bootstrap.css" rel="stylesheet" />

    <!-- swiper css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./resource/css/common/common.css">
    <link rel="stylesheet" href="./resource/css/common/header.css">
    <link rel="stylesheet" href="./resource/css/common/footer.css">

    <!-- jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <!-- Bootstrap js -->
    <!-- <script src="./resource/js/bootstrap/bootstrap.bundle.js"></script> -->
    <!-- swiper js-->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
    <!-- hedaer js -->


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {

            // header.html이 로드된 후에 menu와 gnbNav를 찾음
            let menu = document.querySelector(".menu");
            let gnbNav = document.querySelector(".gnb_nav");

            if (menu && gnbNav) {
                // 요소가 존재할 때만 addEventListener를 사용합니다.
                menu.addEventListener("click", function () {
                    if (menu.classList.contains("on")) {
                        // "on" 클래스가 있다면 gnbNav를 보이도록 설정하고 "on" 클래스를 제거합니다.
                        gnbNav.classList.add("display_none");
                        menu.classList.remove("on");
                    } else {
                        // "on" 클래스가 없다면 gnbNav를 숨기도록 설정하고 "on" 클래스를 추가합니다.
                        menu.classList.add("on");
                        gnbNav.classList.remove("display_none");
                    }
                });

                // 창 크기가 변경될 때 이벤트를 감지하여 처리
                window.addEventListener("resize", function () {
                    if (window.innerWidth > 1000) {
                        menu.classList.remove("on");
                        gnbNav.classList.remove("display_none");
                    } else {
                        if (menu.classList.contains("on")) {
                            // "on" 클래스가 있다면 gnbNav를 보이도록 설정하고 "on" 클래스를 제거합니다.
                            gnbNav.classList.remove("display_none");
                        } else {
                            // "on" 클래스가 없다면 gnbNav를 숨기도록 설정하고 "on" 클래스를 추가합니다.
                            gnbNav.classList.add("display_none");
                        }
                    }
                });

                // 창 크기가 1000 미만인 경우
                if (window.innerWidth < 1000) {
                    gnbNav.classList.add("display_none");
                }
            }
        })

        window.addEventListener('scroll', function () {
            // 현재 스크롤 위치를 가져옵니다.
            let scrollPosition = window.scrollY;
            let menu = document.querySelector(".menu");
            let gnbNav = document.querySelector(".gnb_nav_1");
            // 만약 스크롤이 100px 이상으로 내려가면 body 요소에 클래스를 추가합니다.
            if (scrollPosition > 100) {
                document.body.classList.add('scrolled');
                menu.classList.add("fixed-menu");
                gnbNav.classList.add("fixed-menu");
            } else {
                document.body.classList.remove('scrolled');
                menu.classList.remove("fixed-menu");
                gnbNav.classList.remove("fixed-menu");
            }
        });
    </script>

    <style>
        .container-box {
            padding: 0;
        }

        input:focus {
            outline: none;
        }

        .search_box {
            font-size: 15px;
            height: 38px;
            line-height: 38px;
            padding: 0 20px;
            vertical-align: top;
            border: 1px solid #e0e0e0;
            width: 240px;
            border-radius: 20px;
            color: #999;
            background: #f9f9f9;
        }

        .middle-section {
            border: 3px dotted green;
            display: flex;
            justify-content: center;
        }

        /* 공통 section-container */
        .section-container {
            max-width: 1100px;
            border: 3px dotted green;
            margin: 0 auto;
            /* display: flex; */
            /* justify-content: center; */
            padding: 50px 0;
        }

        .section1 {
            border: 3px dotted black;
            width: 1100px;
            height: 135px;
        }

        .section2 {
            border: 3px dotted black;
            width: 100%;
            height: 490px;
        }

        /* 색션컨텐츠 */
        .section2>div {
            border: 1px solid;
        }

        /* 공통 section-header1 */
        .section-header1 {
            font-size: 34px;
            font-weight: 700;
        }

        .section-header2 {
            display: flex;
            justify-content: space-between;
        }

        /* 메인 슬라이더 */
        .slider-conttainer {
            background-color: #FFF7EB;
            height: 440px;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        /* 메인 슬라이더 박스 */
        .slider-box {
            width: 1100px;
            height: 380px;
            border: 3px dotted blue;
        }

        /* slider-css */
        swiper-container {
            width: 100%;
            height: 83%;
        }

        swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid;
        }
    </style>
</head>
<div class="wrap">
    <body>
        <div class="container-fluid container-box">
            <header>
                <nav>
                    <div class="head-top">
                        <ul>
                            <li><a href="#">로그인</a></li>
                            <li><a href="#">회원가입</a></li>
                            <li><a href="#">고객센터</a></li>
                        </ul>
                    </div>
                    <div class="head-middle">
                        <h1>
                            <a href="./index.html">
                                <img src="./resource/image/logo_web.png" alt="logo_web.png" style="width: 300px;">
                            </a>
                        </h1>

                        <div>
                            <form name="frm" method="get" action="./" onsubmit="">
                                <div style="vertical-align:top; position:relative;">

                                    <input type="text" name="search_word" id="search_word" value="" class="search_box">

                                    <!-- GA4 입력을 위해 q 파라미터 추가 -->
                                    <input type="hidden" name="q" id="q" value="">
                                    <div style="position:absolute; top:2px; left:190px;">
                                        <input name="image" type="image" id="search_btn"
                                            src="./resource/image/search_btn.png" alt="검색하기" onfocus="this.blur();"
                                            style="padding: 8px;">
                                    </div>
                                </div>
                            </form>
                            <!--search_part.html-->
                        </div>
                    </div>
                    <div class="head-bottom">
                        <ul class="gnb_nav gnb_nav_1">
                            <li class="">
                                <a href="./resource/page_1/test.html">공연</a>
                            </li>
                            <li class="">
                                <a href="">전시</a>
                            </li>
                            <li class="">
                                <a href="">체험</a>
                            </li>
                            <li class="">
                                <a href="">키즈</a>
                            </li>
                            <li class="">
                                <a href="">클래스</a>
                            </li>
                            <li class="nav_divide">
                                |
                            </li>
                            <li style="padding-right:7px;">
                                <a href="#"
                                    style="color:#ff4b4b">
                                    타임세일
                                </a>
                            </li>
                            <li>
                                <a href="#"
                                    style="color:#318b14">
                                    오늘할인
                                </a>
                            </li>
                            <li class="nav_divide">
                                |
                            </li>
                            <li style="padding-right:10px;">
                                <a href="#">
                                    랭킹
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    이벤트
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!-- 반응형 메뉴 -->
                    <div class="menu">
                        <button type="button" class="btn btn-secondary">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                    d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z">
                                </path>
                            </svg>
                        </button>
                    </div>
                </nav>
            </header>

            <div class="slider-conttainer">
                <div class="slider-box">main-slider-box</div>
            </div>

            <section class="middle-section section-container1">
                <div class="section1">
                    section1
                </div>
            </section>

            <section class="section-container section-container2">
                <div class="section2">

                    <div class="section-header section-header1 ">
                        색션1
                    </div>
                    <div class="section-header section-header2">
                        <span>최근 새로 등록된 티켓🎫을 만나보세요</span>

                        <a href="#">
                            더보기 &gt;
                        </a>
                    </div>
                    <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30"
                        slides-per-view="5.5" navigation>
                        <swiper-slide>Slide 1</swiper-slide>
                        <swiper-slide>Slide 2</swiper-slide>
                        <swiper-slide>Slide 3</swiper-slide>
                        <swiper-slide>Slide 4</swiper-slide>
                        <swiper-slide>Slide 5</swiper-slide>
                        <swiper-slide>Slide 6</swiper-slide>
                        <swiper-slide>Slide 7</swiper-slide>
                        <swiper-slide>Slide 8</swiper-slide>
                        <swiper-slide>Slide 9</swiper-slide>
                    </swiper-container>
                </div>
            </section>

            <section class="section-container section-container3">
                <div class="section2">

                    <div class="section-header section-header1 ">
                        색션2
                    </div>
                    <div class="section-header section-header2">
                        <span>전문 해설사와 함께하는 도심투어🚩</span>

                        <a href="#">
                            더보기 &gt;
                        </a>
                    </div>
                    <swiper-container class="mySwiper" pagination="true" pagination-clickable="true" space-between="30"
                        slides-per-view="5.5" navigation>
                        <swiper-slide>Slide 1</swiper-slide>
                        <swiper-slide>Slide 2</swiper-slide>
                        <swiper-slide>Slide 3</swiper-slide>
                        <swiper-slide>Slide 4</swiper-slide>
                        <swiper-slide>Slide 5</swiper-slide>
                        <swiper-slide>Slide 6</swiper-slide>
                        <swiper-slide>Slide 7</swiper-slide>
                        <swiper-slide>Slide 8</swiper-slide>
                        <swiper-slide>Slide 9</swiper-slide>
                    </swiper-container>
                </div>


            </section>

            <footer>
                <div class="foot_container">
                    <div class="foot_box foot_box_1">
                        <div style="font-size:20px; font-weight:600; color:#000;">
                            <a href="#">
                                고객센터 <span style="vertical-align:1px; padding-left:3px;">&gt;</span>
                            </a>
                        </div>
                        <div style="font-size:24px; font-weight:800; color:#000; margin-top:20px;">
                            1599-3089
                        </div>
                        <div style="font-size:14px; color:#444; margin-top:7px;">
                            월-금 10:00-18:00 (주말·공휴일 휴무)
                        </div>
                        <div>
                            <img src="./resource/image/logo_web.png" style="width:140px; margin-top:57px;">
                        </div>

                    </div>
                    <div class="foot_box foot_box_2">
                        <div class="bottom_menu">
                            <a href="#">회사소개</a>
                        </div>
                        <div class="bottom_menu">
                            <a href="#">이용약관</a>
                        </div>
                        <div class="bottom_menu">
                            <a href="#">개인정보처리방침</a>
                        </div>
                        <div class="bottom_menu" style="color:#ff4b4b; font-weight:700;">
                            <a href="#">제휴문의</a>
                        </div>
                        <div class="bottom_menu" style="margin-bottom:0;">
                            <a href="#">공지사항</a>
                        </div>
                    </div>
                    <div class="foot_box foot_box_3">

                        <div class="bottom_btns">
                            <a href="#">
                                <div>🤔자주묻는질문</div>
                            </a>
                            <a href="#">
                                <div>📝1:1 문의하기</div>
                            </a>
                            <a href="#">
                                <div style="margin-right:0;">📮공지사항</div>
                            </a>
                        </div>

                        <div style="margin-top:25px; font-size:13px; color:#888; line-height:160%;">
                            (주)타임티켓&nbsp;|&nbsp;대표이사: 김성우&nbsp;|&nbsp;서울특별시 영등포구 영등포로22길 3-3, 201호<br>
                            사업자등록번호: 105-87-89446 <a href="#"
                                target="_blank"><span
                                    style="color:#666; text-decoration:underline; font-size:12px; vertical-align:1px; margin-left:2px;">사업자정보확인</span></a><br>
                            통신판매업신고: 2021-서울금천-2574<br>
                            개인정보관리책임자 : 장인범 (help@timeticket.co.kr)<br>
                            Hosting by 심플렉스인터넷(주)&nbsp;&nbsp;|&nbsp;&nbsp;Copyright @ Time Ticket All Rights Reserved
                        </div>

                    </div>
                </div>
            </footer>
        </div>
    </body>
</div>

</html>