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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Tạo trang đọc truyện ngắn</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h3>Mục tiêu</h3>
                            <p>Luyện tập sử dụng CSS trong trang web.</p>
                            <h3>Nội dung</h3>
                            <p>Trong phần này, chúng ta sẽ luyện tập việc nhúng css, sử dụng các thuộc tính CSS để trang
                                trí cho một trang web đọc truyện đơn giản. Bố cục của trang web có thể tuỳ ý thiết
                                kế.</p>
                            <h3>Hướng dẫn</h3>
                            <p><strong>Bước 1:</strong> Tạo các mục lục truyện</p>
                            <p><strong>Bước 2:</strong> Tạo nội dung ứng với từng mục lục truyện</p>
                            <p><strong>Bước 3:</strong> Tạo liên kết từng mục lục. Mỗi lần click vào một mục lục chuyển
                                đến nội dung tương ứng.</p>
                            <p><strong>Bước 4:</strong> Tạo ảnh truyện đặt ở đầu trang.</p>
                            <p><strong>Bước 5:</strong> Sử dụng thẻ &lt;h5&gt; cho từng mục lục truyện</p>

                    </div>
                </div>

            </div>
        </div>

</body>
</html>
