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
                <a href="/course/module3/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDL</a>

                <h4>[Bài tập] Luyện tập các hàm thông dụng trong SQL</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập sử dụng các hàm và câu lệnh Group By trong MySQL.</p>

                <h5>Mô tả</h5>

                <p class="p1">Sử dụng CSDL QuanLySinhVien đã được xây dựng trong các bài thực hành trước(xem <a
                        href="/course?module=3&session=2&fileName=practice3">tại đây</a>), hãy sử dụng các hàm thông
                    dụng và câu lệnh Group By để xử lý các yêu cầu sau:</p>

                <p class="p2"> • Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất. </p>
                <p class="p2"> • Hiển thị các thông tin môn học có điểm thi lớn nhất. </p>
                <p class="p2"> • Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo
                    thứ tự điểm giảm dần </p>
            </div>
        </div>
    </div>

</body>
</html>
