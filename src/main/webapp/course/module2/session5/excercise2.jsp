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

                <h4>[Bài tập] Xây dựng lớp chỉ ghi trong Java</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Access modifier</p>

                <h5>Mô tả</h5>
                <p>Chúng ta có lớp Student với các thông tin như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-e21.png"
                     style="width: 30%;">
                <p>•	Hai thuộc tính có access modifier là private: name (string) có giá trị mặc định là "John", class (String) có giá trị mặc định là "C02".</p>
                <p>•	Một hàm tạo không có tham số.</p>
                <p>•	Hai phương thức có access modifier là public: setName và setClasses.</p>
                <p>Hãy tạo lớp Test, tạo đối tượng  và truy cập đến các phương thức setName(name: String) và setClasses(classes: String).</p>
                <p>Thay đổi access modifier cho các phương thức setName(name: String) và setClasses(classes: String), sau đó test lại.</p>

                <h5>Hướng dẫn</h5>


            </div>
        </div>
    </div>

</body>
</html>
