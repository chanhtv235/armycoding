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
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Thiết kế CSDL</a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Thao tác với bảng</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>- Tìm hiểu về cách tạo bảng mới.</p>
                            <p>- Tìm hiểu về cách xóa bảng.</p>
                            <p>- Tìm hiểu về cách thao tác với bảng.</p>
                            <h2><span>Nội dung</span></h2>
                            <p><span></span></p>
                            <h4>Tạo bảng mới</h4>
                            <p>Câu lệnh CREATE TABLE được sử dụng để tạo một bảng mới.</p>
                            <h5>Cú pháp rút gọn</h5>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">CREATE</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
(
  column1 datatype [ <span class="hljs-literal"><span class="hljs-literal">NULL</span></span> | <span
                                        class="hljs-keyword"><span class="hljs-keyword">NOT</span></span> <span
                                        class="hljs-literal"><span class="hljs-literal">NULL</span></span> ],
  column2 datatype [ <span class="hljs-literal"><span class="hljs-literal">NULL</span></span> | <span
                                        class="hljs-keyword"><span class="hljs-keyword">NOT</span></span> <span
                                        class="hljs-literal"><span class="hljs-literal">NULL</span></span> ],
  ...
);</code></pre>
                            <p>Trong đó, table_name là tên của bảng. column1 và column2 là tên của các cột, datatype là
                                kiểu dữ liệu của từng cột.</p>
                            <p><span>Lưu ý:</span>&nbsp;Đây là cú pháp rút gọn, hãy xem cú pháp đầy đủ của câu lệnh
                                CREATE TABLE ở đây:&nbsp;<a
                                        href="https://dev.mysql.com/doc/refman/5.5/en/create-table.html">https://dev.mysql.com/doc/refman/5.5/en/create-table.html</a>
                            </p>
                            <h5>Ví dụ</h5>
                            <p>Hãy xem đoạn mã tạo bảng contacts trong MySQL:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">CREATE</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
( contact_id <span class="hljs-built_in"><span class="hljs-built_in">INT</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">11</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span> AUTO_INCREMENT,
  last_name <span class="hljs-built_in"><span class="hljs-built_in">VARCHAR</span></span>(<span
                                        class="hljs-number"><span class="hljs-number">30</span></span>) <span
                                        class="hljs-keyword"><span class="hljs-keyword">NOT</span></span> <span
                                        class="hljs-literal"><span class="hljs-literal">NULL</span></span>,
  first_name <span class="hljs-built_in"><span class="hljs-built_in">VARCHAR</span></span>(<span
                                        class="hljs-number"><span class="hljs-number">25</span></span>),
  birthday <span class="hljs-built_in"><span class="hljs-built_in">DATE</span></span>,
  <span class="hljs-keyword"><span class="hljs-keyword">CONSTRAINT</span></span> contacts_pk PRIMARY <span
                                        class="hljs-keyword"><span class="hljs-keyword">KEY</span></span> (contact_id)
);</code></pre>
                            <p>Bảng contacts sẽ có 5 cột và một cột là khoá chính:</p>
                            <ul>
                                <li>Cột&nbsp;<em>contact_id</em>&nbsp;có kiểu dữ liệu số nguyên (với tối đa 11 chữ số)
                                    và không thể chứa giá trị NULL. Giá trị của cột này sẽ được tự động tăng dần (Giá
                                    trị đầu tiên là 1, tiếp theo là 2, 3...).
                                </li>
                                <li>Cột&nbsp;<em>last_name</em>&nbsp;có kiểu dữ liệu VARCHAR (chuỗi - với tối đa 30 ký
                                    tự) và không thể chứa giá trị NULL.
                                </li>
                                <li>Cột&nbsp;<em>first_name</em>&nbsp;có kiểu dữ liệu VARCHAR (chuỗi - với tối đa 25 ký
                                    tự) và có thể chứa giá trị NULL.
                                </li>
                                <li>Cột&nbsp;<em>birthday</em>&nbsp;có kiểu dữ liệu ngày tháng và có thể chứa giá trị
                                    NULL.
                                </li>
                                <li>Khoá chính của bảng này có tên là&nbsp;<em>contacts_pk</em>&nbsp;và được gán cho cột&nbsp;<em>contact_id</em>.
                                </li>
                            </ul>
                            <p>Trong ví dụ sau đây, chúng ta sử dụng từ khoá DEFAULT để gán giá trị mặc định cho một
                                cột.</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">CREATE</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> suppliers
( supplier_id <span class="hljs-built_in"><span class="hljs-built_in">INT</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">11</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span> AUTO_INCREMENT,
  supplier_name <span class="hljs-built_in"><span class="hljs-built_in">VARCHAR</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">50</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>,
  account_rep <span class="hljs-built_in"><span class="hljs-built_in">VARCHAR</span></span>(<span
                                        class="hljs-number"><span class="hljs-number">30</span></span>) <span
                                        class="hljs-keyword"><span class="hljs-keyword">NOT</span></span> <span
                                        class="hljs-literal"><span class="hljs-literal">NULL</span></span> <span
                                        class="hljs-keyword"><span class="hljs-keyword">DEFAULT</span></span> <span
                                        class="hljs-string"><span class="hljs-string">'TBD'</span></span>,
  <span class="hljs-keyword"><span class="hljs-keyword">CONSTRAINT</span></span> suppliers_pk PRIMARY <span
                                        class="hljs-keyword"><span class="hljs-keyword">KEY</span></span> (supplier_id)
);</code></pre>
                            <p>Trong ví dụ này, cột account_rep có kiểu dữ liệu là chuỗi (với tối đa 30 ký tự), không
                                thể chứa giá trị NULL và mặc định thì giá trị của cột này là 'TBD'.</p>
                            <h4>Xoá bảng</h4>
                            <p>Câu lệnh DROP TABLE được sử dụng để xoá các bảng đã tạo trước đó.</p>
                            <h5>Cú pháp rút gọn</h5>
                            <pre>DROP TABLE table_name1, table_name2, ...</pre>
                            <p>Trong đó, table_name1 và table_name2 là tên của các bảng muốn
                                xoá.<br><span>Lưu ý:&nbsp;</span>Đây là cú pháp rút gọn, xem cú pháp đầy đủ ở đây:&nbsp;<a
                                        href="https://dev.mysql.com/doc/refman/5.5/en/drop-table.html">https://dev.mysql.com/doc/refman/5.5/en/drop-table.html</a><br><br>
                            </p>
                            <h5>Ví dụ</h5>
                            <p>Đoạn mã sau đây sẽ xoá bảng customers:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">DROP</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> customers;</code></pre>
                            <p>Đoạn mã sau đây sẽ xoá 2 bảng là customers và suppliers:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">DROP</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> customers, suppliers;</code></pre>
                            <p></p>
                            <h4>Chỉnh sửa bảng</h4>
                            <p>Câu lệnh ALTER TABLE được sử dụng để chỉnh sửa một bảng đang tồn tại.</p>
                            <h5>Cú pháp rút gọn để thêm cột mới</h5>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span
          class="hljs-keyword">ADD</span></span> new_column_name column_definition;</code></pre>
                            <p>Trong đó, table_name là tên bảng, new_column_name là tên của cột mới, column_definition
                                là các mô tả cho cột mới (chẳng hạn như kiểu dữ liệu, NULL, giá trị mặc định...).</p>
                            <h5>Ví dụ</h5>
                            <p>Đoạn mã trong ví dụ sau đây sẽ thêm cột last_name vào cho bảng contacts:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">ADD</span></span> last_name <span class="hljs-built_in"><span
                                        class="hljs-built_in">varchar</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">40</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>
    <span class="hljs-keyword"><span class="hljs-keyword">AFTER</span></span> contact_id;</code></pre>
                            <p>Chúng ta cũng có thêm nhiều cột một lúc bằng cách sử dụng cú pháp:</p>
                            <p></p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span class="hljs-keyword">ADD</span></span> new_column_name column_definition
    [ <span class="hljs-keyword"><span class="hljs-keyword">FIRST</span></span> | <span class="hljs-keyword"><span
                                        class="hljs-keyword">AFTER</span></span> column_name ],
  <span class="hljs-keyword"><span class="hljs-keyword">ADD</span></span> new_column_name column_definition
    [ <span class="hljs-keyword"><span class="hljs-keyword">FIRST</span></span> | <span class="hljs-keyword"><span
                                        class="hljs-keyword">AFTER</span></span> column_name ],
  ...
;</code></pre>
                            <p></p>
                            <p>Ví dụ:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">ADD</span></span> last_name <span class="hljs-built_in"><span
                                        class="hljs-built_in">varchar</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">40</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>
    <span class="hljs-keyword"><span class="hljs-keyword">AFTER</span></span> contact_id,
  <span class="hljs-keyword"><span class="hljs-keyword">ADD</span></span> first_name <span class="hljs-built_in"><span
                                        class="hljs-built_in">varchar</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">35</span></span>) <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>
    <span class="hljs-keyword"><span class="hljs-keyword">AFTER</span></span> last_name;</code></pre>
                            <h5>Cú pháp để chỉnh sửa mô tả của một cột</h5>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span
          class="hljs-keyword">MODIFY</span></span> column_name column_definition;<br></code></pre>
                            <p>Trong đó table_name là tên của bảng, column_name là tên của cột, column_definition là mô
                                tả mới của cột.</p>
                            <p>Ví dụ, đoạn mã sau sẽ sửa kiểu dữ liệu của cột last_name thành kiểu chuỗi (với tối đa 50
                                ký tự) và cho phép nó chứa giá trị NULL:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">MODIFY</span></span> last_name <span class="hljs-built_in"><span
                                        class="hljs-built_in">varchar</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">50</span></span>) <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>;</code></pre>
                            <p>Chúng ta cũng có thể chỉnh sửa nhiều cột một lúc bằng cách sử dụng cú pháp:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span class="hljs-keyword">MODIFY</span></span> column_name column_definition
    [ <span class="hljs-keyword"><span class="hljs-keyword">FIRST</span></span> | <span class="hljs-keyword"><span
                                        class="hljs-keyword">AFTER</span></span> column_name ],
  <span class="hljs-keyword"><span class="hljs-keyword">MODIFY</span></span> column_name column_definition
    [ <span class="hljs-keyword"><span class="hljs-keyword">FIRST</span></span> | <span class="hljs-keyword"><span
                                        class="hljs-keyword">AFTER</span></span> column_name ],
  ...
;</code></pre>
                            <h5>Cú pháp để xoá một cột trong bảng</h5>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span class="hljs-keyword">DROP</span></span> <span class="hljs-keyword"><span
                                        class="hljs-keyword">COLUMN</span></span> column_name;</code></pre>
                            <p>Trong đó, table_name là tên của bảng, column_name là tên của cột muốn xoá.</p>
                            <p>Ví dụ, đoạn mã sau sẽ xoá cột contact_type trong bảng contacts:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">DROP</span></span> <span class="hljs-keyword"><span
                                        class="hljs-keyword">COLUMN</span></span> contact_type;</code></pre>
                            <p>Cú pháp để thay đổi tên cột</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> table_name
  <span class="hljs-keyword"><span class="hljs-keyword">CHANGE</span></span> <span class="hljs-keyword"><span
                                        class="hljs-keyword">COLUMN</span></span> old_name new_name
    column_definition</code></pre>
                            <p>Trong đó, table_name là tên bảng, old_name là tên hiện tại của cột, new_name là tên mới
                                muốn đổi thành, column_definition là mô tả của cột.<br>Ví dụ, đoạn mã sau sẽ đổi tên cột
                                contact_type thành ctype:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">CHANGE</span></span> <span class="hljs-keyword"><span
                                        class="hljs-keyword">COLUMN</span></span> contact_type ctype
    <span class="hljs-built_in"><span class="hljs-built_in">varchar</span></span>(<span class="hljs-number"><span
                                        class="hljs-number">20</span></span>) <span class="hljs-keyword"><span
                                        class="hljs-keyword">NOT</span></span> <span class="hljs-literal"><span
                                        class="hljs-literal">NULL</span></span>;</code></pre>
                            <h5>Cú pháp để đổi tên bảng</h5>
                            <pre>ALTER TABLE table_name
  RENAME TO new_table_name;</pre>
                            <p>Trong đó, table_name là tên hiện tại của bảng, new_table_name là tên mới của bảng.<br>Ví
                                dụ, đoạn mã sau sẽ đổi tên bảng contacts thành people:</p>
                            <pre><code class="language-sql hljs sql"><span class="hljs-keyword"><span
                                    class="hljs-keyword">ALTER</span></span> <span class="hljs-keyword"><span
                                    class="hljs-keyword">TABLE</span></span> contacts
  <span class="hljs-keyword"><span class="hljs-keyword">RENAME</span></span> <span class="hljs-keyword"><span
                                        class="hljs-keyword">TO</span></span> people;</code></pre>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 23 May 2022, 4:06 PM</div>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
