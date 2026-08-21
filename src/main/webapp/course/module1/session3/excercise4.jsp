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
            <a href="${pageContext.request.contextPath}/course/module1/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 3. Form và table</a>

            <h4>[Bài tập] Tạo bảng đơn giản</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo bảng</p>
            <h5>Mô tả</h5>
            <p>Phần 1: Hãy tạo một thời khoá biểu đơn giản như sau:</p>

            <img src="img/img-e41.png" style="width: 70%;">

            <p>Phần 2: Hãy cập nhật thời khoá biểu ở phần trước để được kết quả như sau:</p>

            <img src="img/img-e42.png" style="width: 70%;">
        </div>
    </div>
</div>
</body>
</html>
