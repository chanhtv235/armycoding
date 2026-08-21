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
                <a href="/course/module2/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5. Static và access modifier</a>

                <h4>[Bài tập] Access modifier</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Access modifier</p>

                <h5>Mô tả</h5>
                <p>Chúng ta có lớp Circle như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-e11.png"
                     style="width: 30%;">
                <p>• Hai thuộc tính có access modifier là private: radius (double) có giá trị khởi tạo là 1.0, color
                    (String) có giá trị khởi tạo là "red".</p>
                <p> • Hai hàm tạo: một không có tham số và một có tham số là radius.</p>
                <p> • Hai phương thức có access modifier là public: getRadius và getArea.</p>
                <p> Hãy tạo lớp TestCircle, tạo đối tượng Circle và truy cập đến các phương thức getRadius() và
                    getArea().</p>
                <p> Thay đổi access modifier cho các phương thức getRadius() và getArea(), sau đó test lại.</p>

                <h5>Hướng dẫn</h5>


            </div>
        </div>
    </div>

</body>
</html>
