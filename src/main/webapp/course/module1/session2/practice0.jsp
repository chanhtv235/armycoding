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
                <h4>[Thực hành] Hướng dẫn cài đặt GitHub</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thao tác cài đặt GitHub.</p>

                <h5>Mô tả</h5>
                <p>GitHub sử dụng để lưu trữ mã nguồn</p>
                <h5 >Hướng dẫn</h5>
                <iframe width="900" height="600" src="https://www.youtube.com/embed/lesqw7WzMFU?si=1dxRtntJ-S0RRW-g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>            </div>
        </div>
    </div>
</div>


</body>
</html>
