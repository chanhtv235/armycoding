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
                <a href="/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 10. Exception trong java</a>

                <h4>[Bài tập] Tạo và sử dụng lớp IllegalTriangleException</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập cách tạo một Exception từ người dùng và sử dụng try-catch để xử lý ngoại lệ.</p>

                <h5>Mô tả</h5>

                <p>Viết một ứng dụng nhập vào 3 cạnh của hình tam giác. Kiểm tra nếu giá trị nhập vào là số âm hoặc tổng
                    2 cạnh không lớn hơn cạnh còn lại thì sinh ngoại lệ.</p>
                <p>Sử dụng IllegalTriangleException để sinh lỗi khi kiểm tra tam giác.</p>
                <h5>Hướng dẫn</h5>
                <p><b>Bước 1</b>: Tạo lớp IllegalTriangleException, kế thừa từ lớp Exception và tạo constructor 1 tham số </p>
                <p><b>Bước 2</b>: Tạo lớp Triangle với 3 thuộc tính a,b,c</p>
                <p><b>Bước 3</b>: Khởi tạo constructor cho lớp Trialge với 3 tham số truyền vào </p>
                <p><b>Bước 4</b>: Trong constructor 3 tham số sử dụng cấu trúc điều kiện để kiểm tra tính hợp lệ</p>
                <p>- Điều kiện là 3 cạnh tam giác : 3 cạnh >0, và tổng 2 cạnh không nhỏ hơn 1 cạnh</p>
                <p>+ Nếu thoả mãn thì tạo giá trị cho các cạnh</p>
                <p>+ Nếu không thoả mãn thì thì throwns IllegalTriangleException </p>
                <p><b>Bước 5</b>: Tạo lớp kiểm thử, khởi tạo các đối tượng Triagle với các trường hợp khác nhau</p>

            </div>
        </div>
    </div>

</body>
</html>
