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
                <h4>Thực hành] Tạo bảng trên MySQL Workbrench</h4>

                <h5>Mục tiêu</h5>
                <p>•Luyện tập các thao tác tạo bảng bằng câu lệnh SQL trên MySQL Workbrench</p>

                <h5>Mô tả</h5>
                <p class="p1">•	Tạo 1 CSDL mới tên demo</p>
                <p class="p1">•	Tạo bảng Student với các trường(thuộc tính) là id, name, age, country.</p>
                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Viết các câu lệnh SQL.</p>

                <pre><code class="language-sql">
                    create database demo;

                    use demo;

                    create table Student(
                     id int,
                     name varchar(200),
                     age int,
                     country varchar(50)
                    );
                </code></pre>

                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p3/img_0.png"
                     style="width: 55%;">

                <p class="p0">Bước 2: Chạy từng câu lệnh trong file. </p>

                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p4/img_1.png"
                     style="width: 55%;">

                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p4/img_2.png"
                     style="width: 55%;">

                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p4/img_3.png"
                     style="width: 55%;">

                <img src="${pageContext.request.contextPath}/course/module3/session1/img/p4/img_4.png"
                     style="width: 55%;">
                <p class="p1">Như vậy bảng Student đã được tạo thành công trong CSDL có tên là demo.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
