<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<c:import url="head.jsp"></c:import>

<head>

    <style>

        /* =========================================
           BODY
        ========================================= */

        body {
            background-color: #f5f6f1;
            margin: 0;
        }


        /* =========================================
           MAIN

           Navbar đang fixed nên cần chừa khoảng
           phía trên để content không bị che
        ========================================= */

        .main {
            min-height: calc(100vh - 76px);

            margin: 0;

            padding-top: 57px;
        }


        /* =========================================
           COURSE CONTENT
        ========================================= */

        .course-container {
            width: 100%;

            padding: 20px 15px 40px 15px;
        }


        /* =========================================
           COURSE GRID

           Desktop:
           5 card trên 1 dòng
        ========================================= */

        .course-grid {

            width: 100%;

            display: grid;

            grid-template-columns:
                    repeat(5, minmax(0, 1fr));

            gap: 18px;

            align-items: stretch;
        }


        /* =========================================
           COURSE CARD
        ========================================= */

        .course-card {

            width: 100%;

            height: 260px;

            border: none;

            border-radius: 16px;

            overflow: hidden;

            background-color: #ffffff;

            position: relative;

            box-shadow:
                    0 4px 12px rgba(0, 0, 0, 0.08);

            transition:
                    transform 0.3s ease,
                    box-shadow 0.3s ease;
        }


        /* Thanh màu xanh quân đội phía trên */

        .course-card::before {

            content: "";

            position: absolute;

            top: 0;
            left: 0;

            width: 100%;
            height: 5px;

            background-color: #4B5320;

            z-index: 2;
        }


        /* =========================================
           CARD HOVER
        ========================================= */

        .course-card:hover {

            transform: translateY(-7px);

            box-shadow:
                    0 12px 25px rgba(0, 0, 0, 0.15);
        }


        /* =========================================
           IMAGE WRAPPER
        ========================================= */

        .course-image-wrapper {

            height: 125px;

            overflow: hidden;

            background-color: #f1f1f1;

            display: flex;

            align-items: center;

            justify-content: center;
        }


        /* =========================================
           IMAGE
        ========================================= */

        .course-image {

            width: 100%;

            height: 100%;

            object-fit: contain;

            padding: 10px;

            transition:
                    transform 0.4s ease;
        }


        /* Zoom ảnh khi hover */

        .course-card:hover .course-image {

            transform: scale(1.06);
        }


        /* =========================================
           CARD BODY
        ========================================= */

        .course-card .card-body {

            padding: 15px 12px;

            min-height: 145px;

            display: flex;

            flex-direction: column;

            justify-content: space-between;
        }


        /* =========================================
           COURSE TITLE
        ========================================= */

        .course-title {

            font-size: 17px;

            font-weight: 700;

            color: #4B5320;

            margin-bottom: 8px;

            letter-spacing: 0.5px;
        }


        /* =========================================
           COURSE DESCRIPTION
        ========================================= */

        .course-description {

            font-size: 13px;

            color: #666666;

            line-height: 1.4;

            min-height: 40px;

            margin-bottom: 0;
        }


        /* =========================================
           BUTTON WRAPPER
        ========================================= */

        .course-button-wrapper {

            display: flex;

            justify-content: center;

            margin-top: 10px;
        }


        /* =========================================
           GO BUTTON
        ========================================= */

        .course-button {

            width: 80%;

            border: 1px solid #4B5320 !important;

            color: #4B5320 !important;

            background-color: transparent;

            border-radius: 25px;

            font-weight: 600;

            padding: 6px 15px;

            transition:
                    all 0.3s ease;
        }


        /* =========================================
           BUTTON HOVER
        ========================================= */

        .course-button:hover {

            background-color: #4B5320 !important;

            border-color: #4B5320 !important;

            color: #ffffff !important;

            transform: scale(1.04);

            box-shadow:
                    0 5px 12px rgba(75, 83, 32, 0.3);
        }


        /* =========================================
           LAPTOP NHỎ
        ========================================= */

        @media (max-width: 1400px) {

            .course-grid {

                gap: 14px;
            }

            .course-card {

                height: 290px;
            }

            .course-title {

                font-size: 16px;
            }

            .course-description {

                font-size: 12px;
            }
        }


        /* =========================================
           TABLET

           4 card / dòng
        ========================================= */

        @media (max-width: 1199px) {

            .course-grid {

                grid-template-columns:
                        repeat(4, minmax(0, 1fr));
            }
        }


        /* =========================================
           TABLET NHỎ

           3 card / dòng
        ========================================= */

        @media (max-width: 991px) {

            .course-grid {

                grid-template-columns:
                        repeat(3, minmax(0, 1fr));
            }
        }


        /* =========================================
           MOBILE

           2 card / dòng
        ========================================= */

        @media (max-width: 767px) {

            .main {

                padding-top: 70px;
            }

            .course-grid {

                grid-template-columns:
                        repeat(2, minmax(0, 1fr));
            }

            .course-container {

                padding: 15px 10px 30px 10px;
            }
        }


        /* =========================================
           MOBILE RẤT NHỎ

           1 card / dòng
        ========================================= */

        @media (max-width: 480px) {

            .course-grid {

                grid-template-columns: 1fr;
            }

            .course-card {

                width: 100%;

                max-width: 300px;

                margin-left: auto;

                margin-right: auto;
            }
        }

    </style>

</head>


<body>


<!-- =========================================
     NAVBAR
========================================= -->

<c:import url="navbar.jsp"/>



<!-- =========================================
     MAIN
========================================= -->

<div class="row main">


    <!-- =====================================
         SIDEBAR
    ====================================== -->

    <c:if test="${sessionScope.account!=null}">

        <c:import url="sidebar.jsp"/>

    </c:if>



    <!-- =====================================
         COURSE CONTENT
    ====================================== -->

    <div class="col-lg-10 col-md-12" >

        <div class="course-container">

            <div class="course-grid" >


                <!-- =====================================
                     MODULE 1
                ====================================== -->

                <div class="card course-card">

                    <!-- IMAGE -->

                    <div class="course-image-wrapper">

                        <img
                                src="./img/logo-js.jpg"
                                class="course-image"
                                alt="JAVASCRIPT">

                    </div>


                    <!-- BODY -->

                    <div class="card-body">

                        <div>

                            <h5 class="card-title course-title text-center">
                                MODULE 1
                            </h5>

                            <p class="card-text course-description text-center">
                                LẬP TRÌNH CƠ BẢN
                            </p>

                        </div>


                        <!-- BUTTON -->

                        <div class="course-button-wrapper">

                            <c:if test="${sessionScope.account!=null}">

                                <c:if test="${sessionScope.account.role >=1}">

                                    <a
                                            href="${pageContext.request.contextPath}/course/module1/overview.jsp"
                                            class="btn btn-outline-warning btn-sm course-button">

                                        GO

                                    </a>

                                </c:if>

                            </c:if>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     MODULE 2
                ====================================== -->

                <div class="card course-card">

                    <!-- IMAGE -->

                    <div class="course-image-wrapper">

                        <img
                                src="./img/logo-java.jpg"
                                class="course-image"
                                alt="JAVA CORE">

                    </div>


                    <!-- BODY -->

                    <div class="card-body">

                        <div>

                            <h5 class="card-title course-title text-center">
                                MODULE 2
                            </h5>

                            <p class="card-text course-description text-center">
                                LẬP TRÌNH JAVA CORE
                            </p>

                        </div>


                        <!-- BUTTON -->

                        <div class="course-button-wrapper">

                            <c:if test="${sessionScope.account!=null}">

                                <c:if test="${sessionScope.account.role >=2}">

                                    <a
                                            href="${pageContext.request.contextPath}/course/module2/overview.jsp"
                                            class="btn btn-outline-warning btn-sm course-button">

                                        GO

                                    </a>

                                </c:if>

                            </c:if>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     MODULE 3
                ====================================== -->

                <div class="card course-card">

                    <!-- IMAGE -->

                    <div class="course-image-wrapper">

                        <img
                                src="img/logo-mysql.png"
                                class="course-image"
                                alt="JAVASCRIPT">

                    </div>


                    <!-- BODY -->

                    <div class="card-body">

                        <div>

                            <h5 class="card-title course-title text-center">
                                MODULE 3
                            </h5>

                            <p class="card-text course-description text-center">
                                DATABASE - JAVA WEB
                            </p>

                        </div>


                        <!-- BUTTON -->

                        <div class="course-button-wrapper">

                            <c:if test="${sessionScope.account!=null}">

                                <c:if test="${sessionScope.account.role >=3}">

                                    <a
                                            href="${pageContext.request.contextPath}/course/module3/overview.jsp"
                                            class="btn btn-outline-warning btn-sm course-button">

                                        GO

                                    </a>

                                </c:if>

                            </c:if>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     MODULE 4
                ====================================== -->

                <div class="card course-card">

                    <!-- IMAGE -->

                    <div class="course-image-wrapper">

                        <img
                                src="./img/logo-spring.png"
                                class="course-image"
                                alt="SPRING FRAMEWORK">

                    </div>


                    <!-- BODY -->

                    <div class="card-body">

                        <div>

                            <h5 class="card-title course-title text-center">
                                MODULE 4
                            </h5>

                            <p class="card-text course-description text-center">
                                JAVA - SPRING FRAMEWORK
                            </p>

                        </div>


                        <!-- BUTTON -->

                        <div class="course-button-wrapper">

                            <c:if test="${sessionScope.account!=null}">

                                <c:if test="${sessionScope.account.role >=4}">

                                    <a
                                            href="${pageContext.request.contextPath}/course/module4/overview.jsp"
                                            class="btn btn-outline-warning btn-sm course-button">

                                        GO

                                    </a>

                                </c:if>

                            </c:if>

                        </div>

                    </div>

                </div>



                <!-- =====================================
                     MODULE 5
                ====================================== -->

                <div class="card course-card">

                    <!-- IMAGE -->

                    <div class="course-image-wrapper">

                        <img
                                src="./img/logo-reactjs.png"
                                class="course-image"
                                alt="REACTJS">

                    </div>


                    <!-- BODY -->

                    <div class="card-body">

                        <div>

                            <h5 class="card-title course-title text-center">
                                MODULE 5
                            </h5>

                            <p class="card-text course-description text-center">
                                FRONT-END - REACTJS
                            </p>

                        </div>


                        <!-- BUTTON -->

                        <div class="course-button-wrapper">

                            <c:if test="${sessionScope.account!=null}">

                                <c:if test="${sessionScope.account.role >=5}">

                                    <a
                                            href="${pageContext.request.contextPath}/course/module5/overview.jsp"
                                            class="btn btn-outline-warning btn-sm course-button">

                                        GO

                                    </a>

                                </c:if>

                            </c:if>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </div>

</div>


</body>

</html>