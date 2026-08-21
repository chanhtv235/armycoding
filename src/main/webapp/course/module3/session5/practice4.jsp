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
                <h4>[Thực hành] View trong MySql </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">•Tạo view trên cơ sở dữ liệu classicmodels..</p>

                <h5>Mô tả</h5>
                <p class="p1">• Thực hành tạo store procedure trên cơ sở dữ liệu classicmodels</p>
                <p class="p2">Chúng ta có bảng customers như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p2/img.png"
                     style="width:55%;">
                <h5>Hướng dẫn</h5>
                <p class="p1"> Tạo View có tên customer_views truy vấn dữ liệu từ bảng customers để lấy các dữ liệu:
                    customerNumber, customerName, phone bằng câu lệnh SELECT: </p>

                <pre><code class="language-sql">
                    CREATE VIEW customer_views AS
                    SELECT customerNumber, customerName, phone
                    FROM  customers;
                </code></pre>

                <p class="p1">Kết quả, ta sẽ có 1 bảng ảo customer_views, và sau đó chúng ta hoàn toàn có thể lấy dữ
                    liệu từ bảng ảo này bằng lệnh:</p>
                <pre><code class="language-sql">
                    select * from customer_views;
                </code></pre>

                <p class="p1">Kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p4/img.png"
                     style="width:40%;">

                <p class="p0"> Cập nhật view </p>
                <p class="p1"> Một view có thể cập nhật khi nó thỏa mãn các điều kiện </p>
                <p class="p2"> • View được định nghĩ từ một và chỉ một bảng cơ sở </p>
                <p class="p2"> • Trong câu lệnh SELECT định nghĩa view không được sử dụng từ khoá DISTINCT, TOP, GROUP
                    BY, HAVING, ORDER_BY và UNION. </p>
                <p class="p2"> • Trong view không có bất kỳ SUBQUERIES nào được định nghĩa </p>
                <p class="p2"> • Các thành phần xuất hiện trong danh sách chọn của câu lệnh SELECT phải là các cột trong
                    các bảng cơ sở. Trong danh sách chọn không được chứa các biểu thức tính toán, các hàm gộp. </p>
                <p class="p2"> • Các cột được ước lượng không thể bị cập nhật. </p>
                <p class="p2"> • Tất cả các cột NOT NULL từ bảng ban đầu phải được bao trong view để cho truy vấn INSERT
                    vận hành. </p>
                <p class="p2"> • Khi view của bạn thỏa mãn tất cả các quy tắc trên thì bạn có thể cập nhật view bằng câu
                    lệnh: </p>

                <pre><code class="language-sql">
                    CREATE OR REPLACE VIEW view_name AS
                    SELECT column1, column2, ...
                    FROM table_name
                </code></pre>

                <p class="p1">VD: Cập nhật view customer_views: </p>

                <pre><code class="language-sql">
                    CREATE OR REPLACE VIEW customer_views AS
                    SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
                    FROM customers
                    WHERE city = 'Nantes';
                </code></pre>

                <p class="p1">Kết quả</p>
                <img src="${pageContext.request.contextPath}/course/module3/session5/img/p4/img_1.png"
                     style="width:55%;">

                <p class="p0">Xoá view</p>
                <p class="p1">Khi bạn đã có 1 view, nhưng khi không sử dụng đến nó nữa, thì chúng ta nên xóa view đó đi.
                    cú pháp để xóa view như sau:</p>
                <pre><code class="language-sql">
                    DROP VIEW view_name;
                </code></pre>

                <p class="p1">Ví dụ: xoá view customer_views:</p>
                <pre><code class="language-sql">
                    DROP VIEW customer_views;
                </code></pre>
            </div>
        </div>
    </div>
</div>
</body>
</html>
