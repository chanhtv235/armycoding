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
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>2. Mảng và phương thức trong java</h5>
            <ul style="list-style-type: none">
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=read1">[Bài đọc] Mảng (Array) trong java</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=read2">[Bài đọc] Khai báo mảng trong java</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/64/external-reader-publication-media-inipagistudio-lineal-color-inipagistudio.png" alt="external-reader-publication-media-inipagistudio-lineal-color-inipagistudio"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=read3">[Bài đọc] Duyệt mảng trong java</a></li>

                <hr>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=practice1">[Thực hành] Đảo ngược các phần tử của mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=practice2"> [Thực hành] Tìm giá trị trong mảng </a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=practice3">[Thực hành] Tìm giá trị lớn nhất trong mảng  </a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=practice4">[Thực hành] Tìm giá trị nhỏ nhất trong mảng sử dụng phương thức </a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=practice5"> [Thực hành] Chương trình chuyển đổi nhiệt độ </a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise1">[Bài tập] Xoá phần tử khỏi mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise2">[Bài tập] Thêm phần tử vào mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise3">[Bài tập] Gộp mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise4">[Bài tập] Tìm phần tử lớn nhất trong mảng hai chiều</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise5">[Bài tập] Tìm giá trị nhỏ nhất trong mảng</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise6">[*Bài tập] Tính tổng các số ở một cột xác định</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise7">[*Bài tập] Mảng hai chiều - tính tổng các số ở đường chéo chính của ma trận vuông</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=2&session=3&fileName=excercise8">[*Bài tập] Đếm số lần xuất hiện của ký tự trong chuỗi</a></li>
         </ul>
        </div>
    </div>
</div>
</body>
</html>
