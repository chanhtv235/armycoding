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
                <a href="${pageContext.request.contextPath}/course/module3/session3/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 3. Thao tác với CSDL</a>
                <div role="main" id="yui_3_17_2_1_1714155942368_23"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714155942368_26">[Bài đọc] Câu lệnh JOIN</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714155942368_22">
                        <div class="no-overflow" id="yui_3_17_2_1_1714155942368_21"><h2
                                id="yui_3_17_2_1_1653296466600_28">Mục tiêu</h2>
                            <p>Tìm hiểu về câu lệnh&nbsp;JOIN trong truy vấn CSDL. Tìm hiểu về 3 loại&nbsp;JOIN cơ bản
                                là INNER JOIN, LEFT JOIN, SELF JOIN.</p>
                            <p id="yui_3_17_2_1_1653296466600_30"><span
                                    style="color: #37474f; font-family: 'Open Sans'; font-size: 2.143rem;">Nội dung</span>
                            </p>
                            <p><span></span></p>
                            <p>Mệnh đề JOIN được sử dụng để kết hợp các hàng từ hai hay nhiều bảng, dựa trên cột liên
                                quan giữa chúng. JOIN gồm 3 loại cơ bản INNER JOIN, LEFT JOIN, SELF JOIN.</p>
                            <h4>INNER JOIN</h4>
                            <p>Mệnh đề INNER JOIN khớp các hàng trong một bảng với các hàng trong các bảng khác và cho
                                phép bạn truy vấn các hàng có chứa các cột từ cả hai bảng. Nó cũng là một phần tùy chọn
                                của câu lệnh SELECT, xuất hiện ngay sau mệnh đề FROM.</p>
                            <p>Trước khi sử dụng mệnh đề INNER JOIN, bạn phải xác định các tiêu chí sau:</p>
                            <ul>
                                <li>
                                    <p>Xác định bảng chính xuất hiện trong mệnh đề FROM.</p>
                                </li>
                                <li>Chỉ định bảng kết hợp với bản chính sẽ xuất hiện trong mệnh đề INNER JOIN.</li>
                                <li>Chỉ định điều kiện nối. Điều kiện nối xuất hiện sau từ khóa ON của mệnh đề INNER
                                    JOIN và là quy tắc để kết hợp các hàng giữa bảng chính và các bảng khác.
                                </li>
                            </ul>
                            <h5>Cú pháp:</h5>

                            <pre><code class="language-sql">
SELECT column_name(s) FROM t1
INNER JOIN t2 ON join_condition1
INNER JOIN t3 ON join_condition2
…
WHERE conditions
                            </code></pre>

                            <p>Với:</p>
                            <ul>
                                <li>colum_name danh sách các cột sẽ hiển thị</li>
                                <li>
                                    <p>t1, t2, t3 là các bảng</p>
                                </li>
                                <li>join_condition1, join_condition2 là các điều kiện kết nối.</li>
                            </ul>
                            <p>Hãy đơn giản hóa cú pháp ở trên bằng cách giả sử dụng mệnh đề INNER JOIN để kết nối hai
                                bảng t1, t2.</p>

                            <pre><code class="language-sql">
SELECT column_name(s) FROM t1
INNER JOIN t2 ON t1.column_name = t2.column_name
                            </code></pre>

                            <p>Đối với mỗi hàng trong bảng t1, mệnh đề INNER JOIN so sánh nó với mỗi hàng của bảng t2 để
                                kiểm tra nếu cả hai thỏa mãn điều kiện nối. Khi điều kiện kết nối được khớp, nó sẽ trả
                                lại hàng kết hợp các cột trong cả hai bảng t1 và t2.</p>
                            <p>Lưu ý rằng các hàng trong cả hai bảng t1 và t2 phải được kết hợp dựa trên điều kiện nối.
                                Nếu không tìm thấy phù hợp, truy vấn sẽ trả về một tập kết quả trống. Logic này cũng
                                được áp dụng nếu chúng ta tham gia nhiều hơn 2 bảng.</p>
                            <p>Sơ đồ Venn sau minh hoạ cách mệnh đề INNER JOIN hoạt động. Các hàng trong bộ kết quả phải
                                xuất hiện trong cả hai bảng: t1 và t2.</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t3.png"
                                    width="230" height="138"></p>
                            <p>Quan sát 2 bảng product và productlines.</p>
                            <p>&nbsp;<img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t1.png"
                                          width="392" height="171"></p>
                            <p>Bây giờ, nếu bạn muốn lấy productcode, productname và buyprice từ bảng products,
                                textdescription từ bảng productlines với điều kiện giá mua nằm trong khoảng từ 56.76 đến
                                95.59. Bạn cần chọn dữ liệu từ cả hai bảng và đối chiếu các hàng bằng cách so sánh cột
                                productline từ bảng sản phẩm với cột productline từ bảng productlines dưới dạng truy vấn
                                sau:</p>

                            <pre><code class="language-sql">
SELECT productCode,productName, buyprice, textDescription
FROM products
INNER JOIN productlines
ON products.productline = productlines.productline
WHERE buyprice > 56.76 AND buyprice < 95.59
                            </code></pre>

                            <p>Trong câu lệnh trên đối với mỗi hàng trong bảng products, mệnh đề inner join so sanh nó
                                với mỗi hàng của bảng productlines để kiểm tra nếu cả hai thỏa mãn điều kiện nối (ON
                                products.productline = productlines.productline). Khi điều kiện kết nối được khớp, nó sẽ
                                trả lại hàng kết hợp các cột trong cả hai bảng products và productlines.</p>
                            <p>Mệnh để where để hạn chế dữ liệu trả về, toán tử and để kết hợp nếu hai điều kiện
                                buyprice &gt; 56.76 và buyprice &lt; 95.59 cùng đúng.&nbsp;</p>
                            <p>Kết quả trả về:</p>
                            <p id="yui_3_17_2_1_1714155942368_20">&nbsp;<img
                                    src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t2.png"
                                    width="431" height="166">&nbsp;</p>
                            <h5>Tránh lỗi trùng cột lấy ra trong lệnh select.</h5>
                            <p>Nếu bạn kết nối nhiều bảng có cùng tên cột, trước mỗi cột trong lệnh truy vấn bạn phải
                                xác định cột đó được lấy ra từ bảng nào.</p>
                            <p>Ví dụ, nếu cả hai bảng T1 và T2 có cùng một cột có tên C trong mệnh đề SELECT, bạn phải
                                tham khảo cột C sử dụng bảng phân loại như T1.C hoặc T2.C.</p>
                            <h4>LEFT JOIN</h4>
                            <p>Mệnh đề LEFT JOIN cho phép bạn truy vấn dữ liệu từ hai hay nhiều bảng trong cơ sở dữ
                                liệu. Mệnh đề này là một phần tùy chọn của câu lệnh SELECT, xuất hiện sau mệnh đề
                                FROM.</p>
                            <p>Giả sử rằng chúng ta sẽ truy vấn dữ liệu từ hai bảng t1 và t2. Câu lệnh sau mô tả cú pháp
                                của mệnh đề LEFT JOIN nối hai bảng:</p>

                            <pre><code class="language-sql">
SELECT column_name(s) FROM t1
LEFT JOIN t2
ON t1.column_name = t2.column_name
                            </code></pre>

                            <p>Khi chúng ta nối bảng t1 vào bảng t2 bằng cách sử dụng mệnh đề LEFT JOIN, nếu một hàng từ
                                bảng bên trái t1 khớp với một hàng từ bảng t2 bên phải dựa trên điều kiện nối (<i>t1.column_name&nbsp;</i>=<i>&nbsp;t2.column_name</i>),
                                hàng này sẽ bao gồm trong tập kết quả.</p>
                            <p>Trong trường hợp hàng trong bảng bên trái không khớp với hàng trong bảng bên phải, hàng
                                trong bảng bên trái cũng được chọn và kết hợp với hàng "giả" từ bảng bên phải. Hàng giả
                                chứa các giá trị NULL cho tất cả các cột tương ứng trong mệnh đề SELECT.</p>
                            <p>Nói cách khác, mệnh đề LEFT JOIN cho phép bạn chọn các hàng từ cả hai bảng bên trái và
                                bên phải khớp với tất cả các hàng từ bảng bên trái (t1) ngay cả khi không có kết quả tìm
                                thấy trong bảng bên phải (t2).</p>
                            <p>Sơ đồ Venn sau đây giúp bạn hình dung mệnh đề LEFT JOIN hoạt động như thế nào. Giao điểm
                                giữa hai vòng tròn là các hàng phù hợp trong cả hai bảng và phần còn lại của vòng tròn
                                bên trái là các hàng trong bảng t1 không có bất kỳ hàng nào phù hợp trong bảng t2. Tất
                                cả các hàng trong bảng bên trái được bao gồm trong tập hợp kết quả.</p>
                            <p>&nbsp;<img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t8.png"
                                          width="243" height="141"></p>
                            <p>Quan sát 2 bảng customers và orders trong csdl classicmodels.</p>
                            <p>&nbsp;<img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t4.png"
                                          width="335" height="199"></p>
                            <p>Trong sơ đồ cơ sở dữ liệu ở trên:</p>
                            <ul>
                                <li>
                                    <p>Mỗi đơn đặt hàng trong bảng đặt hàng phải thuộc về một khách hàng trong bảng
                                        khách hàng.</p>
                                </li>
                                <li>Mỗi khách hàng trong bảng khách hàng có thể có không hoặc nhiều đơn hàng trong bảng
                                    đặt hàng.
                                </li>
                            </ul>
                            <p>Để tìm tất cả các đơn hàng thuộc từng khách hàng, bạn có thể sử dụng mệnh đề LEFT JOIN
                                như sau:</p>

                            <pre><code class="language-sql">
SELECT customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
FROM customers
LEFT JOIN orders
ON customers.customerNumber = orders.customerNumber
                            </code></pre>

                            <p>&nbsp;Kết quả trả về</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t5.png"
                                    width="388" height="193"></p>
                            <h4>SELF JOIN</h4>
                            <p>Khi một bảng được nối với chính nó gọi là SELF JOIN. Sử dụng SELF JOIN khi bạn muốn kết
                                hợp các hàng với các hàng khác trong cùng một bảng. Để thực hiện các hoạt động tự gia
                                nhập, bạn phải sử dụng một "bí danh bảng" để giúp phân biệt bảng bên trái từ bảng bên
                                phải của cùng một bảng.&nbsp;</p>
                            <p>Cú pháp:&nbsp;</p>

                            <pre><code class="language-sql">
SELECT column_name(s) FROM table1 t1, table1 t2
WHERE condition
                            </code></pre>

                            <p>Hãy xem một ví dụ sau: Trong bảng nhân viên không chỉ lưu thông tin về nhân viên, cột
                                reportsto được sử dụng để xác định mã người quản lý của nhân viên.</p>
                            <p>&nbsp;<img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t9.png"
                                          width="182" height="135"></p>
                            <p>Để biết được nhân viên nào do ai quản lý thực hiệ truy vấn sau:</p>

                            <pre><code class="language-sql">
SELECT CONCAT(m.lastname,', ',m.firstname) AS 'Manager',
       CONCAT(e.lastname,', ',e.firstname) AS 'Direct report'
FROM employees e
INNER JOIN employees m ON m.employeeNumber = e.reportsto
ORDER BY manager;
                            </code></pre>

                            <p>Trong lệnh trên:</p>
                            <ul>
                                <li>
                                    <p>concat(s1, s2) là hàm để nối hai chuỗi thành một chuỗi.</p>
                                </li>
                                <li>
                                    <p>e là bí danh thứ nhất của bảng employees</p>
                                </li>
                                <li>m là bí danh thứ hai của bảng employees</li>
                            </ul>
                            <p>Kết quả trả về sau khi thực hiện truy vấn:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50260/mod_page/content/12/t10.png"
                                    width="319" height="183">&nbsp;</p>
                            <p>Vậy trong hướng dẫn này, bạn được biết về cách sử dụng toán tử mênh đề INNER JOIN, LEFT
                                JOIN, SELF JOIN để kết hợp hai hay nhiều bảng.</p></div>
                    </div>
                    <div class="modified">Last modified: Tuesday, 24 May 2022, 10:25 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
