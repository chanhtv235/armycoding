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

                <div role="main" id="yui_3_17_2_1_1714151158757_22"><span id="maincontent"></span>
                    <h2>[Bài đọc] Khóa ngoại</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714151158757_21">
                        <div class="no-overflow" id="yui_3_17_2_1_1714151158757_20"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về khóa ngoại và cú pháp tạo khóa ngoại.</p>
                            <p><span
                                    style="color: #37474f; font-family: 'Open Sans'; font-size: 2.143rem;">Nội dung</span>
                            </p>
                            <h4>Khoá ngoại là gì?</h4>
                            <p>Khoá ngoại (foreign key - viết ngắn gọn là FK) là cơ chế để tạo liên kết giữa các bảng
                                trong cùng một cơ sở dữ liệu. Chẳng hạn, trong CSDL quản lý bán hàng, bảng&nbsp;<i>customer</i>&nbsp;và
                                bảng&nbsp;<i>order</i>&nbsp;có thể có khoá ngoại để liên kết với nhau.</p>
                            <p>Khoá ngoại được đặt trên một cột của bảng này và tham chiếu đến khoá chính của một bảng
                                khác. Chẳng hạn, khoá ngoại được đặt trên cột&nbsp;<i>customer_id</i>&nbsp;của bảng&nbsp;<i>order</i>&nbsp;và
                                tham chiếu đến cột&nbsp;<i>id</i>&nbsp;của bảng&nbsp;<i>customer</i>.</p>
                            <p>Kiểu dữ liệu của khoá ngoại và khoá chính mà nó tham chiếu phải giống nhau. Thông thường
                                thì các bảng đều sử dụng kiểu INTEGER cho khoá chính.</p>
                            <h4>Cú pháp tạo khoá ngoại</h4>
                            <p>Để tạo khoá ngoại liên kết giữa 2 bảng, chúng ta sử dụng từ khoá&nbsp;<span>FOREIGN KEY REFERENCES</span>.
                            </p>
                            <p>Ví dụ:</p>
                            <p>Với bảng&nbsp;<i>customers</i>&nbsp;được tạo ra như sau:</p>
                            <p></p>
                            <pre><code class="language-sql">
                               CREATE TABLE customers(
                                   id INT AUTO_INCREMENT PRIMARY KEY,
                                   name VARCHAR(40),
                                   address VARCHAR(255),
                                   email VARCHAR(255)
                                );
                            </code></pre>
                            <p></p>
                            <p>Thì bảng&nbsp;<i>orders</i>&nbsp;được tạo ra và định nghĩa khoá ngoại như sau:</p>
                            <p></p>
                            <pre><code class="language-sql">
                                CREATE TABLE orders(
                                   id INT AUTO_INCREMENT,
                                   staff VARCHAR(50),
                                   PRIMARY KEY(id),
                                   customer_id INT FOREIGN KEY REFERENCES customers(id)
                                );
                            </code></pre>
                            <p>Ngoài ra, chúng ta cũng có thể tách định nghĩa khoá ngoại thành một câu lệnh riêng biệt
                                khỏi khai báo của cột, như sau:</p>
                            <pre><code class="language-sql">
                                CREATE TABLE orders(
                                   id INT AUTO_INCREMENT,
                                   staff VARCHAR(50),
                                   PRIMARY KEY(id),
                                   customer_id INT,
                                   FOREIGN KEY (customer_id) REFERENCES customers(id)
                                );
                            </code></pre>
                        </div>
                    </div>
                    <div class="modified">Last modified: Tuesday, 24 May 2022, 10:34 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
