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
                <a href="/course/module2/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Vòng lặp trong java</a>

                <h4>[Bài tập] Hiển thị 20 số nguyên tố đầu tiên</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc lặp for/while.</p>

                <h5>Mô tả</h5>

                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép hiển thị 20 số nguyên tố đầu tiên.</p>

                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Khai báo biến số nguyên numbers và nhập cho nó một giá trị từ bàn phím để lưu số lượng
                    số nguyên
                    tố cần in ra.</p>

                <p><b>Bước 2:</b> Khai báo biến count và gán cho nó giá trị 0, biến này để đếm xem số lượng lượng số
                    nguyên tố cần
                    in ra đã bằng numbers hay chưa.</p>

                <p><b>Bước 3:</b> : Khai báo biến N và gán cho giá trị 2, biến này để kiểm tra xem các giá trị nó nhận
                    được có phải
                    là số nguyên tố không, mỗi lần lặp giá trị của biến sẽ được tăng lên 1.</p>

                <p><b>Bước 4:</b> Trong khi count < numbers thì:</p>
                <p>
                    • Kiểm tra xem N có phải là số nguyên tố không. Nếu N là số nguyên tố thì in ra giá trị của N và
                    tăng giá trị
                    của count lên 1

                </p>
                <p> Giá trị của N tăng lên 1 để kiểm tra số tiếp theo</p>

            </div>
        </div>
    </div>
</body>
</html>
