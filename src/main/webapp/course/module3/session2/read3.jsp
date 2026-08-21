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
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Thiết kế CSDL</a>
                <div role="main" id="yui_3_17_2_1_1714149588843_22"><span id="maincontent"></span><h2>[Bài đọc] Mô hình dữ liệu quan hệ</h2><div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714149588843_21"><div class="no-overflow" id="yui_3_17_2_1_1714149588843_20"><h2>Mục tiêu</h2>
                    <p>- Tìm hiểu về mô hình dữ liệu quan hệ.</p>
                    <p id="yui_3_17_2_1_1714149588843_25">- Các chuyển đổi từ ERD sang mô hình dữ liệu quan hệ.</p>
                    <h2>Nội dung</h2>
                    <p></p>
                    <h3>Mô hình dữ liệu quan hệ là gì ?</h3>
                    <p>Mô hình dữ liệu quan hệ(Relational Data Model)&nbsp; bao gồm một hoặc nhiều quan hệ (Relation).</p>
                    <p>Thực thể và thuộc tính trong mô hình ERD trở thành quan hệ và thuộc tính của quan hệ. Mối kết hợp sẽ trở thành khoá ngoại.</p>
                    <h3>Quy tắc chuyển đổi ERD sang mô hình dữ liệu quan hệ</h3>
                    <p><strong>1. Các Entity(Thực thể)</strong></p>
                    <p>Mỗi entity sẽ được chuyển đổi&nbsp; thành 1 bảng. Trong đó:</p>
                    <ul>
                        <li><strong></strong>Các thuộc tính của ERD sẽ trở thành các trường của bảng.</li>
                        <li>Thuộc tính khoá chính của ERD sẽ trở thành khoá chính của bảng</li>
                    </ul>
                    <p><strong>2. Kiểm tra mỗi quan hệ giữa các thực thể</strong></p>
                    <p><strong>a. Mối quan hệ 1 - n:</strong></p>
                    <p>Đối với mối quan hệ 1 - nhiều chúng ta sẽ bổ sung khóa chính của bảng 1 làm khóa ngoại của bảng nhiều.</p>
                    <p>Ví dụ&nbsp;thực thể PhongBan và&nbsp;thực thể NhanVien có mối quan hệ 1 - nhiều (1 phòng ban có nhiều nhân viên) thì khi đó bảng NhanVien sẽ có thêm một khóa ngoại là MaPHG (đây là khóa chính Bảng phòng ban)</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50415/mod_page/content/4/chuyen-mo-hinh-thuc-the-sang-mo-hinh-du-lieu-3.png" width="550" height="184"></p>
                    <p>Từ hình trên ta sẽ thu được 2 bảng:</p>
                    <ul>
                        <li>NHANVIEN(<span style="text-decoration: underline;">MaNV</span>, HoNV, TenNV, GT, NS, Luong, DiaChi, MaPHG)</li>
                        <li>PHONGBAN(<span style="text-decoration: underline;">MaPHG</span>, TenPHG)</li>
                    </ul>
                    <p><strong>b. Mối quan hệ 1 - 1:</strong></p>
                    <p>Đối với mối quan hệ 1 - 1 chúng ta sẽ bổ sung khóa chính của bên này làm khóa ngoại của bảng bên kia</p>
                    <p>Ví dụ thực thể NhanVien có mối quan hệ 1 - 1 với thực thể MayTinh (Mỗi nhân viên chỉ có 1 máy tính) thì chúng ta sẽ bổ sung thêm MaNV làm khóa ngoại của bảng MayTinh</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50415/mod_page/content/4/chuyen-mo-hinh-thuc-the-sang-mo-hinh-du-lieu-2.png" width="593" height="195"></p>
                    <p>Từ hình trên ta sẽ thu được kết quả là 2 bảng:</p>
                    <ul>
                        <li>NHANVIEN(<span style="text-decoration: underline;">MaNV</span>, HoNV, TenNV, GT, NS, Luong, DiaChi)</li>
                        <li>MAYTINH(<span style="text-decoration: underline;">SoMay</span>, TenMay, MaNV)</li>
                    </ul>
                    <p><strong>c. Mối quan hệ n - m(nhiều - nhiều):</strong></p>
                    <p>Đối với mối quan n - m để chuyển đổi từ ERD sang mô hình dữ liệu quan hệ sẽ phải làm các bước như sau:</p>
                    <p>Bước 1: Tạo ra bảng trung gian được sinh ra từ mối quan hệ n - m với chứa khóa chính của 2 bảng chuyển hóa thành khóa ngoại của bảng trung gian cùng với các thuộc tính của mối quan hệ</p>
                    <p>Bước 2: Xác định khóa trung gian như sau:</p>
                    <ul>
                        <li>Nếu cặp khóa ngoại đủ điều kiện để đảm bảo thành khóa chính thì sẽ chọn cặp khóa ngoại thành khóa chính</li>
                        <li>Nếu cặp khóa ngoại không đủ điều kiện để đảm bảo tính duy nhất và not null thì phải tạo thêm một trường mới là mã của bảng trung gian làm khóa chính</li>
                    </ul>
                    <p>Ví dụ thực thể NhanVien có mối quan hệ n - m với thực thể DuAn (Một nhân viên có thể làm nhiều dự án và một dự án có thể do nhiều nhân viên thực hiện) thì chúng ta sẽ làm như sau:</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50415/mod_page/content/4/chuyen-mo-hinh-thuc-the-sang-mo-hinh-du-lieu-4.png" width="558" height="232"></p>
                    <p>Từ hình trên ta thu được các bảng như sau:</p>
                    <ul>
                        <li>NHANVIEN(<span style="text-decoration: underline;">MaNV</span>, HoNV, TenNV, GT, NS, Luong, DiaChi)</li>
                        <li>DEAN(M<span style="text-decoration: underline;">aDA</span>, TenDA, DDiem_DA)</li>
                        <li>PHANCONG(MaNV, MaDA, ThoiGian)</li>
                    </ul>
                    <p><b>d. Thuộc tính đa trị</b></p>
                    <p>Đối với các thuộc tính đa trị của một thực thể chúng ta sẽ chuyển đổi thành một quan hệ mới (bảng mới) có khóa chính bao gồm 2 thuộc tính là thuộc tính đa trị và thuộc tính khóa của thực thể đồng thời loại bỏ thuộc tính đó khỏi thực thể cũ.</p>
                    <p>Ví dụ: Thực thể NhanVien có thuộc tính đa trị là bằng cấp khi đó chúng ta chuyển đổi sang mô hình dữ liệu quan hệ sẽ sinh thêm một bảng có tên là NV_BangCap với khóa chính là MaNV và BangCap và đồng thời xóa bỏ trường BangCap khỏi bảng NhanVien</p>
                    <p><img src="https://james.codegym.vn/pluginfile.php/50415/mod_page/content/4/thuoc-tinh-da-tri.png" width="556" height="198"></p>
                    <p>Từ hình trên chúng ta thu được 2 bảng:</p>
                    <ul>
                        <li>NHANVIEN(<span style="text-decoration: underline;">MaNV</span>, HoNV, TenNV, GT, NS, Luong, DiaChi)</li>
                        <li>NV_BANGCAP(<span style="text-decoration: underline;">MaNV, BangCap</span>)</li>
                    </ul>
                    <div id="gtx-trans" style="position: absolute; left: 215px; top: 1093.4px;">
                        <div class="gtx-trans-icon"></div>
                    </div></div></div><div class="modified">Last modified: Sunday, 22 May 2022, 11:13 PM</div></div>


            </div>
        </div>
    </div>
</body>
</html>
