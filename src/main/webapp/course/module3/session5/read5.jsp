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
                    <h2>[Bài đọc] Tạo Store Procedure trong MySql với tham số</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về cách tạo Store Procedure trong MySql có tham số.</p>
                            <h2>Nội dung</h2>
                            <p>Bạn có thể tạo một tham số bằng IN và OUT. IN được sử dụng để lấy tham số đầu vào và OUT
                                có thể được sử dụng cho đầu ra.</p>
                            <p><strong>Cú pháp như sau:</strong></p>
                            <div>
                            <pre><code class="language-sql">
DELIMITER //
CREATE PROCEDURE yourProcedureName(IN yourParameterName dataType,OUT yourParameterName dataType)
BEGIN
 yourStatement1;
 yourStatement2;
END;
//DELIMITER ;
                            </code></pre>
                            </div>
                            <p>&nbsp;</p>
                            <p>Đầu tiên, chúng ta sẽ tạo một bảng. Truy vấn để tạo bảng như sau:</p>
                            <div>
                            <pre><code class="language-sql">
create table SumOfAll(
   Amount int
);
                            </code></pre>
                            </div>
                            <p>Chèn một số bản ghi trong bảng bằng cách sử dụng lệnh insert. Các truy vấn như sau:</p>
                            <div>
                            <pre><code class="language-sql">
insert into SumOfAll values(100);
insert into SumOfAll values(330);
insert into SumOfAll values(450);
insert into SumOfAll values(400);
                            </code></pre>
                                <p>Hiển thị tất cả các bản ghi từ bảng bằng cách sử dụng câu lệnh select. Các truy vấn
                                    như sau:</p>
                            </div>
                            <div>
                            <pre><code class="language-sql">
select * from SumOfAll;
                            </code></pre>
                            </div>
                            <p><strong>Sau đây là đầu ra:</strong></p>
                            <div>
                                <pre>+--------+</pre>
                                <pre>| Amount |</pre>
                                <pre>+--------+</pre>
                                <pre>| 100&nbsp;&nbsp;&nbsp; |</pre>
                                <pre>| 330&nbsp;&nbsp;&nbsp; |</pre>
                                <pre>| 450&nbsp;&nbsp;&nbsp; |</pre>
                                <pre>| 400&nbsp;&nbsp;&nbsp; |</pre>
                                <pre>+--------+</pre>
                                <pre>4 rows in set (0.00 sec)</pre>
                            </div>
                            <p>Bây giờ, chúng ta sẽ tạo một thủ tục lưu trữ để kiểm tra giá trị có trong bảng hay không.
                                Nếu giá trị đã cho không có trong bảng thì bạn sẽ nhận được giá trị NULL.</p>
                            <p><strong>Thủ tục lưu trữ như sau:</strong></p>
                            <div>
                            <pre><code class="language-sql">
DELIMITER //
create procedure sp_ChechValue(IN value1 int,OUT value2 int)
   begin
   set value2=(select Amount from SumOfAll where Amount=value1);
   end//
DELIMITER ;
                            </code></pre>
                            </div>
                            <p>chúng ta gọi thủ tục lưu trữ với một số giá trị và lưu trữ đầu ra trong biến
                                @isPresent.</p>
                            <p>Trường hợp 1: Khi giá trị không có trong bảng.</p>
                            <pre><code class="language-sql">
call sp_ChechValue(300,@isPresent);
                            </code></pre>
                            <p>Bây giờ hãy kiểm tra giá trị trong biến @isPresent bằng cách sử dụng câu lệnh select.
                                Truy vấn như sau:</p>
                            <div>
                                <pre><code class="hljs scss"><span class="hljs-selector-tag">select</span> <span
                                        class="hljs-keyword">@isPresent</span>;</code></pre>
                            </div>
                            <p><strong>Sau đây là đầu ra:</strong></p>
                            <div>
                                <pre>+------------+</pre>
                                <pre>| @isPresent |</pre>
                                <pre>+------------+</pre>
                                <pre>| NULL&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</pre>
                                <pre>+------------+</pre>
                                <pre>1 row in set (0.00 sec)</pre>
                            </div>
                            <p>&nbsp;</p>
                            <p>Trường hợp 2: Khi giá trị có trong bảng.</p>
                            <p>&nbsp;</p>
                            <p><strong>Các truy vấn như sau:</strong></p>
                            <div>
                            <pre><code class="language-sql">
call sp_ChechValue(330,@isPresent);
                            </code></pre>
                            </div>
                            <p>Kiểm tra giá trị của biến @isPresent. Các truy vấn như sau:</p>
                            <div>
                            <pre><code class="language-sql">
select @isPresent;
                            </code></pre>
                            </div>
                            <p><strong>Sau đây là đầu ra:</strong></p>
                            <div>
                                <pre>+------------+</pre>
                                <pre>| @isPresent |</pre>
                                <pre>+------------+</pre>
                                <pre>| 330&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</pre>
                                <pre>+------------+</pre>
                                <pre>1 row in set (0.00 sec)</pre>
                            </div>
                            <p>&nbsp;</p>
                            <div id="tt" style="opacity: 0.95; display: block; width: 300px; top: 1812px; left: 220px;">
                                <div id="tttop"></div>
                                <div id="ttcont" style="font-size: 100%;">Create Store Procedure in MySql with
                                    parameters
                                </div>
                                <div id="ttbot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="modified">Last modified: Friday, 27 May 2022, 11:26 AM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
