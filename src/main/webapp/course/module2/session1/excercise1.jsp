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
            <a href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>

            <h4>[Bài tập] Hiển thị lời chào</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác nhập dữ liệu từ bàn phím.</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng Java cho phép nhập tên của người dùng từ bàn phím,
                sau đó hiển thị lời chào kèm theo tên của người đó.</p>
            <p>Enter your name:</p>
            <p>Bill Gates</p>
            <p>Hello: Bill Gates</p>
            <h5>Hướng dẫn</h5>
            <p>Sử dụng phương thức nextLine() của lớp java.util.Scanner để nhập tên từ bàn phím.</p>
            <p>Sử dụng phương thức System.out.println() để hiển thị lời chào.</p>
            <pre>
                <code>
                        System.out.println("Enter your name: ");
                        String name = scanner.nextLine();
                        System.out.println("Hello: " + name);
                </code>
            </pre>


        </div>
    </div>
</div>
</body>
</html>
