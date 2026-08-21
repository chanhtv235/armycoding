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
            <a href="${pageContext.request.contextPath}/course/module1/overview.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">[Module 1]- Lập trình căn bản</a>
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>Tổng quan về Javascript</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read1">[Bài đọc] JavaScript là gì?</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read2">[Bài đọc] Nhúng Javascript vào html</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read3">[Bài đọc] Cú pháp trong JavaScript</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read4">[Bài đọc] Sự kiện (Event) trong JavaScript</a></li>
                 <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course/module1/session4/practice1.jsp">[Thực hành] Hiển thị đầu ra</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course/module1/session4/practice2.jsp">[Thực hành] Nhúng JavaScript</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
