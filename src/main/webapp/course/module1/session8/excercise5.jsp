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
               class="mb-2 btn btn-sm btn-outline-warning"> 8.Cấu trúc mảng</a>
            <h4>[Bài tập] Luyện tập mảng 01</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập khai báo mảng và thực hiện các thao tác thông dụng với mảng.</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo mảng số nguyên gồm 10 phần tử. Chương trình thực hiện tính và hiển thị xem có bao nhiêu số nguyên lớn hơn hoặc bằng 10.</p>
            <p><b>Bài 1- </b> Viết chương trình khởi tạo mảng số nguyên gồm 10 phần tử khác nhau. Chương trình hiển thị ra được phần tử có giá trị lớn nhất trong mảng và vị trí của phần tử đó.</p>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo mảng số nguyên. Hiển hiện giá trị lớn nhất trong mảng đó. In ra giá trị trung bình của các phần tử trong mảng.</p>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo/nhập vào một mảng số nguyên và đảo ngược các phần tử trong mảng đó.</p>
            <p><b>Bài 1- </b>Viết chương trình đếm số nguyên âm trong một chuỗi</p>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo/nhập vào một mảng số nguyên gồm 10 phần tử, nhập/tạo phần tử số nguyên V. Chương trình tìm xem V có nằm trong mảng số nguyên không? Nếu V thuộc mảng số nguyên thì in ra "V is in the array" còn lại in ra "V is not in the array".</p>
            <p><b>Bài 1- </b> Viết chương trình khởi tạo/nhập vào một mảng số nguyên gồm 10 phần tử, nhập/tạo phần tử số nguyên V. Chương trình kiểm tra xem V có thuộc mảng đã cho không, nếu V thuộc mảng đã cho xoá V khỏi mảng (Bản chất việc xoá ở đây tức là dịch phần tử ở bên phải V sang vị trí của V, và gán 0 cho phần tử cuối cùng của mảng)</p>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo/nhập vào một mảng số nguyên gồm 10 phần tử. Chương trình sắp xếp mảng theo thứ tự giảm dần và hiển thị ra mảng đã được sắp xếp.</p>
            <p><b>Bài 1- </b>Viết chương trình khởi tạo/nhập vào 2 mảng số nguyên gồm 10 phần tử, gọi là mảng a và b. Mảng c là một mảng được khai báo gồm 20 phần tử số nguyên. Chương trình sẽ lưu các phần tử được nối từ hai mảng b và a vào mảng c. Hiển thị mảng c.</p>

        </div>
    </div>
</div>
</body>
</html>
