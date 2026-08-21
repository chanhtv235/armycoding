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
            <h4>[*Bài tập] Mảng hai chiều - tính tổng các số ở đường chéo chính của ma trận vuông</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác với mảng 2 chiều</p>

            <h5>Mô tả</h5>
            <p>Viết một ứng dụng cho phép người dùng nhập vào một ma trận vuông của các số thực, sau đó tính ra cho người dùng tổng của các số ở đường chéo chính.</p>
            <p>Ma trận vuông là một ma trận có chiều cao và chiều rộng bằng nhau.</p>
            <p>Đường chéo chính là tập hợp các phần tử được định vị bằng tọa độ [i][i].</p>
            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> : tính tổng các phần tử của một ma trận vuông có sẵn</p>
            <p>-Dùng một mảng hai chiều để phản ánh ma trận.</p>
            <p>-Dùng phương pháp khởi tạo nhanh để tạo ra một mảng có sẵn các phần tử. Sử dụng vòng lặp để tính tổng tất cả các phần tử có tọa độ ở hàng ngang và cột dọc bằng nhau. Thông báo cho người dùng.</p>
            <p>-Thực thi chương trình để kiểm tra kết quả, thử với một số giá trị khác nhau để xác nhận rằng chương trình chạy đúng.</p>
            <p><b>Bước 2:</b>thu thập mảng thực từ nhập liệu của người dùng và hoàn thành yêu cầu </p>
            <p>-Viết mã để thay thế mảng được tạo nhanh bằng mảng được tạo ra từ nhập liệu của người dùng. Trước tiên hỏi để biết kích thước ma trận, sau đó sử dụng vòng lặp để lần lượt hỏi từng giá trị của mảng.</p>
        </div>
    </div>
</div>
</body>
</html>
