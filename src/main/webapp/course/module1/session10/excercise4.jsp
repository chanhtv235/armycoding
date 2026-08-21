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
            <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 10. Lập trình OOP</a>

            <h4>[Bài tập] Phát triển chương trình thể hiện sự tương tác giữa hai đối tượng: công tắc và bóng đèn</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p> Viết chương trình thể hiện sự tương tác giữa hai đối tượng: công tắc và bóng đèn.</p>
            <img src="img/img-e41.png" style="width: 60%;">

            <p>Khi công tắc bật hoặc tắt, hiển thị ra màn hình trạng thái của bóng đèn. </p>
            <img src="img/img-e42.png" style="width: 60%;">
            <p>Sử dụng các lớp vừa tạo xây dựng chương trình java theo kịch bản sau: </p>
            <p>•	Khai báo và khởi tạo một đối tượng công tắc và một đối tượng bóng đèn điện. </p>
            <p>•	Kết nối công tắc với bóng đèn. </p>
            <p> •	Bật tắt công tắc 10 lần. </p>
            <h5>Hướng dẫn</h5>
            <p>•	Khai báo các lớp theo trật tự phụ thuộc </p>
            <p>•	Khởi tạo các đối tượng </p>
            <p>•	Thực hiện các thao tác theo kịch bản </p>

        </div>
    </div>
</div>
</body>
</html>
