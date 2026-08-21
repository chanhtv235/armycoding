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
                <a href="/course/module4/session9/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 9. Webservice</a>

                <h4>[Bài tập] Tích hợp RESTful cho ứng dụng Blog</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập tạo RESTful API.</p>

                <h5>Mô tả</h5>
                <p class="p1">Trong phần này, chúng ta sẽ bổ sung các RESTful API cho các tính năng sau của ứng dụng Blog:</p>
                <p class="p2">•	Xem danh sách các category</p>
                <p class="p2">•	Xem danh sách các bài viết</p>
                <p class="p2">•	Xem danh sách các bài viết của một category</p>
                <p class="p2">•	Xem chi tiết một bài viết</p>

                  <h5>Hướng dẫn</h5>
                <p class="p1">-Sử dụng @RestController để viết các RESTful API. </p>



            </div>
        </div>
    </div>

</body>
</html>
