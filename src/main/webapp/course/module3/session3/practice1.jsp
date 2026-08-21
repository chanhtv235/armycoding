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
                <h4>[Thực hành] Thêm dữ liệu vào trong cơ sở dữ liệu quản lý sinh viên </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">•	Sử dụng được câu lệnh insert into để thêm dữ liệu vào trong bảng</p>

                <h5>Mô tả</h5>
                <p class="p1">•	Sử dụng cơ sở dữ liệu quản lý sinh viên đã được xây dựng ở bài thực hành trước(xem <a href="/course?module=3&session=2&fileName=practice3">tại đây</a>).
                    Sử dụng câu lệnh insert into để thêm dữ liệu vào trong các bảng như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module3/session3/img/p1/img.png"
                     style="width:40%;">
                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu:</p>
                <pre><code class="language-sql">
                    USE QuanLySinhVien;
                </code></pre>

                <p class="p0">Bước 2:Thêm lần lượt các bản ghi vào trong bảng Class như trong mô tả ở trên:</p>
                <pre><code class="language-sql">
                    INSERT INTO Class VALUES (1, 'A1', '2008-12-20', 1);
                    INSERT INTO Class VALUES (2, 'A2', '2008-12-22', 1);
                    INSERT INTO Class VALUES (3, 'B3', current_date, 0);
                </code></pre>

                <p class="p0">Bước 3: Thêm dữ liệu vào trong bảng Student bằng các câu lệnh insert into như sau:</p>
                <pre><code class="language-sql">
                    INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
                                 VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
                    INSERT INTO Student (StudentName, Address, Status, ClassId)
                                 VALUES ('Hoa', 'Hai phong', 1, 1);
                    INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
                                 VALUES ('Manh', 'HCM', '0123123123', 0, 2);

                </code></pre>

                <p class="p0">Bước 4: Thêm dữ liệu nhanh vào trong bảng Subject:</p>
                <pre><code class="language-sql">
                INSERT INTO Subject VALUES (1, 'CF', 5, 1),
                                           (2, 'C', 6, 1),
                                           (3, 'HDJ', 5, 1),
                                           (4, 'RDBMS', 10, 1);
                </code></pre>

                <p class="p0">Bước 5: Thêm dữ liệu vào trong bảng Mark bằng câu lệnh insert into như sau:</p>
                <pre><code class="language-sql">
                    INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
                    VALUES (1, 1, 8, 1),
                           (1, 2, 10, 2),
                           (2, 1, 12, 1);
                </code></pre>


                <p class="p0"></p>
                <pre><code class="language-sql">

                </code></pre>


                <p class="p0"></p>
                <pre><code class="language-sql">

                </code></pre>


                <p class="p0"></p>
                <pre><code class="language-sql">

                </code></pre>

            </div>
        </div>
    </div>
</div>


</body>
</html>
