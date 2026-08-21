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
                <h4>[Thực hành] Sử dụng các hàm thông dụng trong SQL</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Luyện tập sử dụng các hàm và câu lệnh Group By trong MySQL.</p>

                <h5>Mô tả</h5>
                <p class="p1">Sử dụng CSDL QuanLySinhVien đã được xây dựng trong các bài thực hành trước(xem <a
                        href="/course?module=3&session=2&fileName=practice3">tại đây</a>), hãy sử dụng các hàm thông
                    dụng và câu lệnh Group By để xử lý các yêu cầu sau:</p>

                <p class="p2"> • Hiển thị số lượng sinh viên ở từng nơi </p>
                <p class="p2"> • Tính điểm trung bình các môn học của mỗi học viên </p>
                <p class="p2"> • Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15</p>
                <p class="p2"> • Hiển thị thông tin các học viên có điểm trung bình lớn nhất. </p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu:</p>
                <pre><code class="language-sql">
                    USE QuanLySinhVien;
                </code></pre>

                <p class="p0">Bước 2: Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi</p>
                <pre><code class="language-sql">
                    SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
                    FROM Student
                    GROUP BY Address;
                </code></pre>

                <p class="p0">Bước 3: Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId,S.StudentName, AVG(Mark)
                    FROM Student S join Mark M on S.StudentId = M.StudentId
                    GROUP BY S.StudentId, S.StudentName;
                </code></pre>

                <p class="p0">Bước 4: Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15</p>
                <p class="p1">Đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId,S.StudentName, AVG(Mark)
                    FROM Student S join Mark M on S.StudentId = M.StudentId
                    GROUP BY S.StudentId, S.StudentName
                </code></pre>

                <p class="p0">Sử dụng having để xét điều kiện điểm trung bình các môn học phải lớn hơn 15</p>
                <pre><code class="language-sql">
                    SELECT S.StudentId,S.StudentName, AVG(Mark)
                    FROM Student S join Mark M on S.StudentId = M.StudentId
                    GROUP BY S.StudentId, S.StudentName
                    HAVING AVG(Mark) > 15;
                </code></pre>
                <p class="p0">Bước 5: Hiển thị thông tin các học viên có điểm trung bình lớn nhất.</p>
                <p class="p1">Hiển thị danh sách điểm trung bình của các học viên</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
