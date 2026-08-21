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
        <div>
            <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc mảng</a>
            <h4>[*Bài tập] Ứng dụng vui Faking Textarea on Typing</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập việc sử dụng mảng và vòng lặp.</p>

            <h5>Mô tả</h5>
            <p>Phát triển một ứng dụng vui với giao diện như sau:.</p>
            <img src="/${pageContext.request.contextPath}/course/module1/session8img/img-e4.png" style="width: 30%;">
            <h6>Mô tả chức năng:</h6>
            <p>Khi người dùng gõ bàn phím thì một dòng chữ cố định sẽ lần lượt hiện ra. Cho dù người dùng gõ chữ nào thì cũng lần lượt hiện ra dòng chữ cố định đó.</p>
            <span>Xem hiệu ứng demo ở đây:</span> <a href="http://demo.codegym.vn/8/fakingtextarea/fakingtextarea.html"> Link</a>
            <p>Lưu ý: Không sao chép mã nguồn ở phần demo, vì mã nguồn này được cố ý triển khai theo một cách khá tệ.</p>
        </div>
    </div>
</div>
</body>
</html>
