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

                <h4>[Optional] [Bài tập] Chuyển đổi từ hệ thập phân sang hệ nhị phân</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Stack</p>

                <h5>Mô tả</h5>
                <p>Chuyển đổi từ hệ thập phân sang hệ chị phân. Các hệ số hay sử dụng: hệ thập phân (Decimal); hệ nhị
                    phân (Binary); hệ 16 (Hexadecimal). Con người thường sử dụng hệ thập phân. Đối với máy tính, thường
                    sử dụng hệ nhị phân. Hệ 16 là hệ trung gian giữa hệ thập phân và hệ nhị phân..</p>
                <p></p>
                <p>VD: 111 = (01101111)B = (6F)H</p>
                <p>Việc chuyển đổi giữa các hệ số thường xét:</p>
                <p>•	Chuyển đổi từ hệ thập phân sang hệ nhị phân.</p>
                <p>•	Chuyển đổi từ hệ nhị phân sang hệ thập phân.</p>
                <p>•	Chuyển đổi từ hệ thập phân sang hệ 16.</p>
                <p>•	Chuyển đổi từ hệ 16 sang hệ thập phân.</p>
                <p>Hướng dẫn chuyển từ số thập phân sang nhị phân:</p>
                <p>+ Ban đầu ta lấy 30/2 được thương là 15 dư 0</p>
                <p>+ Tiếp theo lấy 15/2  được thương là 7 dư 1</p>
                <p>+ Tiếp theo lấy 7/2 được thương là 3 dư 1</p>
                + Tiếp tục như vậy đến khi nào thương là 0 rồi dừng</p>
                <p>==> Đọc số dư từ dưới lên 11110 chính là số nhị phân của số 30</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-e4.png"
                     style="width: 70%;">

                <h5>Hướng dẫn</h5>
                <p>Ý tưởng:</p>
                <p>VD: Chuyển đổi từ hệ thập phân sang hệ nhị phân sử dụng Stack:</p>
                <p>1. Khởi tạo một Stack rỗng.</p>
                <p>2. Chuyển đổi số từ dạng thập phân sang nhị phân bằng phép chia lấy dư cho 2.</p>
                <p>3. Kết quả của phép chia được đưa vào Stack.</p>
                <p>4. Đọc từ Stack cho đến hết, kết quả được nối với nhau để tạo thành chuỗi.</p>
                <p>5. Kết thúc giải thuật.
                <p>Hãy xây dựng chương trình chuyển đổi hệ thập phân sang hệ chị phân sử dụng Stack</p>

            </div>
        </div>
    </div>

</body>
</html>
