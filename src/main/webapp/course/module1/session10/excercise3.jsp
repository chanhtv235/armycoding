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
            <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 10. Lập trình OOP</a>

            <h4>[*Bài tập] Xây dựng lớp mô tả điện thoại</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p>Viết một lớp các đối tượng điện thoại lấy tên là Mobile, mỗi một chiếc mobile phone khi được tạo ra sẽ mang những đặc điểm sau:</p>
            <p>•	Có một thông số về trạng thái pin tính bằng đơn vị số nguyên (tối đa 100 đv)</p>
            <p>•	Có một vùng nhớ dùng để lưu tin nhắn đang soạn thảo.</p>
            <p>•	Có một vùng nhớ dùng để lưu tin nhắn trong hộp thư đến.</p>
            <p>•	Có một vùng nhớ dùng để lưu tin nhắn đã gửi.</p>
            <p> •	Có chức năng kiểm tra trạng thái điện thoại bật hay tắt.</p>
            <p>•	Có chức năng bật và tắt điện thoại.</p>
            <p>•	Có chức năng xạc pin điện thoại.</p>
            <p>•	Có chức năng soạn tin nhắn.</p>
            <p>•	Có chức năng nhận tin nhắn từ một chiếc mobile khác.</p>
            <p>•	Có chức năng gửi tin nhắn tới một chiếc mobile khác.</p>
            <p>•	Có chức năng xem tin trong hộp thư đến.</p>
            <p>•	Có chức năng xem tin đã gửi.</p>
            <p>•	Sau mỗi lần sử dụng một chức năng, năng lượng pin sẽ giảm đi một đơn vị.</p>
            <p>•	Các chức năng không thể hoạt động nếu điện thoại chưa bật.</p>
            <p>Khởi tạo các đối tượng điện thoại và thực hiện kịch bản sau:</p>
            <p>•	Có một chiếc điện thoại nokia và một chiếc iphone</p>
            <p>•	Chiếc điện thoại nokia soạn tin nhắn với nội dung bất kỳ và gửi cho chiếc iphoneChiếc iphone kiểm tra inbox và hiển thị tin đó.</p>

        </div>
    </div>
</div>
</body>
</html>
