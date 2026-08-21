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

            <h4>[Bài tập] Phát triển ứng dụng nhỏ mô phỏng câu chuyện Adam </h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p>Viết một ứng dụng nhỏ mô phỏng câu chuyện Adam và Eva. Adam và Eva là những con người đầu tiên, trong vườn địa đàng có một cây táo ra những quả táo chín mọng. Adam và Eva lấy một quả táo và ăn, mỗi người ăn một miếng táo cho đến khi hết!</p>
            <p>Viết một lớp lấy tên là Apple, với mỗi quả táo đều có những đặc điểm sau đây:</p>
            <img src="img/img-e51.png" style="width: 70%;">
            <p>+ Có khối lượng.</p>
            <p>+ Khi tạo ra quả táo đã có khối lượng mặc định là 10 đv.</p>
            <p>+ Các đối tượng khác có thể biết được khối lượng của quả táo, nhưng không thay đổi được giá trị này.</p>
            <img src="img/img-e52.png" style="width: 70%;">

            <p> Viết một lớp có tên là Human, với mỗi một người được tạo ra sẽ mang đầy đủ những đặc tính sau:</p>
            <p>+ Có tên.</p>
            <p>+ Có giới tính.</p>
            <p>+ Có cân nặng.</p>
            <p>+ Biết nói một chuỗi các từ. (bằng cách in ra màn hình console chuỗi đó)</p>
            <p>+ Biết ăn táo. Mỗi lần ăn, chỉ ăn một miếng táo (1đv). Khi ăn táo, khối lượng của người đó sẽ tăng lên một đv và khối lượng quả táo sẽ giảm đi một đv. Chỉ ăn táo khi khối lượng của quả táo lớn hơn 0.</p>
            <p>+ Biết kiểm tra khối lượng của quả táo.</p>
            <p>+ Các đối tượng khác có thể biết được tên, giới tính và cân nặng của đối tượng người.</p>
            <img src="img/img-e53.png" style="width: 70%;">

            <h5>Hướng dẫn</h5>
            <p></p>
            <p>•	Tạo các lớp theo trật tự phụ thuộc</p>
            <p>•	Khởi tạo các đối tượng</p>
            <p>•	Thực hiện theo kịch bản</p>

        </div>
    </div>
</div>
</body>
</html>
