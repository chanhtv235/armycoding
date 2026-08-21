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
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>Cấu trúc Mảng</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=read1">[Bài đọc] Mảng (Array) trong JavaScript</a></li>

                <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=practice1">[Thực hành] Tạo và thao tác với mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=practice2">[Thực hành] Đảo ngược các phần tử trong mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=practice3">[Thực hành] Tìm giá trị trong mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=practice4">[Thực hành] Tìm giá trị lớn nhất trong mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=practice5">[Thực hành] Tạo bàn cờ caro đơn giản</a></li>
                <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise1">[Bài tập] Sử dụng các hàm có sẵn của mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise2">[Bài tập] Từ điển</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise5">[Bài tập] Luyện tập mảng 01</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise6">[Bài tập] Luyện tập mảng 02</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise3">[*Bài tập] Tic tac toe</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=8&fileName=excercise4">[*Bài tập] Ứng dụng vui Faking Textarea on Typing</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
