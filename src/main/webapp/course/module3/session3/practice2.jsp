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
                <a href="/course/module3/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">3.Thao tác với CSDL</a>
                <h4>[Thực hành] Truy vấn dữ liệu với CSDL Quản lý sinh viên </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Sử dụng được các câu lệnh truy vấn trong MySQL</p>

                <h5>Mô tả</h5>

                <p>
                    Dựa vào CSDL Quản lý sinh viên đã được xây dựng trong bài thực hành trước (xem <a
                        href="/course?module=3&session=2&fileName=practice3">tại đây</a>), yêu cầu viết các câu truy
                    vấn như sau:
                </p>
                <p class="p1"> • Hiển thị danh sách tất cả các học viên </p>
                <p class="p1"> • Hiển thị danh sách các học viên đang theo học. </p>
                <p class="p1"> • Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.</p>
                <p class="p1"> • Hiển thị danh sách học viên lớp A1 </p>
                <p class="p1"> • Hiển thị điểm môn CF của các học viên. </p>

                <img src="${pageContext.request.contextPath}/course/module3/session3/img/p1/img.png"
                     style="width:40%;">
                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu:</p>
                <pre><code class="language-sql">
                    USE QuanLySinhVien;
                </code></pre>

                <p class="p0">Bước 2: Sử dụng câu lệnh Select * và lấy dữ liệu học viên từ bảng Student để hiển thị danh
                    sách tất cả các học viên như sau:</p>
                <pre><code class="language-sql">
                    SELECT *
                    FROM Student;
                </code></pre>
                <p class="p0">Bước 3: Để hiển thị danh sách học viên đang theo học cần phải sử dụng câu lệnh select ...
                    from kèm theo where để xét điều kiện truy vấn như sau:</p>
                <pre><code class="language-sql">
                    SELECT *
                    FROM Student
                    WHERE Status = true;
                </code></pre>
                <p class="p1">Trong đó status là trang thái học tập của học viên (true: đang học, fasle: nghỉ học)</p>
                <p class="p0">Bước 4: Sử dụng điều kiện where Credit < 10 và from Subject để lấy ra danh sách các môn
                    học có thời gian học nhỏ hơn 10:</p>
                <pre><code class="language-sql">
                    SELECT *
                    FROM Subject
                    WHERE Credit < 10;
                </code></pre>
                <p class="p0">Bước 5: Sử dụng câu lệnh Join và where để hiển thị danh sách học viên lớp A1</p>
                <p class="p1">Join 2 bảng Student và Class bằng câu lệnh sau:</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId, S.StudentName, C.ClassName
                    FROM Student S join Class C on S.ClassId = C.ClassID;
                </code></pre>

                <p class="p1">Sử dụng câu lệnh Where C.ClassName ='A1' để hiển thị danh sách học viên lớp A1</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId, S.StudentName, C.ClassName
                    FROM Student S join Class C on S.ClassId = C.ClassID
                    WHERE C.ClassName = 'A1';
                </code></pre>

                <p class="p0">Bước 6: Hiển thị điểm môn CF của các học viên</p>
                <p class="p1">Hiển thị tất cả các điểm đang có của học viên</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
                    FROM Student S
                    join Mark M on S.StudentId = M.StudentId
                    join Subject Sub on M.SubId = Sub.SubId
                </code></pre>

                <p class="p1">Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
                    FROM Student S
                    join Mark M on S.StudentId = M.StudentId
                    join Subject Sub on M.SubId = Sub.SubId
                    WHERE Sub.SubName = 'CF';
                </code></pre>

            </div>
        </div>
    </div>
</div>


</body>
</html>
