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
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2.Thiết kế cơ sở dữ liệu</a>
                <h4>[Thực hành] Quản lý đơn đặt hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Vẽ được sơ đồ ERD từ bài toán cho trước</p>

                <h5>Mô tả</h5>
                <p class="p1">Xây dựng mô hình ERD cho cơ sở dữ liệu quản lý đơn đặt hàng với các thông tin như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p1/img_0.png"
                     style="width:70%;">
                <h5>Hướng dẫn</h5>
                <p class="p0">Bước 1: Liệt kê, chọn lọc thông tin:</p>
                <p class="p1"><b>-Đơn đặt hàng</b> gồm những thông tin như sau:</p>
                <p class="p2">• Số đơn hàng (Số ĐH)</p>
                <p class="p2">• Tên đơn vị đặt hàng (Tên ĐV)</p>
                <p class="p2">• Địa chỉ</p>
                <p class="p2">• Điện thoại</p>
                <p class="p2">• Ngày đặt</p>
                <p class="p2">• Tên hàng</p>
                <p class="p2">• Mô tả</p>
                <p class="p2">• Đơn vị tính (Đv tính)</p>
                <p class="p2">• Số lượng</p>
                <p class="p2">• Người đặt hàng (Họ tên NĐ)</p>
                <p class="p1"><b>- Phiếu giao hàng </b> gồm những thông tin như sau:</p>
                <p class="p2">• Số phiếu giao hàng (Số PG)</p>
                <p class="p2">• Tên đơn vị đặt hàng (Tên ĐV)</p>
                <p class="p2">• Địa chỉ</p>
                <p class="p2">• Nơi giao hàng (Tên nơi GH)</p>
                <p class="p2">• Ngày giao</p>
                <p class="p2">• Tên hàng</p>
                <p class="p2">• Đơn vị tính (Đv tính)</p>
                <p class="p2">• Số lượng</p>
                <p class="p2">• Đơn giá</p>
                <p class="p2">• Thành tiền</p>
                <p class="p2">• Tên người nhận (Họ tên NN)</p>
                <p class="p2">• Tên người giao (Họ tên NG)</p>
                <p class="p0">Bước 2: Xác định thực thể, thuộc tính:</p>
                <p class="p1">- Thực thể ĐƠN VỊ ĐH gồm các thuộc tính sau: </p>
                <p class="p2"> • Mã ĐV</p>
                <p class="p2"> • Tên ĐV</p>
                <p class="p2"> • Địa chỉ</p>
                <p class="p2"> • Điện thoại</p>
                <p class="p1">- Thực thể ĐƠN VỊ KH gồm các thuộc tính sau:</p>
                <p class="p2"> • Mã ĐV </p>
                <p class="p2"> • Tên ĐV </p>
                <p class="p2"> • Địa chỉ</p>
                <p class="p1">- Thực thể HÀNG gồm các thuộc tính sau: </p>
                <p class="p2"> • Mã hàng </p>
                <p class="p2"> • Tên hàng </p>
                <p class="p2"> • Đv tính </p>
                <p class="p2"> • Mô tả hàng</p>
                <p class="p1">- Thực thể NGƯỜI ĐẶT gồm các thuộc tính sau:</p>
                <p class="p2"> • Mã số NĐ </p>
                <p class="p2"> • Họ tên NĐ</p>
                <p class="p1"> - Thực thể NƠI GIAO gồm các thuộc tính sau: </p>
                <p class="p2"> • Mã số ĐĐG </p>
                <p class="p2"> • Tên nơi giao </p>
                <p class="p1"> - Thực thể NGƯỜI NHẬN gồm các thuộc tính sau:</p>
                <p class="p2"> • Mã số NN </p>
                <p class="p2"> • Họ tên NN </p>
                <p class="p1"> - Thực thể NGƯỜI GIAO gồm các thuộc tính sau:</p>
                <p class="p2"> • Mã số NG </p>
                <p class="p2"> • Họ tên NG </p>
                <p class="p0">Bước 3: Xác định các mối quan hệ </p>
                <p class="p1">- Hai động từ tìm được là: Đặt, Giao.
                    Từ đó dựa vào hai động từ tìm được, đặt các câu hỏi để xác định các mối quan hệ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p1/img_1.png"
                     style="width:55%;">
                <p class="p1"> - Từ đó ta có các quan hệ như sau: </p>
                <p class="p2"> • Người đặt hàng THUỘC Đơn vị đặt hàng </p>
                <p class="p2"> • Người nhận hàng THUỘC Đơn vị khách hàng</p>
                <p class="p0"> Bước 4: Vẽ biểu đồ mô hình thực thể ERD </p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p1/img_2.png"
                     style="width:55%;">
                <p class="p0"> Bước 5: Chuẩn hóa, rút gọn mô hình thực thể ERD </p>
                <p class="p1"> Do đơn vị đặt hàng và đơn vị khách hàng đều là các đơn vị ở bên ngoài giao dịch với cửa
                    hàng
                    nên ta gộp thành một thực thể là Đơn vị khách gồm các thuộc tính: Mã ĐV, Tên ĐV, Địa chỉ, Điện
                    thoại </p>
                <p class="p1"> Ta có mô hình ERD như sau: </p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p1/img_3.png"
                     style="width:55%;">
            </div>
        </div>
    </div>
</div>


</body>
</html>
