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
        <div>
            <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>
            <h4>[*Bài tập] Tính tổng các số ở một cột xác định</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác với mảng 2 chiều</p>

            <h5>Mô tả</h5>
            <p>Viết một ứng dụng cho phép người dùng nhập vào một mảng hai chiều của các số thực, sau đó cho phép người dùng nhập vào thứ tự của một cột (tính từ 0) và tính ra tổng các phần tử của cột đó.</p>

            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> tính tổng các phần tử của một mảng có sẵn</p>
            <p>-Dùng phương pháp khởi tạo nhanh để tạo ra một mảng có sẵn các phần tử. Viết mã để hỏi người dùng muốn tính tổng của cột mấy. Tổng của một cột là tổng các phần tử có vị trí j trong định vị [][i], sử dụng vòng lặp để tính tổng các phần tử này và trả về.</p>
            <p>-Thực thi chương trình để kiểm tra kết quả, thử với một số giá trị khác nhau để xác nhận rằng chương trình chạy đúng.</p>
            <p><b>Bước 2:</b>thu thập mảng thực từ nhập liệu của người dùng và hoàn thành yêu cầu </p>
            <p>-Viết mã để thay thế mảng được tạo nhanh bằng mảng được tạo ra từ nhập liệu của người dùng. Trước tiên hỏi để biết kích thước các chiều của mảng, sau đó sử dụng vòng lặp để lần lượt hỏi từng giá trị của mảng.</p>
        </div>
    </div>
</div>
</body>
</html>
