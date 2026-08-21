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
            <a href="${pageContext.request.contextPath}/course/module1/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 3. Form và table</a>

            <h4>[Bài tập] Tạo form lấy survey khách hàng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo form</p>
            <h5>Mô tả</h5>
            <p>
                Tạo form survey khách hàng theo giao diện sau đây (<a
                    href="https://gallery.wufoo.com/embed/pyej3161l9pt0d/def/embedKey=pyej3161l9pt0d89279">Link tại đây</a>):
            </p>
            <img src="img/img-e2.png" style="width: 80%;">


        </div>
    </div>
</div>
</body>
</html>
