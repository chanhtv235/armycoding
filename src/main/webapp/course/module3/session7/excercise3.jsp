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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Thiết kế Layout</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Tạo layout với RWD</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Luyện tập sử dụng DIV và CSS để tạo bố cục cho trang web</p>
                            <h2>Mô tả</h2>
                            <p>Hãy sử dụng DIV và CSS để tạo một trang web có bố cục như ảnh sau:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50987/mod_assign/intro/Layout_boostrap.png?time=1616511772712"
                                     width="800" height="421"></p>
                            <p><span><span>Lưu ý:</span></span>&nbsp;Bố cục của trang web này phải responsive.</p>
                    </div>

                </div>
            </div>
        </div>

</body>
</html>
