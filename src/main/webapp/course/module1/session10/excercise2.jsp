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

            <h4>[Bài tập] Xây dựng lớp mô tả Temperature</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p>Viết một lớp các đối tượng mô tả loại dữ liệu nhiệt độ lấy tên là Temperature. Các thông số mô tả cho nhiệt độ gồm:</p>
            <p> •	Trị số tính theo đơn vị độ C (giá trị nhỏ nhất -273 độ)</p>
            <p>•	Có tính năng chuyển đổi từ độ C sang độ F.</p>
            <p>•	Có tính năng chuyển đổi từ độ C sang độ Kenvin.</p>
            <p>Sử dụng lớp vừa định nghĩa để xây dựng một chương trình JavaScript với kịch bản như sau:</p>
            <p>•	Khởi tạo một đối tượng Temperature.</p>
            <p>•	Gán giá trị độ C cho đối tượng ở nhiệt độ 25 độ.</p>
            <p>•	Hiển thị ra màn hình nhiệt độ F và độ Kenvin tương ứng.</p>
            <h5>Hướng dẫn</h5>
            <p>•	Khai báo lớp Temperature với các thuộc tính cần thiết</p>
            <p>•	Khai báo các phương thức chuyển đổi nhiệt độ</p>
            <p>•	Tạo đối tượng và thực hiện các bước theo kịch bản</p>
        </div>
    </div>
</div>
</body>
</html>
