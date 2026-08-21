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
                <h4>[Thực hành] Sự kiện chuột</h4>

                <h5>Mục tiêu</h5>

                <p>Luyện tập thao tác sự kiện chuột</p>

                <h5>Mô tả</h5>
                <p>Làm sử dụng sự kiện click chuột để di chuyển hình ảnh một quả bóng. Mỗi lần click quả bóng sẽ được di
                    chuyển sang trái/phải một khoảng cách.</p>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo giao diện như hình</p>
                <img src="img/img-p6.png" style="width: 25%;">
                <p>Mã nguồn tham khảo:</p>
                <pre><code class="language-javascript language-markup">
                   &lt;form&gt;
                        &lt;img id="myImage" src="images/ball.jpg" &gt;
                        &lt;p&gt;Click button below to move the image to right&gt;/p&gt;
                        &lt;input type="button" value="Click Me"/&gt;
                    &lt;/form&gt;

                </code></pre>
                <p>Bước 2: Tạo biến imgObj để lưu ảnh</p>
                <pre><code class="language-javascript language-markup">
                  let imgObj = null;
                </code></pre>
                <p>Bước 3: Sử dụng hàm getElementById () để nhận được một đối tượng DOM và sau đó gán nó cho biến
                    imgObj.</p>
                <pre><code class="language-javascript language-markup">
                   imgObj = document.getElementById('myImage');
                </code></pre>
                <p>Bước 4: Tạo hàm init () để khởi tạo imgObj mà chúng ta đã đặt vị trí và các thuộc tính còn lại.</p>
                <pre><code class="language-javascript language-markup">
                   function init() {
                    imgObj = document.getElementById('myImage');
                    imgObj.style.position = 'relative';
                    imgObj.style.left = '0px';
                    }
                </code></pre>
                <p>Bước 5: Tạo hàm moveRight () để tăng khoảng cách trái 10 pixel. Bạn cũng có thể đặt nó là một giá trị
                    âm để di chuyển nó sang bên trái.</p>
                <pre><code class="language-javascript language-markup">
                    function moveRight() {
                        imgObj.style.left = parseInt(imgObj.style.left) + 10 + 'px';
                    }
                </code></pre>

                <p>Bước 6: Gọi hàm init() khi trình duyệt được tải lần đầu</p>
                <pre><code class="language-javascript language-markup">
                    window.onload = init;
                </code></pre>
                <p>Bước 7: Xác định sự kiện onclick cho button</p>
                <pre><code class="language-javascript language-markup">
                  &lt;input type="button" value="Click Me" onclick="moveRight();"/&gt;
                </code></pre>
                <p>Bước 5: Thực thi chương trình. Quan sát kết quả.</p>
                <h6>Bước 8: Chạy chương trình. Click chuột vào button Click Me và quan sát kết quả.</h6>
            </div>
        </div>
    </div>
</div>

</body>
</html>
