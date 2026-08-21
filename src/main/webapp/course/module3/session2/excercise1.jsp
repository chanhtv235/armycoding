<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module3/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Thiết kế CSDL</a>

                <h4>[Bài tập] Chuyển đổi ERD sang mô hình quan hệ</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Chuyển đổi được mô hình ERD sang mô hình dữ liệu quan hệ</p>

                <h5>Mô tả</h5>

                <p class="p1"> Cho mô hình thực thể kết hợp sau: </p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/e1/img.png"
                     style="width:80%;">
                <p class="p1"> Từ mô hình ERD trên hãy chuyển đổi sang mô hình dữ liệu quan hệ.</p>
                <h5>Hướng dẫn</h5>
                <p class="p1"> -Bước 1: Xác định các thực thể có trong mô hình ERD </p>
                <p class="p1"> -Bước 2: Xác định các mối quan hệ 1 - 1, 1 - n, n - m giữa các thực thể để sinh ra các
                    trường, các bảng tương ứng </p>
                <p class="p1"> -Bước 3: Xác định các thuộc tính đa trị và tạo thành 1 bảng mới </p>
                <p class="p1"> -Bước 4: Liệt kê lại danh sách các bảng sau khi chuyển đổi xong </p>


            </div>
        </div>
    </div>

</body>
</html>
