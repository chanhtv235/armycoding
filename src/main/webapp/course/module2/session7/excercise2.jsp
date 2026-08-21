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
                <a href="/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Abstract class và interface</a>

                <h4>[Bài tập] triển khai interface 'Colorable' cho các lớp hình học</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế và triển khai interface.</p>

                <h5>Mô tả</h5>

                <p>Sử dụng mã triển khai các lớp hình học ở <a href="https://github.com/chanhtv235/43_web_coder_m2">repository này</a> (checkout sang nhánh session7-shape để lấy source
                    code).</p>
                <p>Hãy tạo một interface Colorable với một phương thức void có tên howToColor(). Cho lớp Square
                    triển khai interface này với phương thức howToColor() hiển thị thông điệp Color all four sides..</p>
                <p>Tạo một mảng các đối tượng hình học trong đó có ít nhất một Square. Với mỗi phần tử trong mảng, hiển
                    thị diện tích của nó, nếu phần tử đó là một Colorable, gọi phương thức howToColor().</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo mã kiểm thử cho interface Colorable</p>
                <p>Bước 2: Xây dựng interface Colorable với phương thức howToColor()</p>
                <p>Bước 3: Viết mã kiểm thử cho lớp Square</p>
                <p>Bước 4: Xây dựng lớp Square triển khai interface Colorable</p>

            </div>
        </div>
    </div>

</body>
</html>
