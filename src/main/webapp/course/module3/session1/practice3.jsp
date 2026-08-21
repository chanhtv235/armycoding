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
                <h4>[Thực hành] Xoá CSDL trên MySQL Workbrench</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập xoá CSDL trên MySQL Workbrench</p>

                <h5>Mô tả</h5>
                <p class="p1">Tạo CSDL sử dụng MySQL Workbrench</p>
                <p class="p1">Tạo CSDL sử dụng câu lệnh.</p>
                <h5>Hướng dẫn</h5>

                <p>- Chúng ta có thể sử dụng 1 trong 2 cách sau để tạo một CSDL mới:</p>
                <p class="p0">Cách 1: Xoá CSDL sử dụng MySQL Workbrench</p>
                <p class="p1">-Các bước thực hiện</p>
                <p class="p2">1. Bật MySQL Workbrench và đăng nhập bằng tài khoản và mật khẩu</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_0.png"
                     style="width: 60%;">
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_1.png"
                     style="width: 60%;">
                <p class="p3">Hình ảnh <b>MySQL Workbench</b> với một vài cơ sở dữ liệu mẫu.</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_2.png"
                     style="width: 60%;">
                <p class="p2">2. Chọn một schema muốn xoá sau đó click chuột phải và chọn <b>Drop Schema</b></p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_3.png"
                     style="width: 40%;">
                <p class="p2">3. Sau đó sẽ xuất hiện một thông báo của Workbrench và chọn <b>Drop Now</b></p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_4.png"
                     style="width: 40%;">
                <p class="p2">4. Vậy là Schema đó đã được xoá</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_5.png"
                     style="width: 60%;">
                <p class="p2"><b>Lưu ý:</b> Chúng ta phải rất cẩn thận với thao tác xoá CSDL bởi vì tất cả các dữ liệu
                    trong
                    CSDL này sẽ bị mất nếu không được sao lưu trước đó.</p>

                <p class="p0">Cách 2: Xoá CSDL bằng câu lệnh SQL trên Workbrench</p>
                <p class="p1">-Các bước: </p>
                <p class="p2">1. Trong cửa sổ MySQL Workbrench vừa đăng nhập ở trên, chọn File -> New Query Tab để mở
                    một cửa sổ mới để viết câu lệnh</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_6.png"
                     style="width: 60%;">
                <p class="p2">2. Trong cửa sổ mới được mở ra nhập câu lệnh sau:</p>
                <pre><code class="language-sql">
                    DROP DATABASE `my_database`;
                </code></pre>
                <p class="p2">3. Sau đó chọn như sau để chạy câu lệnh</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_7.png"
                     style="width: 60%;">
                <p class="p2">4. Như vậy là CSDL my_database đã được xoá</p>
                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_8.png"
                     style="width: 60%;">
                <p class="p2"><b>Lưu ý:</b> Chúng ta phải rất cẩn thận với thao tác xoá CSDL bởi vì tất cả các dữ liệu trong CSDL này sẽ
                    bị mất nếu không được sao lưu trước đó.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
