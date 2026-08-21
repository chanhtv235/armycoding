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
            <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 6.Cấu trúc điều kiện </a>
            <h4>[Bài tập] Luyện tập cấu trúc điều kiện 01</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập cấu trúc điều kiện if, if...else, if lồng nhau</p>
            <h5>Mô tả</h5>
            <h6>Bài 1: Nhập vào hai số a và b, và kiểm tra xem a có chia hết cho b hay không</h6>
            <h6> Bài 2: Nhập tuổi và in ra kết quả nếu tuổi học sinh đó không đủ điều kiện vào học lớp 10.</h6>

            <h6> Bài 3: Nhập một số nguyên bất kỳ và in kết quả ra màn hình để nói cho người dùng biết số đó
                là lớn hay nhỏ hơn 0
            </h6>
            <h6> Bài 4: Nhập 3 số nguyên và tìm giá trị lớn nhất của ba số nguyên đó</h6>
            <h6> Bài 5: Xếp hạng học lực của học sinh dựa trên các điểm bài kiểm tra, điểm thi giữa kỳ, điểm thi cuối
                kỳ</h6>
            <h6> Bài 6: Tính hoa hồng nhận được tuỳ theo mức doanh số bán hàng</h6>
            <p>- Hoa hồng doanh thu được tính theo quy tắc sau:</p>
            <p>+ Doanh thu <= 10tr: 0%</p>
            <p>+ Doanh thu từ 10tr đến bằng 20tr: 10%</p>
            <p>+ Doanh thu từ 20tr đến bằng 50tr: 15%</p>
            <p>+ Doanh thu trên 50tr: 20%</p>
            <h6> Bài 7: Viết chương trình  tính cước phí điện thoại hàng tháng dựa trên:</h6>
            <pre><p>
                -Số phút gọi: nhập -Loại cuộc gọi (chọn) 1.
                    Nội mạng: 1000 VNĐ/phút 2.
                    Ngoại mạng: 1200 VNĐ/phút 3.
                    Quốc tế :2000VNĐ/phút
                -Loại thuê bao:(chọn)
                    1. Thuê bao trả trước: giảm 0% tổng tiến phải thanh toán
                    2. Thuê bao trả sau: giảm 5% tổng tiến phải thanh toán
                -Khung giờ gọi(chọn 1 trong ba)
                    1. Giờ cao điểm : phải trả thêm 1%
                    2. Giờ bình thường: không phải trả thêm phí
                    3. Giờ ưu đãi: được giảm 2% tổng tiền thanh toán
                -Phương thức thanh toán: (chọn một trong 3)
                    1. Tiền mặt: không mất phí
                    2. Chuyển khoản: được giảm thêm 1% tổng tiền thanh toán
                    3. Ví điện tử: được giảm thêm 2% tổng tiền thanh toán

        <strong>- Tổng tiền phải trả  = (số phút x loại cước goi) x tổng % các loại giảm giá</strong>
                </p>
            </pre>
        </div>
    </div>
</div>
</body>
</html>
