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
                <a href="/course/module2/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6.Kế thừa trong java</a>

                <h4>[Bài tập] Lớp Point2D và lớp Point3D</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập kỹ năng đọc và triển khai bản thiết kế lớp đối tượng bằng giản đồ.</p>

                <h5>Mô tả</h5>
                <p>Thiết kế lớp đối tượng Point2D và lớp con của nó Point3D theo giản đồ sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session6/img/img-e21.png"
                     style="width: 70%;">
                <p>Viết chương trình sử dụng các lớp đó với mục đích kiểm thử.</p>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Viết mã triển khai và mã kiểm thử cho lớp Point2D

                </p>
                <p> Bước 2: Viết mã triển khai và mã kiểm thử cho lớp Point3D</p>

            </div>
        </div>
    </div>

</body>
</html>
