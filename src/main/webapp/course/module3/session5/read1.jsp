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
                <a href="${pageContext.request.contextPath}/course/module3/session5/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 5.Index, view, stored procedure, function, trigger</a>
                <div role="main" id="yui_3_17_2_1_1714161532554_21"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714161532554_20">[Bài đọc] SQL - Using Views</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714161532554_26">
                        <div class="no-overflow" id="yui_3_17_2_1_1714161532554_25"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về VIEW trong SQL, cú pháp và thao tác với VIEW.</p>
                            <h2 id="yui_3_17_2_1_1714161532554_24">Nội dung</h2>
                            <p>Một khung nhìn (view) là một câu lệnh SQL được lưu trữ trong cơ sở dữ liệu với một tên
                                xác định. Một view thực sự là một thành phần của một bảng dưới dạng truy vấn SQL được
                                xác định trước.</p>
                            <p>Một view có thể chứa tất cả các hàng của một bảng hoặc chọn các hàng từ một bảng. Một
                                view &nbsp;có thể được tạo từ một hoặc nhiều bảng phụ thuộc vào truy vấn SQL để tạo ra
                                một view.</p>
                            <p>View là một loại bảng ảo cho phép người dùng thực hiện các thao tác sau:</p>
                            <ul>
                                <li>Cấu trúc dữ liệu theo cách mà người dùng tìm thấy tự nhiên hoặc trực quan.</li>
                                <li>Hạn chế quyền truy cập vào dữ liệu theo cách mà người dùng có thể nhìn thấy và (đôi
                                    khi) sửa đổi chính xác những gì họ cần.
                                </li>
                                <li>Tóm tắt dữ liệu từ các bảng khác nhau có thể được sử dụng để tạo báo cáo.</li>
                            </ul>
                            <h3>Tạo Views</h3>
                            <p>Các view cơ sở dữ liệu được tạo bằng cách sử dụng câu lệnh CREATE VIEW. View có thể được
                                tạo từ một bảng hoặc nhiều bảng.</p>
                            <p>Để tạo view, người dùng phải có đặc quyền hệ thống phù hợp theo cách triển khai cụ
                                thể.</p>
                            <p>Cú pháp tạo VIEW cơ bản như sau:</p>
                            <pre><code class="language-sql">
CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE [condition];
                            </code></pre>
                            <p>Bạn có thể truy vấn nhiều bảng trong câu lệnh SELECT của mình theo cách tương tự như khi
                                bạn sử dụng chúng trong truy vấn SQL SELECT thông thường.</p>
                            <p>Ví dụ:</p>
                            <p>Xem xét bảng CUSTOMERS có các bản ghi sau:</p>
                            <div>
                                <pre>+----+----------+-----+-----------+----------+</pre>
                                <pre>| ID | NAME&nbsp;&nbsp;&nbsp;&nbsp; | AGE | ADDRESS&nbsp;&nbsp; | SALARY&nbsp;&nbsp; |</pre>
                                <pre>+----+----------+-----+-----------+----------+</pre>
                                <pre>|&nbsp; 1 | Ramesh&nbsp;&nbsp; |&nbsp; 32 | Ahmedabad |&nbsp; 2000.00 |</pre>
                                <pre>|&nbsp; 2 | Khilan&nbsp;&nbsp; |&nbsp; 25 | Delhi&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1500.00 |</pre>
                                <pre>|&nbsp; 3 | kaushik&nbsp; |&nbsp; 23 | Kota&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</pre>
                                <pre>|&nbsp; 4 | Chaitali |&nbsp; 25 | Mumbai&nbsp;&nbsp;&nbsp; |&nbsp; 6500.00 |</pre>
                                <pre>|&nbsp; 5 | Hardik&nbsp;&nbsp; |&nbsp; 27 | Bhopal&nbsp;&nbsp;&nbsp; |&nbsp; 8500.00 |</pre>
                                <pre>|&nbsp; 6 | Komal&nbsp;&nbsp;&nbsp; |&nbsp; 22 | MP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 4500.00 |</pre>
                                <pre>|&nbsp; 7 | Muffy&nbsp;&nbsp;&nbsp; |&nbsp; 24 | Indore&nbsp;&nbsp;&nbsp; | 10000.00 |</pre>
                                <pre>+----+----------+-----+-----------+----------+</pre>
                            </div>
                            <p>&nbsp;Sau đây là một ví dụ để tạo view từ bảng CUSTOMERS. View sau đây sẽ được sử dụng để
                                lấy tên và tuổi của khách hàng từ bảng CUSTOMERS:</p>
                            <pre><code class="language-sql">
CREATE VIEW CUSTOMERS_VIEW AS
SELECT name, age
FROM  CUSTOMERS;
                            </code></pre>
                            <p>Bây giờ, bạn có thể truy vấn CUSTOMERS_VIEW theo cách tương tự như khi bạn truy vấn một
                                bảng thực tế. Sau đây là một ví dụ:</p>
                            <pre><code class="language-sql">
SELECT * FROM CUSTOMERS_VIEW;
                            </code></pre>
                            <p>Điều này sẽ tạo ra kết quả sau đây:</p>
                            <pre>+----------+-----+</pre>
                            <pre>| name&nbsp;&nbsp;&nbsp;&nbsp; | age |</pre>
                            <pre>+----------+-----+</pre>
                            <pre>| Ramesh&nbsp;&nbsp; | &nbsp;32 |</pre>
                            <pre>| Khilan&nbsp;&nbsp; |&nbsp; 25 |</pre>
                            <pre>| kaushik&nbsp; |&nbsp; 23 |</pre>
                            <pre>| Chaitali |&nbsp; 25 |</pre>
                            <pre>| Hardik&nbsp;&nbsp; |&nbsp; 27 |</pre>
                            <pre>| Komal&nbsp;&nbsp;&nbsp; |&nbsp; 22 |</pre>
                            <pre>| Muffy&nbsp;&nbsp;&nbsp; |&nbsp; 24 |</pre>
                            <pre>+----------+-----+<br><br><br></pre>
                            <p><strong>WITH CHECK OPTION:</strong></p>
                            <p>WITH CHECK OPTION là tùy chọn với câu lệnh CREATE VIEW. Mục đích của WITH CHECK OPTION là
                                để đảm bảo rằng tất cả các UPDATE và INSERT đều đáp ứng (các) điều kiện trong định nghĩa
                                view.</p>
                            <p>Nếu chúng không thỏa mãn (các) điều kiện, thì UPDATE hoặc INSERT trả về lỗi.</p>
                            <p>Khối mã sau đây có một ví dụ về việc tạo cùng một view CUSTOMERS_VIEW với WITH CHECK
                                OPTION:</p>
                            <pre><code class="language-sql">
CREATE VIEW CUSTOMERS_VIEW AS
SELECT name, age
FROM  CUSTOMERS
WHERE age IS NOT NULL
WITH CHECK OPTION;
                            </code></pre>
                            <p>WITH CHECK OPTION trong trường hợp này sẽ từ chối mục nhập của bất kỳ giá trị NULL nào
                                trong cột AGE của view, bởi vì view được xác định bởi dữ liệu không có giá trị NULL
                                trong cột AGE.</p>
                            <h3>Cập nhật view</h3>
                            <p>Một view có thể được cập nhật trong các điều kiện nhất định được đưa ra dưới đây:</p>
                            <p>Mệnh đề SELECT có thể không chứa từ khóa DISTINCT.</p>
                            <p>Mệnh đề SELECT có thể không chứa các hàm summary.</p>
                            <p>Mệnh đề SELECT có thể không chứa các hàm tập hợp.</p>
                            <p>Mệnh đề SELECT có thể không chứa các toán tử tập hợp.</p>
                            <p>Mệnh đề SELECT có thể không chứa mệnh đề ORDER BY.</p>
                            <p>Mệnh đề FROM có thể không chứa nhiều bảng.</p>
                            <p>Mệnh đề WHERE có thể không chứa các truy vấn con.</p>
                            <p>Truy vấn có thể không chứa GROUP BY hoặc HAVING.</p>
                            <p>Các cột được tính toán có thể không được cập nhật.</p>
                            <p>Tất cả các cột KHÔNG NULL từ bảng cơ sở phải được đưa vào view để truy vấn INSERT hoạt
                                động.</p>
                            <p>&nbsp;Vì vậy, nếu một view thỏa mãn tất cả các quy tắc nêu trên thì bạn có thể cập nhật
                                view đó. Khối mã sau đây là một ví dụ để cập nhật tuổi của Ramesh.</p>
                            <pre><code class="language-sql">
UPDATE CUSTOMERS_VIEW
SET AGE = 35
WHERE name = 'Ramesh';
                            </code></pre>
                            <p><span>Điều này cuối cùng sẽ cập nhật bảng cơ sở CUSTOMERS và điều tương tự sẽ phản ánh trong chính view. Bây giờ, hãy thử truy vấn bảng cơ sở và câu lệnh SELECT sẽ tạo ra kết quả như sau:</span>
                            </p>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <pre>| ID | NAME&nbsp;&nbsp;&nbsp;&nbsp; | AGE | ADDRESS&nbsp;&nbsp; | SALARY&nbsp;&nbsp; |</pre>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <pre>|&nbsp; 1 | Ramesh&nbsp;&nbsp; |&nbsp; 35 | Ahmedabad |&nbsp; 2000.00 |</pre>
                            <pre>|&nbsp; 2 | Khilan&nbsp;&nbsp; |&nbsp; 25 | Delhi&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1500.00 |</pre>
                            <pre>|&nbsp; 3 | kaushik&nbsp; |&nbsp; 23 | Kota&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</pre>
                            <pre>|&nbsp; 4 | Chaitali |&nbsp; 25 | Mumbai&nbsp;&nbsp;&nbsp; |&nbsp; 6500.00 |</pre>
                            <pre>|&nbsp; 5 | Hardik&nbsp;&nbsp; |&nbsp; 27 | Bhopal&nbsp;&nbsp;&nbsp; |&nbsp; 8500.00 |</pre>
                            <pre>|&nbsp; 6 | Komal&nbsp;&nbsp;&nbsp; |&nbsp; 22 | MP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 4500.00 |</pre>
                            <pre>|&nbsp; 7 | Muffy&nbsp;&nbsp;&nbsp; |&nbsp; 24 | Indore&nbsp;&nbsp;&nbsp; | 10000.00 |</pre>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <p>&nbsp;</p>
                            <h3>Chèn hàng vào view</h3>
                            <p>Hàng dữ liệu có thể được chèn vào một view. Các quy tắc tương tự áp dụng cho lệnh UPDATE
                                cũng áp dụng cho lệnh INSERT.</p>
                            <p>Ở đây, chúng ta không thể chèn các hàng trong CUSTOMERS_VIEW vì ta chưa bao gồm tất cả
                                các cột KHÔNG NULL trong view này, nếu không, bạn có thể chèn các hàng trong view theo
                                cách tương tự khi bạn chèn chúng vào bảng.</p>
                            <p>&nbsp;</p>
                            <h3>Xóa hàng khỏi view</h3>
                            <p>Hàng dữ liệu có thể bị xóa khỏi view. Các quy tắc tương tự áp dụng cho các lệnh UPDATE và
                                INSERT áp dụng cho lệnh DELETE.</p>
                            <p>Sau đây là một ví dụ để xóa một bản ghi có AGE = 22.</p>
                            <pre><code class="language-sql">
DELETE FROM CUSTOMERS_VIEW
WHERE age = 22;
                            </code></pre>
                            <p>Điều này cuối cùng sẽ xóa một hàng khỏi bảng cơ sở CUSTOMERS và điều tương tự sẽ phản ánh
                                trong chính view. Bây giờ, hãy thử truy vấn bảng cơ sở và câu lệnh SELECT sẽ tạo ra kết
                                quả như sau:</p>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <pre>| ID | NAME&nbsp;&nbsp;&nbsp;&nbsp; | AGE | ADDRESS&nbsp;&nbsp; | SALARY&nbsp;&nbsp; |</pre>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <pre>|&nbsp; 1 | Ramesh&nbsp;&nbsp; |&nbsp; 35 | Ahmedabad |&nbsp; 2000.00 |</pre>
                            <pre>|&nbsp; 2 | Khilan&nbsp;&nbsp; |&nbsp; 25 | Delhi&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1500.00 |</pre>
                            <pre>|&nbsp; 3 | kaushik&nbsp; |&nbsp; 23 | Kota&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2000.00 |</pre>
                            <pre>|&nbsp; 4 | Chaitali |&nbsp; 25 | Mumbai&nbsp;&nbsp;&nbsp; |&nbsp; 6500.00 |</pre>
                            <pre>|&nbsp; 5 | Hardik&nbsp;&nbsp; |&nbsp; 27 | Bhopal&nbsp;&nbsp;&nbsp; |&nbsp; 8500.00 |</pre>
                            <pre>|&nbsp; 7 | Muffy&nbsp;&nbsp;&nbsp; |&nbsp; 24 | Indore&nbsp;&nbsp;&nbsp; | 10000.00 |</pre>
                            <pre>+----+----------+-----+-----------+----------+</pre>
                            <h3>Xoá view</h3>
                            <p>Rõ ràng, bạn cần một cách để loại bỏ view nếu không còn cần thiết. Cú pháp rất đơn giản
                                và được đưa ra dưới đây:</p>
                            <pre><code class="language-sql">
DROP VIEW view_name;
                            </code></pre>
                            <p>Sau đây là một ví dụ để loại bỏ CUSTOMERS_VIEW khỏi bảng CUSTOMERS:</p>
                            <pre><code class="language-sql">
DROP VIEW CUSTOMERS_VIEW;
                            </code></pre>
                            <p></p>
                            <p></p></div>
                    </div>
                    <div class="modified">Last modified: Tuesday, 19 July 2022, 2:59 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
