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
                <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Cấu trúc lặp</a>
                <h4>[Thực hành] Sử dụng vòng lặp do-while</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp do-while.</p>

                <h5>Mô tả</h5>
                <p>Sử dụng vòng lặp do while để viết lại chương trình yêu cầu nhập các số từ 1 -> 10 ở ví dụ trong phần
                    vòng lặp while.</p>
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo file dowhilesample.html. Tạo thẻ &lt;script&gt;và viết các mã lệnh thực thi trong đó.</p>
                <p>Bước 2: Tạo biến value để lưu giá trị người dùng nhập vào</p>
                <pre><code class="language-javascript language-markup">
                    let value = null;
                </code></pre>
                <p>Bước 3: Viết mã thực thi</p>
                <pre><code class="language-javascript language-markup">
                     do {
                    value = prompt("Nhập vào số từ 1 -> 10");
                    } while (value < 1 || value > 10);
                </code></pre>
                <p>Bước 4: Hiển thị ra màn hình giá trị vừa nhập
                <pre><code class="language-javascript language-markup">
                    alert("Số bạn vừa nhập là " + value);
                </code></pre>

                <p>Bước 5: Thực thi chương trình. Quan sát kết quả.</p>




            </div>
        </div>
    </div>
</div>


</body>
</html>
