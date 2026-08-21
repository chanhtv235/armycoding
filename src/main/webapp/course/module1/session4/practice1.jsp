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
                <h4>[Thực hành] Hiển thị đầu ra</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập hiển thị các thông báo dưới nhiều cách khác nhau</p>
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập các cách khác nhau để quan sát kết quả khi thực thi mã JavaScript.</p>
                <h5>Hướng dẫn thực hiện</h5>

                <p>Bài tập 1: Hiển thị kết quả sử dụng hàm alert():</p>
                <pre><code class="language-javascript language-markup">
                        &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt
                        <script>
                         function showMessage(){
                             alert('Xin chào!');
                         }
                        </script>
                </code></pre>
                <p>Bài tập 2: Hiển thị kết quả sử dụng thẻ HTML:</p>
                <pre><code class="language-javascript language-markup">
                        &lt;div id="messageDiv"&lt;&lt;/div&lt;
                        &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt
                       <script>
                         function showMessage(){
                             document.getElementById('messageDiv').innerHTML = 'Xin chào!';
                         }
                       </script>
                </code></pre>
                <p>Bài tập 3: Hiển thị kết quả sử dụng hàm document.write():</p>
                <pre><code class="language-javascript language-markup">
                      &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt
                      <script>
                       function showMessage(){
                             document.write('Xin chào!');
                       }
                      </script>
                </code></pre>
                <p>Bài tập 4: Hiển thị kết quả sử dụng hàm console.log():</p>
                <pre><code class="language-javascript language-markup">
                      &lt;button type="button" onclick="showMessage();"&gt;Click Me!&lt;/button&gt
                      <script>
                       function showMessage(){
                             console.log('Xin chào!');
                         }
                      </script>
                </code></pre>
                <p>Lưu ý: Bật màn hình console của trình duyệt để có thể xem được kết quả.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
