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
                <a href="/course/module3/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2.Thiết kế cơ sở dữ liệu</a>
                <h4>[Thực hành] Tạo bảng trong CSDL </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Tạo được bảng trong CSDL bằng câu lệnh</p>

                <h5>Mô tả</h5>
                <p class="p1">- Tạo cơ sở dữ liệu với tên QuanLyDiemThi gồm 4 bảng như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p2/img.png"
                     style="width:35%;">
                <p class="p0"> Yêu cầu </p>
                <p class="p1"> -Sử dụng câu lệnh tạo bảng với đầy đủ khoá chính và tạo liên kết giữa các bảng </p>

                <h5>Hướng dẫn</h5>
                <p class="p1">Bước 1: Tạo cơ sở dữ liệu có tên là QuanLyDiemThi bằng câu lệnh:</p>
                <pre><code class="language-sql">
                CREATE DATABASE QuanLyDiemThi;
             </code></pre>
                <p class="p1">Bước 2: Chọn Database QuanLyDiemThi để thao tác với cơ sở dữ liệu này:</p>
                <pre><code class="language-sql">
                USE QuanLyDiemThi;
            </code></pre>
                <p class="p1">Bước 3: Tiếp theo sử dụng câu lệnh Create Table để tạo bảng HocSinh với code sau:</p>
                <pre><code class="language-sql">
                CREATE TABLE HocSinh(
                MaHS VARCHAR(20) PRIMARY KEY,
                TenHS VARCHAR(50),
                NgaySinh DATETIME,
                Lop VARCHAR(20),
                GT VARCHAR(20)
                );
            </code></pre>
                <p class="p1">Bước 4: Tạo bảng MonHoc với code sau:</p>
                <pre><code class="language-sql">
                CREATE TABLE MonHoc(
                MaMH VARCHAR(20) PRIMARY KEY,
                TenMH VARCHAR(50),
                MaGV VARCHAR(20)

                );
            </code></pre>
                <p class="p1">Bước 5: Tạo bảng BangDiem là bảng trung gian của mối quan hệ n - n giữa 2 thực thể HocSinh
                    và MonHoc với với code sau:</p>
                <pre><code class="language-sql">
                CREATE TABLE BangDiem(
                MaHS VARCHAR(20),
                MaMH VARCHAR(20),
                DiemThi INT,
                NgayKT DATETIME,
                PRIMARY KEY (MaHS, MaMH),
                FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
                FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
                );
            </code></pre>
                <p class="p1">Bước 6: Tạo bảng GiaoVien với code sau:</p>
                <pre><code class="language-sql">
                CREATE TABLE GiaoVien(
                MaGV VARCHAR(20) PRIMARY KEY,
                TenGV VARCHAR(20),
                SDT VARCHAR(10)
                );
            </code></pre>
                <p class="p1">Bước 7: Chỉnh sửa lại bảng MonHoc bổ sung thêm khoá ngoại của bảng MonHoc:</p>
            <pre><code class="language-sql">
            ALTER TABLE MonHoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);
             </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
