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

            <h4>[*Bài tập] Phát triển ứng dụng mô phỏng lại quá trình mèo bắt chuột và ăn chuột.</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo lớp, đối tượng, phương thức và thuộc tính của đối tượng.</p>

            <h5>Mô tả</h5>
            <p>Viết một lớp mô tả đối tượng chuột lấy tên là Rat, với những đặc điểm được mô tả như sau: </p>
            <p>• Có thuộc tính tên. </p>
            <p>• Có thuộc tính khối lượng. </p>
            <p>• Có thuộc tính tốc độ. </p>
            <p>• Có thuộc tính mô tả trạng thái: sống, chết. </p>
            <p>• Có khả năng thực hiện hành vi kêu (ví dụ “chít, chít”) </p>
            <p>Viết một lớp mô tả đối tượng mèo lấy tên là Cat với những đặc điểm được mô tả như sau: </p>
            <p>• Có thuộc tính tên. </p>
            <p>• Có thuộc tính khối lượng. </p>
            <p>• Có thuộc tính tốc độ di chuyển tối đa. </p>
            <p>• Có khả năng thực hiện hành vi kêu (ví dụ: “meo meo”). </p>
            <p>• Có khả năng bắt chuột, mỗi lần chỉ bắt được một con. Chỉ bắt được chuột khi tốc độ của mèo lớn hơn tốc
                độ của chuột. </p>
            <p>• Có khả năng ăn thịt chuột. Chỉ ăn chuột còn sống. Khi ăn, khối lượng của mèo tăng lên tương ứng. </p>
            <p>Viết một đoạn chương trình mô phỏng lại quá trình mèo bắt chuột và ăn chuột dựa trên các lớp vừa mô tả
                trên. </p>
            <h5>Hướng dẫn</h5>

            <p>• Khai báo các lớp theo trật tự phụ thuộc </p>
            <p>• Khởi tạo các đối tượng </p>
            <p>• Thực hiện các thao tác theo kịch bản </p>

        </div>
    </div>
</div>
</body>
</html>
