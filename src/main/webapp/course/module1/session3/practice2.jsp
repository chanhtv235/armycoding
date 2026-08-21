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
                <a href="${pageContext.request.contextPath}/course/module1/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Git và html</a>
                <h4>[Thực hành] Tạo một form tìm kiếm Google</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập gửi dữ liệu từ form lên server.</p>

                <h5>Mô tả</h5>
                <p>Tạo một form tìm kiếm, sử dụng trang tìm kiếm của Google.</p>

                <img src="img/img-p1.png" style="width: 30%;">

                <h5>Các bước thực hiện</h5>

                <p>Bước 1: Tạo một trang web HTML</p>
                <p>Bước 2: Tạo một form đơn giản với một input text và một submit button.</p>
                <pre><code class="language-javascript language-markup">
                &lt;form&gt;
                     &lt;input type=&quot;text&quot;/&gt;
                     &lt;input type=&quot;submit&quot; value=&quot;Tìm kiếm&quot;/&gt;
                &lt;/form&gt;
                </code></pre>
                <p>Bước 3: Đưa URL của Google Search vào form.</p>
                <p>Cài đặt các thuộc tính cho form:</p>
                <p>•	method="GET"</p>
                <p>•	action="https://www.google.com.vn/search"</p>
                <p> Đặt tên cho thẻ input: name="q".</p>

                <pre><code class="language-javascript language-markup">
                &lt;form action=&quot;https://www.google.com.vn/search&quot;&gt;
                     &lt;input type=&quot;text&quot; name=&quot;q&quot;/&gt;
                     &lt;input type=&quot;submit&quot; value=&quot;Tìm kiếm&quot;/&gt;
                &lt;/form&gt;
                </code></pre>
                <p>Bước 4: Dùng thử</p>
                <p>Mở trang web, nhập từ muốn tìm kiếm và nhấn nút Tìm kiếm, quan sát kết quả</p>
                <p>Thử thay đổi thuộc tính method và quan sát kết quả</p>
                <p>Thử thay đổi thuộc tính action và quan sát kết quả</p>
                <p>Nếu muốn sử dụng trang tìm kiếm của Bing thì làm thế nào?</p>


            </div>
        </div>
    </div>
</div>


</body>
</html>
