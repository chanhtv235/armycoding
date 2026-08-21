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
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6. Cấu trúc điều kiện</a>
                <h4>[Thực hành] Luyện tập với cấu trúc if/else</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc if/else.</p>
                <h5>Mô tả</h5>

                <p>Sử dụng cấu trúc if…else, viết chương trình nhập vào một chuỗi câu trả lời cho câu hỏi “What is the
                    “official” name of JavaScript?”.
                    Nếu câu trả lời nhập vào là “ECMAScript”, thì hiển thị thông báo: “Right!”, ngược lại hiển thị thông
                    báo: “Didn’t know? ECMAScript!”</p>
                <h5>Lưu đồ </h5>
                <img src="${pageContext.request.contextPath}/course/module1/session6/img/img-p2.png" style="width: 50%;">
                <h5>Hướng dẫn thực hiện</h5>
                <h6>Bước 1: Tạo file index.html</h6>
                <h6>Bước 2: Thêm thẻ &lt;script&gt; thực hiện viết các mã JavaScript </h6>
                <h6>Bước 3: Khai báo biến value nhận giá trị được nhập vào từ hộp thoại</h6>
                <pre><code class="language-javascript language-markup">
                    let value = prompt('What is the "official" name of JavaScript?', '');
                </code></pre>
                <h6>Bước 4: Sử dụng cấu trúc if…else kiểm tra giá trị của value</h6>
                <pre><code class="language-javascript language-markup">
                    if (value == 'ECMAScript') {
                      alert('Right!');
                    } else {
                      alert("You don't know? ECMAScript!");
                    }
                </code></pre>
                <h6>Bước 5: Thực thi chương trình. Quan sát kết quả.</h6>
            </div>
        </div>
    </div>
</div>

</body>
</html>
