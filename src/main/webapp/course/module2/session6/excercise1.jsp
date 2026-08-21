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
                <a href="/course/module2/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6.Kế thừa trong java</a>

                <h4>[Bài tập] Lớp Circle và lớp Cylinder</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập kỹ năng thiết kế lớp kế thừa, kỹ năng biểu diễn thiết kế bằng giản đồ UML, cũng như kỹ năng triển khai một bản thiết kế các lớp đối tượng.</p>

                <h5>Mô tả</h5>
                <p>Thiết kế và triển khai lớp Circle (hình tròn) và lớp con của nó Cylinder (hình trụ). Lớp Circle có những thuộc tính mô tả bán kính, màu sắc, các getter/setter cho các thuộc tính đó, và những thuộc tính liên đới như diện tích. Lớp Cylinder mở rộng lớp Circle bằng cách bổ sung thuộc tính chiều cao cũng như có thể có thêm phương thức lấy thể tích.</p>

                <p>Cả hai lớp đều phải cài đè phương thức toString để in ra thông tin chi tiết các thuộc tính của đổi tượng.</p>
                <p>Cả hai lớp đều phải cài đè phương thức toString để in ra thông tin chi tiết các thuộc tính của đổi tượng.</p>
                <p>Hãy viết mã triển khai các lớp đó THEO NHƯ BẢN VẼ ĐÃ THIẾT KẾ.</p>
                <p>Viết chương trình sử dụng tới hai lớp đối tượng kia với mục đích kiểm thử.</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Vẽ giản đồ UML</p>
                <p>Bước 2: Viết mã triển khai và mã kiểm thử cho lớp Circle</p>
                <p>Bước 3: Viết mã triển khai và mã kiểm thử cho lớp Cylinder</p>

            </div>
        </div>
    </div>

</body>
</html>
