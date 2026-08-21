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

            <h4>[Bài tập] Ứng dụng đọc số thành chữ</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập thao tác nhập dữ liệu từ bàn phím.</p>

            <h5>Mô tả</h5>
            <p>Giả sử bạn đang tham gia viết chương trình cho máy đo chiều cao cân nặng, hãy viết một chương trình có
                khả năng đọc các số nguyên không âm có tối đa 3 chữ số.
            </p>
            <p>
                Ví dụ, với số 261, chương trình in ra màn hình two hundred and sixty one.
            </p>
            <h5>Hướng dẫn</h5>
            <p><b>Bước 1:</b> viết mã để chương trình hỏi số cần đọc</p>
            <p><b>Bước 1:</b>đọc các số có một chữ số</p>
            <p>Nếu số cần đọc nhỏ hơn 10 và lớn hơn hoặc bằng 0, hãy sử dụng cấu trúc switch case để đọc số đó.</p>
            <p>Nếu số cần đọc vượt quá khả năng, in ra chuỗi out of ability</p>
            <p><b>Bước 1:</b> đọc các số có hai chữ số nhỏ hơn 20</p>
            <p>Trong trường hợp số cần đọc nhỏ hơn 20 và lớn hơn hoặc bằng 10, tính ra số hàng đơn vị (ones), sau đó sử
                dụng cấu trúc switch case để đọc số thành các string tương ứng.</p>
            <p>Ví dụ: từ số 16, có số 6, đọc thành sixteen.</p>
            <p><b>Bước 1:</b> đọc các số có hai chữ số lớn hơn hoặc bằng 20</p>
            <p>Trong trường hợp số cần đọc nhỏ hơn 100 và lớn hơn hoặc bằng 20, tính ra số hàng chục và số hàng đơn vị
                (ones).</p>
            <p>Ví dụ, từ 61 có tens = 6 và ones = 1.</p>
            <p>Sử dụng cấu trúc switch case để đọc riêng biệt hàng chục và hàng đơn vị thành chữ, ghép lại thành câu
                hoàn chỉnh.</p>
            <p>Ví dụ, từ 61 có sixty và one, ghép lại thành sixty one.</p>
            <p><b>Bước 1:</b>đọc các số có ba chữ số</p>
            <p>Đọc chữ số hàng trăm thành chữ, sử dụng thuật toán đã có để đọc phần còn lại của số thành chữ và ghép lại
                để được số hoàn chỉnh.</p>
            <p>Ví dụ từ 461 có four hundred và sixty one, ghép lại thành four hundred and sixty one.</p>


        </div>
    </div>
</div>
</body>
</html>
