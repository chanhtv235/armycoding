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
                <a href="/course/module3/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDL</a>

                <h4>[Bài tập] Truy vấn dữ liệu với CSDL Quản lý sinh viên</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Sử dụng được các câu lệnh truy vấn trong MySQL</p>

                <h5>Mô tả</h5>

                <p class="p1"> Dựa vào CSDL Quản lý sinh viên đã được xây dựng trong bài thực hành trước (xem <a
                        href="/course?module=3&session=2&fileName=practice3">tại đây</a>),
                    yêu cầu viết các câu truy vấn như sau: </p>

                <p class="p2"> - Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’ </p>
                <p class="p2"> - Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12. </p>
                <p class="p2"> - Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.</p>
                <p class="p2"> - Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2. </p>
                <p class="p2"> - Hiển thị các thông tin: StudentName, SubName, Mark. </p>
                <p class="p3"> + Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. </p>
                <p class="p3"> + Nếu trùng sắp theo tên tăng dần. </p>


            </div>
        </div>
    </div>

</body>
</html>
