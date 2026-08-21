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
            <a href="${pageContext.request.contextPath}/course?module=1&session=2&fileName=detail" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2. Git và html</a>

            <h4>[Bài tập] Tạo danh sách</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng các thẻ danh sách</p>
            <h5>Mô tả</h5>
            <p>
                Hãy sử dụng các thẻ &lt;ul&gt;, &lt;ol&gt;, &lt;li&gt; để tạo một danh sách như sau:
            </p>
            <img src="${pageContext.request.contextPath}/course/module1/session2/img/img-e1.png"
                 style="width: 50%;">
        </div>
    </div>
</div>
</body>
</html>
