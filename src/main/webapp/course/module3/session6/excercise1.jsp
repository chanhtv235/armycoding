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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>

                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Nhúng CSS vào trang HTML</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục đích</h2>
                            <p>Luyện tập việc nhúng CSS vào trang web bằng các cách khác nhau.</p>
                            <h2>Yêu cầu</h2>
                            <p>Hãy tạo một trang web đơn giản với nội dung bao gồm 1 tiêu đề và 1 đoạn văn:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50984/mod_assign/intro/Screen%20Shot%202017-04-20%20at%201.29.21%20PM.png"
                                     width="395" height="132"></p>
                            <p><span>Phần 1:</span>&nbsp;Hãy thay đổi màu sắc của văn bản sử dụng inline-style</p>
                            <p><span>Phần 2:</span>&nbsp;Hãy thay đổi màu sắc của văn bản sử dụng internal-style</p>
                            <p><span>Phần 3:</span>&nbsp;Hãy thay đổi màu sắc của văn bản sử dụng external-style</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
