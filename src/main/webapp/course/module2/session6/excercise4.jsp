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

                <h4>[**Bài tập] Thiết kế và triển khai lớp Triangle</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế lớp đối tượng thừa kế, vẽ giản đồ UML và triển khai lớp đối tượng thừa kế.</p>
                <h5>Mô tả</h5>
                <p>Thiết kế lớp đối tượng Triangle mở rộng lớp Shape. Lớp này chứa:</p>
                <p></p>
                <p>•	Ba trường dữ liệu side1, side2, side3 có kiểu là double, với giá trị mặc định 1.0 biểu thị cho độ dài ba cạnh của một tam giác.</p>
                <p>•	Một phương thức khởi tạo không có tham số giúp tạo nên tam giác mặc định.</p>
                <p>•	Một phương thức khởi tạo tạo ra ba tham số với độ dài ba cạnh cho trước.</p>
                <p>•	Các phương thức truy cập cho ba trường dữ liệu.</p>
                <p>•	Một phương thức getArea() trả về diện tích của tam giác.</p>
                <p>•	Một phương thức getPerimeter() trả về chu vi của tam giác.</p>
                <p>•	Một phương thức toString() trả về thông tin của tam giác dưới dạng chuỗi ký tự.</p>

                <p>Vẽ lược đồ UML cho class Shape và Triangle và viết mã triển khai những class đó. Viết một chương
                    trình để kiểm thử bằng cách hỏi người dùng nhập vào độ ba cạnh và màu sắc của tam giác. Chương trình
                    phải tạo được một đối tượng Triangle với độ dài ba cạnh đã được cung cấp và đặt màu sắc cho đối
                    tượng đó như người dùng nhập vào. Chương trình phải thông báo cho người dùng màu sắc, diện tích, chu
                    vi của tam giác.</p>
                <p>Viết chương trình sử dụng các lớp đó với mục đích kiểm thử.</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Viết mã triển khai và mã kiểm thử cho lớp Shape</p>
                <p>Bước 2: Viết mã triển khai và mã kiểm thử cho lớp Triangle</p>


            </div>
        </div>
    </div>

</body>
</html>
