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
            <h4>[Bài tập] Tic tac toe</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng hai chiều</p>

            <h5>Mô tả</h5>
            <p>Phát triển một ứng dụng từ điển đơn giản. Ứng dụng cho phép tra cứu các từ tiếng Anh sang tiếng Việt.
                Danh sách các từ được lưu trữ trong các mảng.</p>
            <h5>Hướng dẫn</h5>
            <p>Xây dựng game caro đơn giản sử dụng phần thực hành về tạo bàn cờ caro. </p>
            <p>Bàn cờ thay vì số 0 hiển thị mặc định bằng dấu (.).</p>
            <p>Có 2 người chơi lần lượt nhập vào là X và O.</p>
            <p>Mỗi lần giá trị được nhập vào thì bàn cờ thay đổi giá trị theo người chơi.</p>
            <p>Xác định người chiến thằng nhập giá trị có 3 ô liên tiếp giống nhau.</p>


        </div>
    </div>
</div>
</body>
</html>
