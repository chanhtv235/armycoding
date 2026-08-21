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
                    <h2>[Bài đọc] Khóa chính</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>- Tìm hiểu về khóa chính.&nbsp;</p>
                            <p>- Cú pháp của khóa chính.</p>
                            <p>- Thêm khóa chính khi đã có bảng.</p>
                            <h2>Nội dung</h2>
                            <p></p>
                            <h4>Khoá chính là gì?</h4>
                            <ul>
                                <li><span>Khóa chính (Primary Key, hay ràng buộc khóa chính) được sử dụng để định danh duy nhất mỗi bản ghi (dòng) trong bảng của cơ sở dữ liệu.</span>
                                </li>
                                <li><span>Ngoài ra, nó còn dùng để thiết lập quan hệ 1-n (hay ràng buộc tham chiếu) giữa hai bảng trong cơ sở dữ liệu.</span>
                                </li>
                                <li><span>Dữ liệu (value) của field khóa chính phải có tính duy nhất, và không chứa các giá trị Null.</span>
                                </li>
                                <li><span>Mỗi bảng chỉ có một khóa chính</span></li>
                                <li><span>Khóa chính có thể tạo ra dựa trên một cột hoặc nhiều cột (được gọi là khoá chính tổ hợp) của table.&nbsp;</span>
                                </li>
                            </ul>
                            <p></p>
                            <h4>Cú pháp để định nghĩa khoá chính</h4>
                            <p>Chúng ta có thể sử dụng từ khoá<span>&nbsp;PRIMARY KEY</span>&nbsp;để định nghĩa khoá
                                chính khi tạo bảng.</p>
                            <p>Ví dụ:</p>
                            <pre><code class="language-sql" >
CREATE TABLE users(
   user_id INT AUTO_INCREMENT PRIMARY KEY,
   username VARCHAR(40),
   password VARCHAR(255),
   email VARCHAR(255)
);
                            </code></pre>
                            <p>Trong ví dụ trên, từ khoá<span>&nbsp;PRIMARY KEY</span>&nbsp;được sử dụng để xác định
                                khoá chính dựa trên cột user_id.</p>
                            <p>Hoặc, chúng ta cũng có thể sử dụng từ khoá PRIMARY ở cuối câu lệnh tạo bảng như sau:</p>
                            <pre><code class="language-sql" >
CREATE TABLE roles(
   role_id INT AUTO_INCREMENT,
   role_name VARCHAR(50),
   PRIMARY KEY(role_id)
);
                            </code></pre>
                            <p>Trong trường hợp này, chúng ta tách việc quy định khoá chính thành một dòng riêng biệt
                                khỏi dòng định nghĩa cột role_id.</p>
                            <h4>Cú pháp định nghĩa khoá chính tổ hợp</h4>
                            <p>Khoá chính tổ hợp là khoá chính được tạo ra dựa trên nhiều cột của bảng. Chúng ta cũng có
                                thể sử dụng từ khoá PRIMARY KEY để tạo khoá chính tổ hợp.</p>
                            <p>Ví dụ:</p>
                            <pre><code class="language-sql" >
CREATE TABLE userroles(
   user_id INT NOT NULL,
   role_id INT NOT NULL,
   PRIMARY KEY(user_id,role_id),
   FOREIGN KEY(user_id) REFERENCES users(user_id),
   FOREIGN KEY(role_id) REFERENCES roles(role_id)
);
                            </code></pre>
                            <p>Trong ví dụ này, khoá chính của bảng userroles được tạo thành dựa trên 2 cột là user_id
                                và role_id.</p>
                            <p></p>
                            <p><span>Lưu ý:&nbsp;</span>FOREIGN KEY là từ khoá được sử dụng để tạo khoá ngoại với các
                                bảng khác, chúng ta sẽ tìm hiểu từ khoá này ở trong bài sau.</p>
                            <h4>Tạo khoá chính khi thay đổi bảng</h4>
                            <p>Có một số trường hợp, chúng ta muốn bổ sung khoá chính cho một bảng sau khi bảng đó đã
                                được tạo. Chúng ta có thể sử dụng câu lệnh&nbsp;<span>ADD PRIMARY KEY</span>&nbsp;ở
                                trong câu lệnh&nbsp;<span>ALTER TABLE</span>&nbsp;để đạt được mục đích này.</p>
                            <p>Cú pháp:</p>
                            <pre><code class="language-sql" >
ALTER TABLE table_name
    ADD PRIMARY KEY(primary_key_column);
                            </code></pre>
                            <p>Trong đó, table_name là tên của bảng đã tồn tại, primary_key_column là tên của cột muốn
                                tạo khoá chính.</p></div>
                    </div>
                    <div class="modified">Last modified: Sunday, 22 May 2022, 11:18 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
