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
            <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc Mảng</a>
            <h4>[Bài tập] Sử dụng các hàm có sẵn của mảng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập khai báo mảng, sử dụng các hàm có sẵn thao tác với mảng join, pop, push</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1:</b> Viết một chương trình Javascript để nối tất cả các phần tử trong một mảng chuỗi lại với nhau.</p>
            <p>Ví dụ có mảng chuỗi như sau: myColor = ["Red", "Green", "White", "Black"];</p>
            <p>Sau khi thực thi chương trình sẽ trả về dạng như sau :</p>
            <p>"Red,Green,White,Black"</p>
            <p>Có thể xem hướng dẫn tại: https://www.w3resource.com/javascript-exercises/javascript-array-exercise-5.php<p>
            <p><b>Bài 2:</b> Viết một chương trình nhận một số nhập vào và chèn dấu (-) giữa 2  số chẵn. </p>
            <p>Ví dụ nếu bạn nhập vào 025468 thì kết quả của chương trình sẽ là 0-254-6-8.</p>
            <span>Có thể xem hướng dẫn tại:</span>
            <a href="https://www.w3resource.com/javascript-exercises/javascript-array-exercise-6.php">Link</a>
            <p><b>Bài 3:</b> Viết một chương trình nhập vào một chuỗi và chuyển các ký tự chữ thường trong chuỗi vừa nhập sang thành dạng chữ hoa.</p>
            <p>Ví dụ: nếu bạn nhập vào chuỗi 'The Quick Brown Fox' kết quả của chương trình là 'tHE qUICK bROWN fOX'.</p>
            <span>Có thể xem hướng dẫn tại:</span>>
            <a href="https://www.w3resource.com/javascript-exercises/javascript-array-exercise-9.php"> Link</a>

        </div>
    </div>
</div>
</body>
</html>
