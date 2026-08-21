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

            <h4>[Bài tập] Tạo giao diện form đăng ký người dùng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo form</p>

            <h5>Mô tả</h5>
            <p> Tạo một form đăng ký người dùng với giao diện như sau:</p>
            <img src="img/img-e3.png" style="width: 50%;">
            <p> Form này cần phải được cài đặt đúng để có thể gửi dữ liệu lên một website đã được chuẩn bị sẵn ở phía server.</p>
            <p>Trong đó:</p>
            <p>•	Dữ liệu sẽ được gửi lên địa chỉ: http://....</p>
            <p>•	Phương thức bắt buộc đó là POST</p>
            <p>•	Trường "Họ và tên" có tên là "name"</p>
            <p>•	Trường Email có tên là "email"</p>
            <p>•	Trường "Số điện thoại" có tên là "phone"</p>
            <p>•	Trường "Giới tính" có tên là "gender"</p>

        </div>
    </div>
</div>
</body>
</html>
