<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/overview.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">[Module 1]- Lập trình căn bản</a>
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>Biến, kiểu dữ liệu và toán tử</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read1">[Bài đọc] Biến trong JavaScript</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read2">[Bài đọc] Biến toàn cầu trong JavaScript</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read3">[Bài đọc] Kiểu dữ liệu trong JavaScript</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=read4">[Bài đọc]Toán tử trong JavaScript</a></li>

                <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=practice1">[Thực hành] Khai báo và sử dụng biến</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=5&fileName=practice1">[Thực hành] Sử dụng toán tử</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/> <a href="${pageContext.request.contextPath}/course/module1/session5/excercise1.jsp">[Bài tập] Biến, kiểu dữ liệu và toán tử</a></li>
                <li class="my-2"> <img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session5/excercise2.jsp">[Bài tập] Ứng dụng chuyển đổi tiền tệ</a></li>
                <li class="my-2"> <img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course/module1/session5/excercise3.jsp">[Bài tập] Ứng dụng máy tính </a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
