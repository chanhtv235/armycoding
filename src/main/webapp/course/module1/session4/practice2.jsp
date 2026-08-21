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
                <a href="${pageContext.request.contextPath}/course/module1/session4/detail.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">4. Tổng quan về javascript</a>
                <h4>[Thực hành] Nhúng JavaScript</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập các cách nhúng mã Javascript vào trong trang HTML.</p>
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập cách để nhúng mã JavaScript vào trong trang HTML.</p>
                <h5>Hướng dẫn</h5>
                <p>Bài tập 1: Tạo một trang web với một nút. Chèn mã Javascript vào trong thẻ &lt;button&gt; để hiển thị một lời chào khi người dùng nhấn chuột vào nút đó.</p>
                <pre><code class="language-javascript language-markup">
                          &lt;button type="button" onclick="alert('Xin chào!');"&gt;Click Me!&lt;/button&gt;
                </code></pre>
                <p>Bài tập 2: Tạo một trang web với một nút. Sử dụng thẻ &lt;script&gt; và khai báo một hàm đơn giản. Gọi hàm này khi người dùng nhấn chuột vào nút.</p>

                <pre><code class="language-javascript language-markup">
                          &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt;
                          <script>
                            function showMessage(){
                              alert('Xin chào!')
                            }
                          </script>
                </code></pre>
                <p>Bài tập 3: Hãy tách đoạn mã Javascript ở Bài tập 2 ra một file Javascript riêng và nhúng vào trang HTML.</p>
            </div>

        </div>
    </div>
</div>
</body>
</html>
