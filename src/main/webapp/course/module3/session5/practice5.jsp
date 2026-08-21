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
                <a href="/course/module3/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Index, view, stored procedure, function, trigger</a>
                <h4>[*Thực hành]Trigger trong MySql </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">•• Sử dụng được Trigger trong MySql.</p>

                <h5>Mô tả</h5>
                <p class="p1"> Trigger là một đối tượng cơ sở dữ liệu được sử dụng để kích hoạt một hành động tự động
                    (hoặc một tập hợp các hành động) khi có sự thay đổi dữ liệu xảy ra trong bảng hoặc các sự kiện khác
                    xảy ra trong CSDL. Trigger có thể được sử dụng để kiểm tra, thay đổi hoặc bổ sung dữ liệu dựa trên
                    các điều kiện và quy tắc được định nghĩa trước. </p>
                <p class="p1"> TKhi một sự kiện được kích hoạt (ví dụ: INSERT, UPDATE, DELETE) trong bảng liên quan đến
                    trigger, MySQL sẽ thực thi trigger và thực hiện các hành động được định nghĩa trong trigger đó. </p>
                <p class="p1"> Trigger thường được sử dụng để: </p>
                <p class="p2"> 1. Kiểm tra và xử lý các giá trị dữ liệu trước hoặc sau khi chúng được chèn, cập nhật
                    hoặc xóa trong bảng. </p>
                <p class="p2"> 2. Tự động thực hiện các hành động phụ thuộc vào các sự kiện xảy ra trong CSDL, ví dụ như
                    ghi log, cập nhật các bảng phụ, gửi thông báo, v.v. </p>
                <p class="p2"> 3. Hạn chế, kiểm tra tính hợp lệ hoặc áp dụng các quy tắc kinh doanh trước khi thay đổi
                    dữ liệu trong bảng. </p>
                <p class="p1"> Cú pháp tạo trigger trong MySQL như sau: </p>
                <pre><code class="language-sql">
                     DELIMITER //
                        CREATE TRIGGER trigger_name
                        {BEFORE | AFTER} {INSERT | UPDATE | DELETE}
                        ON table_name
                        FOR EACH ROW
                        BEGIN
                              -- Các hành động được thực hiện trong trigger
                        END //
                    DELIMITER ;
                </code></pre>
                <p class="p1"> Trong đó: </p>
                <p class="p2"> • trigger_name là tên của trigger. </p>
                <p class="p2"> • BEFORE hoặc AFTER xác định thời điểm trigger được kích hoạt. </p>
                <p class="p2"> • INSERT, UPDATE hoặc DELETE xác định loại sự kiện kích hoạt trigger. </p>
                <p class="p2"> • table_name là tên bảng mà trigger áp dụng. </p>
                <p class="p2"> • FOR EACH ROW chỉ ra rằng trigger sẽ được kích hoạt cho mỗi dòng bị ảnh hưởng. </p>
                <p class="p1"> Trigger trong MySQL là một công cụ mạnh mẽ để tăng tính tự động hóa và kiểm soát dữ liệu
                    trong CSDL. </p>

                <h5>Hướng dẫn</h5>
                <p class="p1"> Trong ví dụ này, chúng ta sẽ tạo một CSDL đơn giản cho việc quản lý nhân viên trong một
                    công ty.</p>
                <p class="p0">Bước 1: Tạo CSDL và Bảng</p>
                <p class="p1">Trước tiên, chúng ta cần tạo một CSDL mới và một bảng để lưu thông tin nhân viên. Chúng ta
                    sẽ sử dụng
                    câu lệnh SQL để tạo CSDL và bảng như sau:</p>
                <pre><code class="language-sql">
                    CREATE DATABASE company;
                    USE company;
                    CREATE TABLE employees (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(50) NOT NULL,
                          department VARCHAR(50) NOT NULL,
                          salary DECIMAL(10,2) NOT NULL
                    );
                </code></pre>


                <p class="p0">Bước 2: Tạo Trigger</p>
                <p class="p1">Tiếp theo, chúng ta sẽ tạo một trigger để tự động cập nhật trường "department" của bảng
                    "employees" khi thêm 1 bản ghi. Trigger này sẽ kiểm tra mức lương của nhân viên và cập nhật phòng
                    ban tương ứng.</p>
                <pre><code class="language-sql">
                    DELIMITER //
                        CREATE TRIGGER update_department
                        before INSERT ON employees
                        FOR EACH ROW
                        BEGIN
                             IF NEW.salary >= 5000 THEN
                                  SET new.department = 'Management';
                             ELSEIF NEW.salary >= 3000 THEN
                                  SET new.department = 'Sales';
                             ELSE
                                  SET new.department = 'Support';
                             END IF;
                        END //
                    DELIMITER ;
                </code></pre>

                <p class="p1">Trong trigger trên, chúng ta sử dụng câu lệnh IF-ELSEIF-ELSE để kiểm tra mức lương của
                    nhân viên và cập nhật phòng ban tương ứng dựa trên mức lương đó.</p>


                <p class="p0"> Bước 3: Demo sử dụng trigger </p>
                <p class="p1"> Giả sử chúng ta có một số dữ liệu ban đầu trong bảng "employees". Chúng ta có thể thêm dữ
                    liệu như sau:</p>
                <pre><code class="language-sql">
                    INSERT INTO employees (name, department, salary)
                    VALUES ('John Doe', 'A', 3500),
                           ('Jane Smith', 'A', 2000),
                           ('David Johnson', 'A', 6000);
                </code></pre>
                <p class="p1">Khi chúng ta chạy câu lệnh trên, trigger sẽ được kích hoạt và tự động cập nhật trường
                    "department" của các nhân viên được thêm vào.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
