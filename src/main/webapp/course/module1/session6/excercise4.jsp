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
            <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện </a>
            <h4>[*Bài tập] Game puzzle</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập xử lý các sự kiện và sử dụng cấu trúc điều kiện.</p>
            <h5>Mô tả</h5>
            <p>Hãy phát triển một game nhỏ, có tên là Puzzle với các hiệu ứng được mô tả như sau:</p>
            <p>•	Ứng dụng bao gồm các ô ảnh cho sẵn</p>
            <p>•	Khi click vào một ảnh thì chuyển sang một ảnh khác</p>
            <p>•	Nếu tất cả các ảnh ghép thành một bức tranh hoàn thiện thì có hiệu ứng thông báo.</p>
            <p> • Các Button số từ 0 đến 9</p>
            <p> • Các Button phép tính : +, -, *, /... (Bạn có thêm các phép tính khác nếu muốn)</p>
            <p> • Button "="</p>
            <h6>Mô tả các chức năng</h6>
            <p>- Người dùng thực hiện tính toán bằng cách nhấn vào button số, rồi nhấn vào button phép tính, sau đó nhấn
                vào button số. Cuối cùng người dùng nhấn vào button “=” để thực hiện tính toán.</p>
            <p>- Khi người dùng nhấn vào button “=” thì máy tính thực hiện tính toán và hiển thị kết quả.</p>

            <h5>Hướng dẫn</h5>
            <a href="http://demo.codegym.vn/8/puzzlegame/index.html">Tham khảo</a>
            <p><b>Lưu ý:</b> Không sao chép mã nguồn trong phần tham khảo, vì nó được cố ý giữ cho tệ hơn thường lệ.</p>

        </div>
    </div>
</div>
</body>
</html>
