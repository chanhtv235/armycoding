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
                <a href="/course/module2/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4.Class và object</a>

                <h4>[Bài tập] Xây dựng lớp Fan</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập định nghĩa lớp, tạo đối tượng và sử dụng các phương thức của đối tượng.</p>

                <h5>Mô tả</h5>
                <p>Thiết kế lớp Fan to để mô tả về cái quạt.</p>

                <h5>Hướng dẫn</h5>

                <p>Lớp này gồm các thành phần sau:</p>
                <p>• 2 hằng được đặt tên là SLOW, MEDIUM, và FAST với giá trị 1, 2, và 3 để biểu thị tốc độ quạt.</p>
                <p>• Trường speed có kiểu số nguyên (private int) để xác định tốc độ quạt, mặc định là SLOW</p>
                <p>• Trường on có kiểu private boolean để xác định quạt đang bật hay tắt, mặc định là false (tắt).</p>
                <p>• Trường radius có kiểu private double để xác định bán kính quạt, giá trị mặc định là 5</p>
                <p>• Trường color có kiểu dữ liệu private String để xác định màu quạt, mặc định là blue</p>
                <p>• Các getter và setter cho các thuộc tính</p>
                <p>• Phương thức khởi tạo không tham số tạo đối tượng fan mặc định</p>
                <p>• Phương thức toString() trả về chuỗi chứa thông tin của quạt. Nếu quạt đang ở trạng thái on, phương
                    thức trả về speed, color, và radius với chuỗi “fan is on”. Nếu quạt không ở trạng thái on, phương
                    thức trả về color, radius với chuỗi “fan is off”.</p>
                <p>• Vẽ sơ đồ UML cho lớp và cài đặt lớp</p>
                <p>• Viết chương trìnhHiển thị các đối tượng bằng cách gọi phương thức toString</p>
                <p> - Tạo 2 đối tượng Fan</p>
                <p> +Đối tượng Fan 1: Gán giá trị lớn nhất cho speed, radius là 10, color là yellow và quạt ở trạng thái
                    bật.</p>
                <p> +Đối tượng Fan 2: Gán giá trị trung bình cho speed, radius là 5, color là blue và quạt ở trạng thái
                    tắt</p>


            </div>
        </div>
    </div>

</body>
</html>
