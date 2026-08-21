<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container">
        <div>
            <a href="/course/module2/overview.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">[Module 2]- Java core</a>
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>9. Clean code, Mô hình MVC</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=2&session=9&fileName=read1">[Bài đọc] Mô hình MVC là gì? - Ví dụ login sử dụng mô hình MVC trong Java</a></li>

                <hr>
<%--                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="/course?module=2&session=7&fileName=practice1">[Thực hành] Lớp Animal và interface Edible</a></li>--%>


                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="#">[Bài tập ] Xây dựng ứng dụng quản lý khác hàng</a></li>


         </ul>
        </div>
    </div>
</div>
</body>
</html>
