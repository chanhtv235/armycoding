excercise1.jsp
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
            <a href="${pageContext.request.contextPath}/course/module1/session5/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning">5.Kiểu dữ liệu và toán tử</a>
            <h4>[Bài tập] Ứng dụng chuyển đổi tiền tệ</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng Javascript để xử lý dữ liệu từ các biểu mẫu.</p>
            <h5>Mô tả</h5>
            <p>Ứng dụng chuyển đổi tiền tệ cho phép tính giá trị tiền tệ giữa các đồng tiền khác nhau dựa vào một tỉ giá
                cho trước.
            </p>
            <p>Trong bài tập này, chúng ta sẽ tạo một ứng dụng chuyển đổi tiền tệ với giao diện như sau:</p>
            <img style="width: 70%" src="img/img-e2.png">
            <h6>Các bước thao tác với ứng dụng:</h6>
            <p> - 1. Lựa chọn đồng tiền gốc (chẳng hạn là Việt Nam Đồng) bằng cách chọn danh sách From Currency</p>
            <p> - 2. Lựa chọn đồng tiền muốn chuyển đổi sang (chẳng hạn là Đô-la Mỹ) bằng cách chọn từ danh sách To
                Currency</p>
            <p> - 3. Nhập vào giá trị muốn chuyển đổi ở trường Ammout</p>
            <p> - 4. Nhấn nút Convert thì kết quả sẽ hiển thị ở bên dưới.</p>
            <h5>Hướng dẫn thực hiện</h5>
            <p>Bước 1: Tạo một tài liệu HTML và dùng các thẻ &lt;form&gt;, &lt;input&gt;, &lt;select&gt; và &lt;option&gt;
                để tạo giao diện như mô tả.</p>
            <p>Bước 2: Viết một hàm để chuyển đổi tiền. Hàm này sẽ lấy các giá trị từ form và trả về giá trị sau khi đã
                chuyển đổi.</p>
            <p>Bước 3: Gọi hàm ở sự kiện click chuột của nút Convert.</p>

        </div>
    </div>
</div>
</body>
</html>
