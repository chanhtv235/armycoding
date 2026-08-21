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
            <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc mảng</a>
            <h4>[Bài tập] Từ điển</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng, sử dụng vòng lặp để thao tác với mảng.</p>

            <h5>Mô tả</h5>
            <p>Phát triển một ứng dụng từ điển đơn giản. Ứng dụng cho phép tra cứu các từ tiếng Anh sang tiếng Việt.
                Danh sách các từ được lưu trữ trong các mảng.</p>
            <h5>Hướng dẫn</h5>
            <p>Bước 1: Tạo một trang web với một form đơn giản cho phép người dùng nhập từ cần tìm kiếm.</p>
            <p>Bước 2: Viết mã Javascript</p>
            <p>•	Tạo 2 mảng có độ dài bằng nhau để lưu trữ danh sách các từ. Mảng 1 lưu trữ các từ tiếng Anh, mảng 2 lưu trữ các từ tiếng Việt tương ứng.</p>
            <p>•	Khi tìm kiếm, tìm vị trí của từ tiếng Anh trong mảng 1. Nếu tìm thấy thì hiển thị từ tiếng Việt ở cùng vị trí trong mảng 2.</p>
            <p>•	Nếu không tìm thấy thì hiển thị thông báo không tìm thấy.</p>

        </div>
    </div>
</div>
</body>
</html>
