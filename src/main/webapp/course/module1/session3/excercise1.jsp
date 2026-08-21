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

            <h4>[Bài tập] Tạo form đơn giản</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo form</p>
            <h5>Mô tả</h5>
            <p>
                Phần 1: Hãy tạo một form với các trường như sau:
            </p>
              <img src="img/img-e11.png" style="width: 50%;">
            <p>Trong đó:
            <p>•	TextBox để nhập “Họ và tên” đặt tên là: yourName </p>
            <p>•	TextBox để nhập “Email” đặt tên là: email </p>
            <p>•	Các CheckBox sở thích đặt cùng tên là: hobby </p>
            <p>•	Nút “Gửi thông tin” là nút Submit Form </p>
            <p>•	Nút “Nhập lại” là nút Reset Form </p>
            <p>•	Chú ý căn chỉnh, màu sắc và font chữ. </p>
            <p>Phần 2: Tạo một form đăng ký học viên với cấu trúc như sau: </p>
            <img src="img/img-e12.png" style="width: 50%;"><br>
            <i>Lưu ý: Đặt tên tiếng Anh phù hợp cho các trường của form.</i>
        </div>
    </div>
</div>
</body>
</html>
