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
            <h4>[Bài tập] Ứng dụng máy tính</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập làm việc với các khái niệm cơ bản của Javascript: biến, toán tử, biểu thức, hàm và làm việc với
                form</p>
            <h5>Mô tả</h5>
            <p>Tạo một ứng dụng máy tính đơn giản để thực hiện các phép tính đơn giản. Ứng dụng sẽ có giao diện như
                sau:</p>
            <img src="img/img-e3.png" style="width: 90%;">
            <h5>Hướng dẫn thực hiện</h5>
            <p>Bước 1: Tạo một tài liệu HTML và sử dụng các thẻ &lt;form&gt;, &lt;input&gt;, &lt;button&gt; để tạo giao
                diện như yêu cầu.</p>
            <p>Bước 2: Viết 4 hàm để lấy giá trị từ form, tính toán và trả về kết quả tương ứng với 4 phép tính.</p>
            <p>Bước 3: Gọi hàm tương ứng khi nhấn chuột vào nút.</p>
            <h5>Yêu cầu mở rộng:</h5>
            <p> -1. Chúng ta có sử dụng 1 hàm duy nhất thay cho 4 hàm ở trên không?</p>
            <p> -2. Nâng cấp ứng dụng để trở nên cao cấp hơn. Có thể tham khảo giao diện calculator của Google.</p>
            <img src="img/img-e3ex.png" style="width: 20%;">

        </div>
    </div>
</div>
</body>
</html>
