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
            <h4>[Bài tập] Tìm phần tử lớn nhất trong mảng hai chiều</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác với mảng 2 chiều</p>

            <h5>Mô tả</h5>
            <p>Viết một ứng dụng cho phép người dùng nhập vào một ma trận số thực, sau đó tìm ra tọa độ cũng như giá trị
                của phần tử lớn nhất.</p>

            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> tìm phần tử lớn nhất của ma trận có sẵn</p>
            <p>-Dùng mảng hai chiều để phản ánh ma trận.</p>
            <p>-Dùng phương pháp khởi tạo nhanh để tạo ra ma trận có sẵn các phần tử. Khai báo một biến số thực để chứa
                giá trị lớn nhất tìm kiếm được, và hai số nguyên để chứa tọa độ của giá trị lớn nhất tìm kiếm được, đặt
                cho những biến đó giá trị tương ứng của một phần tử ở tọa độ bất kỳ trong ma trận. Sử dụng vòng lặp để
                duyệt qua hết các phần tử của ma trận, cập nhật kết quả mỗi khi tìm thấy giá trị lớn hơn.</p>
            <p>-Thông báo cho người dùng kết quả tìm thấy được sau khi duyệt hết ma trận.</p>
            <p>-Thực thi chương trình để kiểm tra, thử với một số giá trị khác nhau để xác nhận rằng chương trình chạy
                đúng.</p>
            <p><b>Bước 2:</b> thu thập đầu vào thực từ nhập liệu của người dùng và hoàn thành yêu cầu</p>
            <p>Viết mã để thay thế ma trận được tạo nhanh bằng ma trận được tạo ra từ nhập liệu của người dùng. Hỏi để
                biết kích thước ma trận, sau đó sử dụng vòng lặp để lần lượt hỏi từng giá trị của ma trận.</p>
            <p></p>
            <p></p>
        </div>
    </div>
</div>
</body>
</html>
