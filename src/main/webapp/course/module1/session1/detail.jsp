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
            <h5><img width="30" height="30" src="https://img.icons8.com/stencil/32/classroom.png" alt="classroom" class="mx-2"/>Mã giả và lưu đồ</h5>
            <ul style="list-style-type: none">
              <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=practice1">[Thực hành] Thuật toán chuyển đổi nhiệt độ</a></li>
               <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-practice-athletics-flaticons-lineal-color-flat-icons-3.png" alt="external-practice-athletics-flaticons-lineal-color-flat-icons-3"/><a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=practice1">[Thực hành] Thuật toán game đoán số</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/> <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=excercise1">[Bài tập] Mô tả thuật toán tính điểm trung bình</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/> <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=excercise2">[Bài tập] Mô tả thuật toán chuyển đổi tiền tệ</a></li>
                <li class="my-2"><img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/> <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=excercise3">[Bài tập] Mô tả thuật toán tìm giá trị lớn nhất trong 3 số</a></li>
                <li class="my-2"> <img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=excercise4">[Bài tập] Mô tả thuật toán tìm giá trị lớn nhất trong một dãy số</a></li>
                <li class="my-2"> <img width="25" height="25" src="https://img.icons8.com/dusk/64/developer.png" alt="developer"/><a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=excercise5">[Bài tập] Mô tả thuật toán có cấu trúc điều kiện</a></li>

            </ul>
        </div>
    </div>
</div>
</body>
</html>
