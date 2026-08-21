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
                <a href="/course/module4/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1. Tổng quan về Spring MVC</a>

                <h4>[Bài tập] Ứng dụng Từ điển đơn giản</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo và khởi chạy ứng dụng Spring MVC.</p>

                <h5>Mô tả</h5>

                <p class="p1">- Xây dựng một trang web để tra cứu từ Anh – Việt (với các từ - nghĩa của từ cho sẵn trong
                    một mảng). Tạo trang chủ chứa một form tra cứu từ. Nếu tìm thấy từ thì hiển thị nghĩa bằng tiếng
                    việt. Nếu không tìm thấy thì hiển thị thông báo không tìm thấy.</p>

                <h5>Hướng dẫn</h5>

                <p class="p1"><b>Bước 1:</b> Tạo dự án Spring MVC </p>
                <p class="p1"><b>Bước 2:</b> Cấu hình dispatcher-servlet.xml </p>
                <p class="p1"><b>Bước 3:</b> Cấu hình web.xml </p>
                <p class="p1"><b>Bước 4:</b> Tạo Controller Tạo Controller xử lý tra cứu từ điển </p>
                <p class="p1"><b>Bước 5:</b> Tạo thư mục views bên trong thư mục WEB-INF </p>
                <p class="p1"><b>Bước 6:</b> Cấu hình Artifacts </p>
                <p class="p1"><b>Bước 7:</b> Cấu hình Tomcat </p>
                <p class="p1"><b>Bước 8:</b> Chạy ứng dụng web </p>
                <p class="p1"><b>Bước 9:</b> Truy cập đường dẫn http://localhost:8080/... và quan sát kết quả </p>
            </div>
        </div>
    </div>

</body>
</html>
