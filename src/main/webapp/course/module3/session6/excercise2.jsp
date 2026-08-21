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
                    <h2>[Bài tập] Định dạng văn bản với CSS</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Luyện tập sử dụng các thuộc tính CSS để định dạng văn bản.</p>
                            <h2>Yêu cầu</h2>
                            <p>Tạo một tài liệu HTML với văn bản được định dạng như sau:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50985/mod_assign/intro/Screen%20Shot%202017-04-20%20at%201.44.27%20PM.png"
                                     width="800" height="570"></p>
                            <p>Gợi ý: Sử dụng các thuộc tính định dạng văn bản như:</p>
                            <ul>
                                <li>text-style</li>
                                <li>text-align</li>
                                <li>font-size</li>
                                <li>text-identation</li>
                                <li>color</li>
                                <li>...</li>
                            </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
