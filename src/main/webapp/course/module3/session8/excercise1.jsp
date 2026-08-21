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
                <a href="/course/module3/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Bootstrap</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài tập] Tạo gallery đơn giản sử dụng Bootstrap</h2>
                    <div id="intro" class="box py-3 generalbox boxaligncenter">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Luyện tập sử dụng Bootstrap để tạo các bố cục responsive</p>
                            <h2>Mô tả</h2>
                            <p>Hãy sử dụng Media Query để tạo một Gallery đơn giản như&nbsp;<span><a
                                    href="http://demo.codegym.vn/web/15/gallery/gallery.html" target="_blank">bản mấu ở đây</a></span>.
                            </p>
                            <p>Lưu ý:</p>
                            <ul>
                                <li>Với các màn hình có độ rộng lớn hơn 700px thì hiển thị 4 ảnh trên cùng một dòng.
                                </li>
                                <li>Với các màn hình nhỏ hơn 700px thì hiển thị 2 ảnh trên cùng một dòng.</li>
                                <li>Với các màn hình nhỏ hơn 500px thì hiển thị 1 ảnh trên một dòng.</li>
                            </ul>

                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
