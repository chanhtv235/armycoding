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
                   class="mb-2 btn btn-sm btn-outline-warning">5.Index, view, stored procedure, function, trigger</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Tạo MySQL stored procedures</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về cách tạo MySQL stored procedures.</p>
                            <h2><span>Nội dung</span></h2>
                            <p>Store Procedure (thủ tục lưu trữ), có thể được định nghĩa là chương trình con, giống như
                                một chương trình con được lưu trữ trong cơ sở dữ liệu. Trong ngữ cảnh của MySQL, nó là
                                một phân đoạn các câu lệnh SQL khai báo được lưu trữ bên trong danh mục cơ sở dữ liệu.
                                Sau đây là cú pháp để tạo một Store Procedure:</p>
                            <p><b>Syntax</b></p>
                            <p></p>
                            <pre><code class="language-sql">
DELIMITER //
CREATE PROCEDURE [procedure_name] ([param1, param2,…])
 BEGIN
 [sql_statements]
 END //
DELIMITER ;
                            </code></pre>
                            <p></p>
                            <div class="content___3tfIc">
                                <p>Trong đó:</p>
                            </div>
                            <div class="content___3tfIc last___3qF2O">
                                <ul>
                                    <li><code>CREATE PROCEDURE</code>&nbsp;là câu lệnh dùng để khai báo Stored Procedure
                                        trong MySQL.
                                    </li>
                                    <li><code>[procedure_name]</code>&nbsp;là tên của Stored Procedure.</li>
                                    <li><code>[param1, param2, …]</code>&nbsp;là các tham số truyền vào Stored
                                        Procedure. Cấu trúc khai báo các tham số:
                                        <ul>
                                            <li><code>[IN | OUT] param [datatype: INT, VARCHAR, …]</code>,
                                                với&nbsp;<code>[IN | OUT]</code>&nbsp;chỉ định tham số đầu vào
                                                (<code>IN</code>) hay đầu ra (<code>OUT</code>).
                                            </li>
                                            <li>Ví dụ:&nbsp;<code>(IN param1 INT, OUT param2 VARCHAR(25))</code></li>
                                        </ul>
                                    </li>
                                    <li><code>BEGIN</code>&nbsp;khai báo phần thân của Stored Procedure, kể từ câu lệnh
                                        này trở đi, định nghĩa những thao tác mà Stored Procedure sẽ thực hiện khi được
                                        gọi.
                                    </li>
                                </ul>
                            </div>
                            <p>Gọi Stored Procedure đã được khai báo:</p>
                            <pre>CALL procedure_name ([param1, param2,…]);</pre>
                            <p><b>Ví dụ</b></p>
                            <p>Sau đây là một ví dụ trong đó ta đã tạo một quy trình đơn giản để lấy tất cả các bản ghi
                                từ bảng ‘student_info, có dữ liệu sau:</p>
                            <pre>select * from student_info;</pre>
                            <pre>+-----+---------+------------+------------+</pre>
                            <pre>| id &nbsp;| Name &nbsp; &nbsp;| Address &nbsp; &nbsp;| Subject &nbsp; &nbsp;|</pre>
                            <pre>+-----+---------+------------+------------+</pre>
                            <pre>| 100 | Aarav &nbsp; | Delhi &nbsp; &nbsp; &nbsp;| Computers &nbsp;|</pre>
                            <pre>| 101 | YashPal | Amritsar &nbsp; | History &nbsp; &nbsp;|</pre>
                            <pre>| 105 | Gaurav &nbsp;| Jaipur &nbsp; &nbsp; | Literature |</pre>
                            <pre>| 110 | Rahul &nbsp; | Chandigarh | History &nbsp; &nbsp;|</pre>
                            <pre>+------+--------+------------+------------+</pre>
                            <pre>4 rows in set (0.00 sec)</pre>
                            <p>Bây giờ, ta tạo thủ tục lưu trữ có tên allrecords ():</p>
                            <pre><code class="language-sql">
DELIMITER //
Create Procedure allrecords()
    BEGIN
    Select * from Student_info;
    END//
DELIMITER ;
                            </code></pre>
                    </div>
                    <div class="modified">Last modified: Friday, 27 May 2022, 11:20 AM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
