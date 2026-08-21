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
            <a href="${pageContext.request.contextPath}/course/module1/session7/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 7.Cấu trúc lặp</a>
            <h4>[*Bài tập] Luyện tập vòng lặp 02</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng vòng lặp for, while, do-while, vòng lặp lồng nhau</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1: </b>In 10 số trong dãy Fibonaci</p>
            <p><b>Bài 2:</b> Tính giai thừa của một số nguyên dương</p>
            <p><b>Bài 3:</b> In tam giác vuông. Các góc vuông nằm ở các vị trí khác nhau</p>
            <img src="img/img-e41.png">
            <p><b>Bài 4:</b>  In hình chữ nhật</p>
            <img src="img/img-e42.png">
            <p><b>Bài 5:</b> Viết chương trình tính lãi ngân hàng (lãi mẹ đẻ lại con) khi biết số tiền ban đầu,
                số tháng cho vay và lãi xuất hàng tháng.</p>

        </div>
    </div>
</div>
</body>
</html>
