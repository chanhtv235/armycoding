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
                <h4>[Thực hành] Tạo CSDL quản lý sinh viên</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Tạo được cơ sở dữ liệu và tạo được bảng. Sử dụng được các ràng buộc</p>

                <h5>Mô tả</h5>
                <p class="p1">- Xây dựng một cơ sở dữ liệu có tên là QuanLySinhVien với các bảng như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p3/img1.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module3/session2/img/p3/img2.png"
                     style="width:60%;">

                <h5>Hướng dẫn</h5>
                <p class="p1">Bước 1: Tạo cơ sở dữ liệu có tên là QuanLySinhVien bằng câu lệnh sau</p>
                <pre><code class="language-sql">
                CREATE DATABASE QuanLySinhVien;
             </code></pre>
                <p class="p1">Bước 2: Chọn Database QuanLySinhVien để thao tác với cơ sở dữ liệu này.</p>
                <pre><code class="language-sql">
                USE QuanLySinhVien;
            </code></pre>
                <p class="p1">Bước 3: Tiếp theo sử dụng câu lệnh Create Table
                    để tạo bảng Class với các trường ClassId, ClassName, StartDate, Status như sau:</p>
                <pre><code class="language-sql">
                    CREATE TABLE Class(
                       ClassID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       ClassName VARCHAR(60) NOT NULL,
                       StartDate DATETIME NOT NULL,
                       Status BIT

                    );
            </code></pre>
                <p class="p1">Bước 4: Tạo bảng Student với các thuộc tính </p>
                StudentId, StudentName, Address, Phone, Status, ClassId với các ràng buộc giống như trong mô tả ở
                trên:</p>
                <pre><code class="language-sql">
                    CREATE TABLE Student(
                              StudentId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                              StudentName VARCHAR(30) NOT NULL,
                              Address VARCHAR(50),
                              Phone VARCHAR(20),
                              Status BIT,
                              ClassId INT NOT NULL,
                              FOREIGN KEY (ClassId) REFERENCES Class (ClassID)

                    );
            </code></pre>
                <p class="p1">Bước 5: Tạo bảng Subject với các thuộc tính SubId, SubName, Credit, Status với các ràng
                    buộc giống như trong mô tả ở trên:</p>
                <pre><code class="language-sql">
                    CREATE TABLE Subject(
                             SubId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                             SubName VARCHAR(30) NOT NULL,
                             Credit TINYINT NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
                             Status BIT DEFAULT 1
                    )
            </code></pre>
                <p class="p1">Bước 6: Tạo bảng Mark với các thuộc tính MarkId, SubId, StudentId, Mark, ExamTimes với các
                    ràng buộc giống như trong mô tả ở trên:</p>
                <pre><code class="language-sql">
                    CREATE TABLE Mark(
                            MarkId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            SubId INT NOT NULL,
                            StudentId INT NOT NULL,
                            Mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
                            ExamTimes TINYINT DEFAULT 1,
                            UNIQUE (SubId, StudentId),
                            FOREIGN KEY (SubId) REFERENCES Subject (SubId),
                            FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
                     );
            </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
