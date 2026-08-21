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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <h4>[Bài tập] Đếm số lần xuất hiện của mỗi từ trong một chuỗi sử dụng Map</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng TreeMap</p>

                <h5>Mô tả</h5>
                <p>Chương trình đếm các lần xuất hiện của từ trong một văn bản và hiển thị các từ và sự xuất hiện của
                    chúng theo thứ tự trong bảng chữ cái của các từ.</p>

                <h5>Hướng dẫn</h5>
                <p>Chương trình sử dụng một TreeMap để lưu trữ một mục bao gồm một từ và số lượng của nó.</p>
                <p>Duyệt toàn bộ từ trong chuỗi.</p>
                <p>• Mỗi từ lấy ra từ chuỗi, chuyển toàn bộ thành chữ hoa hoặc chữ thường. Coi mỗi từ được lấy ra từ
                    chuỗi là 1 key.</p>
                <p>• Kiểm tra xem trong map có key này hay chưa. Nếu có đẩy key này vào map và tăng value (số lượng từ)
                    lên 1 Nếu key này chưa có trong map thì đẩy key vào map mặc định gán value là 1.</p>
                <p>Kết thúc duyệt chuỗi. Hiển thị map gồm key (từ) và value (số lượng mỗi từ).</p>

            </div>
        </div>
    </div>

</body>
</html>
