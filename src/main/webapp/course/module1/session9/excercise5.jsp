<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>
<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 9. Hàm trong javascript</a>

            <h4>[*Bài tập] Ứng dụng quản lý sản phẩm sử dụng hàm</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng, hàm. Làm quen với khái niệm "Ứng dụng quản lý".</p>

            <h5>Mô tả</h5>
            <p> Ứng dụng quản lý sản phẩm có các chức năng sau:</p>
            <p>•	Hiển thị danh sách sản phẩm</p>
            <p>•	Có thể thêm một sản phẩm mới vào danh sách</p>
            <p>•	Có thể sửa tên của sản phẩm trong danh sách</p>
            <p>•	Có thể xoá một sản phẩm khỏi danh sách</p>
            <p><b>Bước 1:</b> Tạo một trang HTML với các thẻ cơ bản</p>
            <p><b>Bước 2:</b> Tạo một mảng chứa danh sách sản phẩm</p>
            <p><b>Bước 3:</b> Xây dựng các hàm hiển  thị danh sách sản phẩm, thêm một sản phẩm vào danh sách, sửa tên sản phẩm, xoá sản phẩm.</p>
            <p><b>Bước 4:</b>Gọi hàm hiển thị danh sách sản phẩm</p>
            <p>•	Tạo một mảng lưu trữ tên của sản phẩm</p>
            <p>•	Sử dụng vòng lặp để hiển thị danh sách sản phẩm trên một bảng. 
                Bảng này có 3 cột, cột đầu tiên là số thứ tự, cột thứ 2 là tên của sản phẩm, cột thứ 3 chứa nút để xoá sản phẩm.</p>
            <p><b>Bước 5:</b> Gọi hàm thêm một sản phẩm vào danh sách</p>
            <p>•	Tạo một form với một ô nhập tên sản phẩm và một nút "Thêm"</p>
            <p>•	Khi nhấn nút "Thêm" thì lấy tên mới nhập và đưa vào mảng.</p>
            <p>•	Hiển thị thông báo.</p>
            <p><b>Bước 6:</b> Gọi hàm sửa một sản phẩm trong danh sách</p>
            <p>•	Tạo một form với một ô để hiển thị tên danh sách và một nút "Sửa"</p>
            <p>•	Khi nhấn vào một tên của sản phẩm trong danh sách thì hiển thị tên của nó ở trong ô tên danh sách</p>
            <p>•	Sau khi sửa tên và nhấn nút "Sửa" thì cập nhật lại tên của sản phẩm đó ở trong mảng</p>
            <p><b>Bước 7:</b> Gọi hàm xoá một sản phẩm trong danh sách</p>
            <p>•	Khi nhấn vào nút "xoá" ở một sản phẩm, hãy tìm vị trí của sản phẩm đó trong danh sách</p>
            <p>•	Xoá sản phẩm đó trong danh sách</p>
            <p>•	Hiển thị lại bảng</p>
            <p>Ứng dụng có giao diện tham khảo như sau:</p>
            <img src="img/img-e5.png" style="width: 60%;">

        </div>
    </div>
</div>
</body>
</html>
