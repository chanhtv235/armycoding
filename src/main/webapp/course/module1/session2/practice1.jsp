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
                <a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=detail" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2. Git và html</a>
                <h4>[Thực hành] Clone dự án từ Git</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thao tác Clone dự án có sẵn từ GitHub.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập thao tác cơ bản nhất khi làm việc với Git đó là sao chép
                    một</p>
                <p>Repository có sẵn về máy của mình.</p>
                <p>Sau khi thực hiện xong các bước hướng dẫn thì hãy hoàn thành bài thực hành này bằng cách mô tả lại cú
                    pháp và ý nghĩa của câu lệnh clone.</p>

                <h5>Hướng dẫn</h5>
                <p>Trong phần hướng dẫn này, chúng ta sẽ sao chép (clone) một Repository có sẵn từ GitHub về máy của
                    mình.</p>
                <p>Các bước thực hiện như sau:</p>
                <p>1. Đi đến trang </p>:
                <pre><code class="language-javascript language-markup">
                   https://github.com/chanhtv235/sbc-hello
                </code></pre>
                <p>2. Nhấn vào nút <b>"Code"</b> rồi copy đường dẫn của Repository</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p11.png"
                     style="width: 90%;">
                <p>3. Tới thư mục trên máy tính cần lưu Repository và thực hiện mở "Git Bash Here"</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p12.png"
                     style="width: 30%;">
                <p>4. Dùng lệnh git clone để sao chép Repository về máy của mình:</p>
                <pre><code class="language-javascript language-markup">
                   git clone https://github.com/chanhtv235/sbc-hello.git
                </code></pre>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p13.png"
                     style="width: 70%;">

                <p>Kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-p14.png"
                     style="width: 70%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
