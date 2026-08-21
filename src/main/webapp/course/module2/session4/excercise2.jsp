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

                <h4>[Bài tập] Xây dựng lớp QuadraticEquation (Phương trình bậc hai)</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng lớp và đối tượng</p>

                <h5>Mô tả</h5>

                <p>Thiết kế một lớp tên là StopWatch</p>

                <h5>Hướng dẫn</h5>

                <p>Lớp này bao gồm:</p>
                <p>•	Trường startTime và endTime là private với phương thức getter để trả về giá trị của startTime và endTime.</p>
                <p>•	Phương thức khởi tạo không tham số khởi tạo startTime với thời gian hiện tại của hệ thống.</p>
                <p>•	Phương thức start() để reset startTime về thời gian hiện tại của hệ thống.</p>
                <p>•	Phương thức stop() để thiết đặt endTime về thời gian hiện tại của hệ thống.</p>
                <p>•	Phương thức getElapsedTime() trả về thời gian đã trôi qua theo số milisecond giây</p>
                <p>•	Vẽ sơ đồ UML cho lớp StopWatch và cài đặt lớp.</p>
                <p>Viết chương trình đo thời gian thực thi của thuật toán sắp xếp chọn (selection sort) cho 100,000 số.</p>

            </div>
        </div>
    </div>

</body>
</html>
