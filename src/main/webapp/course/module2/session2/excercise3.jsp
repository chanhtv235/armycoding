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

                <h4>[Bài tập] Hiển thị các số nguyên tố nhỏ hơn 100</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc lặp for/while.</p>

                <h5>Mô tả</h5>

                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép hiển thị các số nguyên tố nhỏ hơn
                    100.</p>
                <p>Số nguyên tố là một số nguyên dương chỉ chia hết cho 1 và chính nó.</p>

                <h5>Hướng dẫn</h5>
                <p>Sử dụng vòng lặp để duyệt các số từ 2 đến 100, kiểm tra xem số nào là số nguyên tố thì hiển thị ra
                    màn hình.</p>
                <p>Để kiểm tra một số có phải là số nguyên tố hay không, sử dụng thuật toán: <i><b>Với một số nguyên
                    dương A lớn hơn
                    1,
                    kiểm tra từ 2 đến căn bậc 2 của A, nếu A chia hết cho một số trong khoảng đó thì A không phải là số
                    nguyên tố,
                    ngược lại A là số nguyên tố.</b></i></p>

                <p><b>Bước 1:</b> Viết mã kiểm tra một số cho trước có phải là số nguyên tố hay không</p>

                <p><b>Bước 2:</b> Lặp lại việc kiểm tra trên từng số trong khoảng từ 2 tới 100</p>
                <p>Chạy vòng lặp trên các số từ 2 tới 100, kiểm tra mỗi trường hợp có phải là số nguyên tố không bằng mã
                    đã thực
                    hiện ở bước 1. In ra màn hình nếu gặp số nguyên tố.</p>


            </div>
        </div>
    </div>
</body>
</html>
