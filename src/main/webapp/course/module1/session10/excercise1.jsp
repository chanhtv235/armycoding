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

            <h4>[Bài tập] Xây dựng lớp mô tả hình chữ nhật</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p>Viết một lớp các đối tượng hình chữ nhật lấy tên là Rectangle, mỗi hình chữ nhật đều có những đặc tính sau:</p>
            <p>+ Có thông số chiều dài (int).</p>
            <p>+ Có thông số chiều rộng (int).</p>
            <p>+ Có tính năng tính diện tích.</p>
            <p>+ Có tính năng tính chu vi.</p>
            <p>+ Có tính năng hiển thị trực quan hình chữ nhật bằng cách vẽ lên canvas</p>
            <p>Sử dụng lớp Rectangle vừa định nghĩa để viết một chương trình JavaScript  với kịch bản như sau:</p>
            <p>•	Khai báo và khởi tạo một đối tượng kiểu Rectangle.</p>
            <p>•	Hiển thị hình chữ nhật trên màn hình web</p>
            <p>•	Thay đổi chiều dài và chiều rộng của hình chữ nhật.</p>
            <p>•	In ra màn hình diện tích và chu vi của hình chữ nhật đó.</p>
            <h5>Hướng dẫn</h5>
            <p>•	Khai báo lớp Rectangle với các thuộc tính cần thiết</p>
            <p>•	Bổ sung các phương thức</p>
            <p>•	Sử dụng canvas để vẽ hình chữ nhật</p>
            <p>•	Tạo đối tượng và giao diện theo đúng kịch bản</p>



        </div>
    </div>
</div>
</body>
</html>
