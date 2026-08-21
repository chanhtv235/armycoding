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
                <h4>[Thực hành] Luyện tập với cấu trúc if...else...if</h4>

                <h5>Mục tiêu</h5>

                <p>Luyện tập sử dụng cấu trúc if/else</p>

                <h5>Mô tả</h5>

                <p>Viết chương trình kiểm tra đăng nhập hệ thống của người dùng theo yêu cầu sau</p>
                <p>Yêu cầu người dùng nhập tên từ bàn phím.</p>
                <p>•	Nếu tên nhập vào là Admin thì yêu cầu nhập mật khẩu.</p>
                <p>•	Nếu mật khẩu là TheMaster thì in ra chuỗi Welcome.</p>
                <p>•	Nếu mật khẩu nhập vào là null in ra chuỗi Canceled.</p>
                <p>•	Còn lại in ra chuỗi Wrong password.</p>
                <p>•	Nếu tên nhập vào là null in ra chuỗi canceld.</p>
                <p>•	Còn lại in ra chuỗi “I don’t know you"</p>

                <h5>Hướng dẫn thực hiện</h5>
                <h6>Bước 1: Tạo file login.html</h6>

                <h6>Bước 2: Thêm thẻ &lt;script&gt; thực hiện viết các mã JavaScript </h6>

                <h6>Bước 3: Tạo biến userName nhận giá trị nhập vào từ hộp thoại</h6>
                <pre><code class="language-javascript language-markup">
                    let userName = prompt("Who's there?", '');
                </code></pre>
                <h6>Bước 4: Kiểm tra giá trị của userName</h6>
                <pre><code class="language-javascript language-markup">
                    if (userName == 'Admin') {
                        //code vào đây
                    } else if (userName == null) {
                        alert('Canceled');
                    } else {
                        alert("I don't know you");
                    }

                </code></pre>
                <h6>Bước 5: Nếu userName là “Admin”. Khai báo biến pass nhận giá trị nhập vào từ hộp thoại.</h6>
                <pre><code class="language-javascript language-markup">
                    let pass = prompt('Password?', '');
                </code></pre>

                <h6>Bước 6: Kiểm tra pass</h6>

                <pre><code class="language-javascript language-markup">
                    if (pass == 'TheMaster') {
                        alert('Welcome!');
                    } else if (pass == null) {
                        alert('Canceled.');
                    } else {
                        alert('Wrong password');
                    }
                </code></pre>
                <h6>Bước 7: Thực thi chương trình. Quan sát kết quả.</h6>
            </div>
        </div>
    </div>
</div>

</body>
</html>
