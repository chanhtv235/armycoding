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
            <h4>[Bài tập] Luyện tập vòng lặp 01</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng vòng lặp.</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1:</b> Sử dụng vòng lặp để đếm từ 1 đến 100. Khi số là 99, hiển thị hộp thoại thông báo là đã hoàn
                thành.</p>
            <p><b>Bài 2:</b> Sử dụng hàm prompt() để lấy thông tin nhiệt độ hiện tại được nhập bởi người truy cập.
            <p> Nếu nhiệt độ nhập vào trên 100, yêu cầu người dùng giảm nhiệt độ.</p>
            <p>Nếu nhiệt độ dưới 20, yêu cầu người dùng tăng nhiệt độ.</p>
            <p><b>Bài 3:</b> Hiển thị ra 20 số trong dãy fibonacci đầu tiên.</p>
            <p><b>Bài 4: </b>Tìm số đầu tiên trong dãy fibonacci chia hết cho 5.</p>
            <p><b>Bài 5:</b> Tính tổng của 20 số đầu tiên trong dãy fibonacci.</p>
            <p><b>Bài 6:</b> Tính tổng của 30 số chia hết cho 7 đầu tiên trong các số tự nhiên.</p>
            <p><b>Bài 7:</b> Hãy viết một chương trình in ra các số từ 1 đến 100.</p>
            <p>Nhưng nếu số chia hết cho 3 thì in ra "Fizz", 5 thì in ra "Buzz" thay vì in ra số đó.</p>
            <p>Và nếu số đó chia hết cho cả 3 và 5 thì in ra chữ "FizzBuzz".</p>
            <p><b>Bài 8:</b> Game đoán số</p>
            <p>Nâng cấp game "Hãy thử đoán xem!"</p>
            <p>1. Thiết kế giao diện: Giao diện chỉ gồm 1 Button "Chơi": cho phép người dùng bắt đầu chơi hoặc chơi lại</p>
            <p>2. Mô tả ứng dụng: Khi người dùng nhấn vào button “Chơi”:</p>
            <p>• Ứng dụng hiển thị cửa sổ prompt cho phép người dùng nhập vào muốn đoán trong khoảng nào</p>
            <p>• Ứng dụng chọn ra số ngẫu nhiên trong khoảng mà ngườI dùng chọn</p>
            <p>• Ứng dụng hiển thị cửa số prompt cho người dùng nhập giá trị mà người dùng đoán</p>
            <p>• Ứng dụng lấy kết quả và so sánh với giá trị ngẫu nhiên.</p>
            <p> o Nếu bằng thì hiển thị thông báo chúc mừng và kết thúc lượt chơi</p>
            <p> o Nếu lớn hơn hoặc bé thua thì hiển thị thông báo lớn hơn hay bé thua và cho phép người dùng lựa chọn lại.</p>
            <p><b>Chú ý:</b> Người dùng chỉ được lựa chọn tối đa ba lần</p>


        </div>
    </div>
</div>
</body>
</html>
