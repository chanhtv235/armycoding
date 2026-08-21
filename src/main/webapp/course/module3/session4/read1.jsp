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
                <a href="${pageContext.request.contextPath}/course/module3/session4/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4. Các hàm thông dụng trong MySQL</a>

                <div role="main" id="yui_3_17_2_1_1714156690560_25"><span id="maincontent"></span>
                    <h2>[Bài đọc] Các hàm thông dụng của SQL</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714156690560_24">
                        <div class="no-overflow" id="yui_3_17_2_1_1714156690560_23"><p></p>
                            <h2 id="yui_3_17_2_1_1714156690560_22">Mục tiêu</h2>
                            <p>Tìm hiểu về các hàm thông dụng của SQL.</p>
                            <h2><span>Nội dung</span></h2>
                            <p>Trong các phần sau đây, chúng ta sẽ sử dụng bảng products có cấu trúc như trong hình để
                                minh hoạ cho các ví dụ sử dụng các hàm thông dụng trong SQL.</p>
                            <p style="text-align: center;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50269/mod_page/content/12/Screen%20Shot%202017-04-26%20at%2014.24.58.png"
                                    width="655" height="308"></p>
                            <h4><span>1. Hàm AVG()</span></h4>
                            <p><span>Hàm AVG() trả về giá trị trung bình của một cột kiểu số.</span></p>
                            <pre><code class="language-sql">
SELECT AVG(column_name)
FROM table_name
WHERE condition;
                            </code></pre>
                            <p><span>Trong đó:&nbsp;</span></p>
                            <ul>
                                <li><span style="font-size: 1rem;">column_name là tên của cột muốn tính giá trị trung bình.</span>
                                </li>
                                <li><span style="font-size: 1rem;">table_name là tên của bảng</span></li>
                                <li><span style="font-size: 1rem;">condition là biểu thức điều kiện</span></li>
                            </ul>
                            <p>Ví dụ: Tính giá trung bình cho tất cả các sản phẩm:</p>
                            <pre><code class="language-sql">
select avg(buyPrice) from products
                            </code></pre>
                            <p>Kết quả trả về:</p>
                            <p>
                                <img src="https://james.codegym.vn/pluginfile.php/50269/mod_page/content/12/Screen%20Shot%202017-04-26%20at%2014.34.48.png"
                                     width="117" height="40"></p>
                            <h4><span>2. Hàm COUNT()</span></h4>
                            <p><span>Hàm COUNT() trả về số lượng bản ghi thoả mãn điền kiện đưa ra.</span></p>
                            <pre><code class="language-sql">
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
                            </code></pre>
                            <p>Ví dụ: Đếm số sản phẩm hiện đang có</p>
                            <pre><code class="language-sql">
select count(productcode) from products
                            </code></pre>
                            <h4><span>3. Hàm MAX()</span></h4>
                            <p>
                                <span>Hàm MAX() trả về giá trị lớn nhất trong một cột và thoả mãn điều kiện đưa ra.</span>
                            </p>
                            <pre><code class="language-sql">
SELECT MAX(column_name)
FROM table_name
WHERE condition;
                            </code></pre>
                            <p>Ví dụ: Tìm sản phẩm có giá lớn nhất:</p>
                            <pre><code class="language-sql">
select max(buyprice) from products
                            </code></pre>
                            <h4><span>4. Hàm MIN()</span></h4>
                            <p>
                                <span>Hàm MIN() trả về giá trị nhỏ nhất trong một cột và thoả mãn điều kiện đưa ra.</span>
                            </p>
                            <pre><code class="language-sql">
SELECT MIN(column_name)
FROM table_name
WHERE condition;
                            </code></pre>
                            <p>Ví dụ: Tìm sản phẩm có giá nhỏ nhất:</p>
                            <pre><code class="language-sql">
select min(buyprice) from products
                            </code></pre>
                            <h4><span>5. Hàm SUM()</span></h4>
                            <p><span>Hàm SUM() trả về tổng giá trị của một cột kiểu số.</span></p>
                            <pre><code class="language-sql">
SELECT SUM(column_name)
FROM table_name
WHERE condition;
                            </code></pre>
                            <p>Ví dụ: Tính tổng số lượng sản phẩm:</p>
                            <pre><code class="language-sql">
select sum(quantityInStock) from products
                            </code></pre>
                            <p>Ví dụ: Tính tổng số lượng sản phẩm thuộc loại Motorcycles</p>
                            <pre><code class="language-sql">
select sum(quantityInStock) from products where productline = 'Motorcycles'
                            </code></pre>
                            <h4><span>6. Hàm UCASE()</span></h4>
                            <p><span>Hàm UCASE() chuyển giá trị của một trường sang chữ viết hoa.</span></p>
                            <pre><code class="language-sql">
SELECT UCASE(column_name) FROM table_name;
                            </code></pre>
                            <p>Ví dụ: Chuyển tất cả tên sản phẩm thành chữ hoa:</p>
                            <pre><code class="language-sql">
SELECT UCASE(column_name) FROM table_name;
                            </code></pre>
                            <h4><span>7. Hàm LCASE()</span></h4>
                            <pre><code class="language-sql">
SELECT LCASE(column_name) FROM table_name;
                            </code></pre>
                            <p><span>Hàm LCASE() chuyển giá trị của một trường sang chữ viết thường.</span></p>
                            <pre><span>SELECT&nbsp;LCASE(column_name)&nbsp;FROM&nbsp;table_name;</span></pre>
                            <p>Ví dụ: Chuyển tất cả tên sản phẩm thành chữ thường:</p>
                            <pre><code class="language-sql">
select ucase(productName) from products
                            </code></pre>
                            <h4><span>8. Hàm LEN()</span></h4>
                            <p><span>Hàm LEN() trả về độ dài của chuỗi (số lượng ký tự) của một giá trị trong cột kiểu chuỗi.</span>
                            </p>
                            <pre><code class="language-sql">
SELECT LEN(column_name) FROM table_name;
                            </code></pre>
                            <p>Ví dụ: Trả lại số ký tự của tên sản phẩm có mã sản phẩm là&nbsp;<span>S10_1678:</span>
                            </p>
                            <pre><code class="language-sql">
select len(productname) from products where productcode = 'S10_1678'
                            </code></pre>

                            <h4><span>9. Hàm NOW()</span></h4>
                            <p><span>Hàm NOW() trả về ngày tháng và thời gian hiện tại.</span></p>
                            <pre><code class="language-sql">
SELECT NOW() FROM table_name;
                            </code></pre>

                            <h4><span>10. Mệnh đề GROUP BY</span></h4>
                            <p><span>Mệnh đề GROUP BY thường được sử dụng cùng với các hàm như COUNT(), MAX(), MIN(), SUM(), AVG() để tách thành các nhóm con theo một cột (hoặc nhiều cột).</span>
                            </p>
                            <pre><code class="language-sql">
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
                            </code></pre>
                            <p>Ví dụ: Hiển thị nhà cung cấp và số lượng sản phẩm được cung cấp bởi từng nhà cung cấp,
                                sắp xếp theo thứ tự tăng dần nhà cung cấp, cho tất cả các hãng Motorcyrcles:</p>
                            <pre><code class="language-sql">
select productVendor, count(productcode) from product
where productline = 'Motorcycles'
group by productVendor
order by productVendor
                            </code></pre>
                            <h4><span>11. Mệnh đề HAVING</span></h4>
                            <p><span>Mệnh đề HAVING có chức năng lọc dữ liệu như mệnh đề WHERE nhưng sử dụng cùng với các hàm SQL.</span>
                            </p>
                            <pre><code class="language-sql">
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
                            </code></pre>
                            <p>Ví dụ: Hiển thị nhà cung cấp và số lượng sản phẩm lớn hơn 10 được cung cấp bởi từng nhà
                                cung cấp, sắp xếp theo thứ tự tăng dần nhà cung cấp, cho tất cả các hãng Motorcyrcles:&nbsp;</p>
                            <pre><code class="language-sql">
select productVendor, count(productcode) from product
where productline = 'Motorcycles'
group by productVendor
having count(productCode) > 10
order by productVendor
                        </code></pre>
                        </div>
                    </div>
                    <div class="modified">Last modified: Tuesday, 24 May 2022, 10:36 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
