<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>

<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module3/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">1. Tổng quan CSDL</a>
                <h4>[Thực hành] Tạo CSDL trên MySQL Workbrench</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập các thao tác tạo CSDL trên MySQL Workbrench</p>

                <h5>Mô tả</h5>
                <p class="p1">Tạo CSDL sử dụng MySQL Workbrench</p>
                <p class="p1">Tạo CSDL sử dụng câu lệnh.</p>
                <h5>Hướng dẫn</h5>

                <p>- Chúng ta có thể sử dụng 1 trong 2 cách sau để tạo một CSDL mới:</p>
                <p class="p0">Cách 1: Tạo CSDL sử dụng MySQL Workbrench</p>
                <p class="p2">1. Bật MySQL Workbrench và đăng nhập bằng tài khoản và mật khẩu</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_0.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_1.png"
                     style="width: 60%;">
                <p class="p3">Hình ảnh <b>MySQL Workbench</b> với một vài cơ sở dữ liệu mẫu.</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_2.png"
                     style="width: 60%;">
                <p class="p2">2. Click chuột vào biểu tượng của SCHEMAS.</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_3.png"
                     style="width: 60%;">
                <p class="p2">3. Nhập tên của CSDL mới</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_4.png"
                     style="width: 60%;">
                <p class="p2">4. Nhấn nút "Apply" để tạo Schemas mới</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_5.png"
                     style="width: 60%;">
                <p class="p2">Như vậy là CSDL mới đã được tạo.</p>

                <p class="p0">Cách 2: Tạo CSDL sử dụng câu lệnh SQL trên MySQL Workbrench.</p>
                <p class="p2">1. Trong cửa sổ MySQL Workbrench vừa đăng nhập ở trên, nhấn chọn biểu tượng New Query Tab
                    để mở một cửa sổ mới để viết câu lệnh.</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_6.png"
                     style="width: 60%;">
                <p class="p2">2. Trong cửa sổ mới được mở ra nhập câu lệnh sau:</p>
                <pre><code class="language-sql">
                    CREATE DATABASE `my_database1`;
                </code></pre>
                <p class="p2">3. Sau đó chọn như sau để chạy câu lệnh</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_7.png"
                     style="width: 60%;">
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_8.png"
                     style="width: 60%;">
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p2/img_9.png"
                     style="width: 60%;">
                <p class="p2">Như vậy là CSDL mới đã được tạo.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
