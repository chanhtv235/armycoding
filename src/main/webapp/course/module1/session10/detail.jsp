<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/overview.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning">[Module 1]- Lập trình căn bản</a>
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom"
                     class="mx-2"/>10 Lập trình OOP</h5>
            <ul style="list-style-type: none">
                <hr>
                <li class="my-2"><img width="25" height="25"
                                      src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png"
                                      alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a
                        href="${pageContext.request.contextPath}/course/module1/session10/practice1.jsp">[Thực hành] Xây dựng lớp Date</a></li>
                <li class="my-2"><img width="25" height="25"
                                      src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png"
                                      alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a
                        href="${pageContext.request.contextPath}/course/module1/session10/practice2.jsp">[Thực hành] Xây dựng lớp Hình Tròn</a></li>
                <li class="my-2"><img width="25" height="25"
                                      src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png"
                                      alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a
                        href="${pageContext.request.contextPath}/course/module1/session10/practice3.jsp">[Thực hành] Funny circles</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise1.jsp">[Bài tập] Xây
                    dựng lớp mô tả hình chữ nhật</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise2.jsp">[Bài tập] Xây
                    dựng lớp mô tả Temperature</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise3.jsp">[*Bài tập] Xây
                    dựng lớp mô tả điện thoại</a></li>
                <hr>

                <li class="my-2"><img width="25" height="25"
                                      src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png"
                                      alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a
                        href="${pageContext.request.contextPath}/course/module1/session10/practice4.jsp">[Thực hành] Xây dựng lớp mô phỏng sự hoạt động
                    của đèn pin</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise4.jsp">[Bài tập] Phát
                    triển chương trình thể hiện sự tương tác giữa hai đối tượng: công tắc và bóng đèn</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise5.jsp">[Bài tập] Phát
                    triển ứng dụng nhỏ mô phỏng câu chuyện Adam </a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png"
                                      alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session10/excercise6.jsp">[*Bài tập]
                    Phát triển ứng dụng mô phỏng lại quá trình mèo bắt chuột và ăn chuột.</a></li>

            </ul>
        </div>
    </div>
</div>
</body>
</html>
