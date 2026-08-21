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
            <a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 9. Hàm trong javascript</a>

            <h4>[Bài tập] Hàm kiểm tra số nguyên tố</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo và gọi hàm.</p>
            <h5>Mô tả</h5>
            <p>Xây dựng hàm: function isPrime(number) để kiểm tra xem một số nguyên bất kỳ có phải là số nguyên tố hay không.</p>
            <p>Sử dụng phương thức này để tìm tất cả các số nguyên tố nhỏ hơn 10000.</p>
            <p>Số nguyên tố là số tự nhiên khác 0 chỉ có hai ước số dương phân biệt là 1 và chính nó.</p>
            <p>Do số 1 chỉ có một ước số dương là chính nó, nên số 1 không phải là số nguyên tố.</p>
            <p>Ví dụ, các số sau đây là số nguyên tố:</p>
            <p>2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,...</p>


        </div>
    </div>
</div>
</body>
</html>
