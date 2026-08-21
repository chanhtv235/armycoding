<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=detail" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2. Git và html</a>

            <h4>[Bài tập] Tạo trang CV cá nhân</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập việc tạo trang web và sử dụng các thẻ HTML cơ bản.</p>
            <h5>Mô tả</h5>
            <p>Tạo một trang CV cá nhân bao gồm các thông tin </p>
            <p>•	Họ và tên</p>
            <p>•	Địa chỉ</p>
            <p>•	Số điện thoại</p>
            <p>•	Email</p>
            <p>•	Ảnh</p>
            <p>•	Học vấn</p>
            <p>•	Bằng cấp</p>
            <p> •	Kỹ năng</p>
            <p>•	Kinh nghiệm</p>
            <p>•	Định hướng phát triển cá nhân</p>
            <h5>Hướng dẫn</h5>
            <p>•	Sử dụng các thẻ h1, h2, h3, h4... để tạo các tiêu đề.</p>
            <p> •	Sử dụng thẻ &lt;p&gt; để tạo các đoạn văn bản.</p>
            <p> •	Sử dụng thẻ &lt;img&gt; để hiển thị ảnh.</p>
            <p>•	Sử dụng thẻ &lt;a&gt; để tạo các liên kết.
        </div>
        <div>
            <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-e2.png"
                 style="width: 100%">
        </div>

    </div>
</div>
</body>
</html>
