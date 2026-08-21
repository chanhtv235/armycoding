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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>

                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Danh sách trong CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Triển khai được các loại danh sách trong HTML.</p>
                            <h2>Nội dung</h2>
                            <p>Các thuộc tính về danh sách trong CSS cho phép bạn:</p>
                            <ul>
                                <li>Thiết lập các đánh dấu phần tử danh sách khác nhau cho các danh sách có thứ tự</li>
                                <li>Thiết lập các đánh dấu phần tử danh sách khác nhau cho các danh sách không có<br>thứ
                                    tự
                                </li>
                                <li>Thiết lập một hình ảnh đánh dấu phần tử danh sách</li>
                            </ul>
                            <h2>Các danh sách HTML</h2>
                            <p>Trong HTML, có hai loại danh sách:</p>
                            <ul>
                                <li>danh sách không có thứ tự (&lt;ul&gt;) - các phần tử trong danh sách được đánh dấu
                                    bằng các bullet
                                </li>
                                <li>danh sách có thứ tự (&lt;ol&gt;) - các phần tử trong danh sách được đánh dấu bằng số
                                    hoặc chữ cái
                                </li>
                            </ul>
                            <p>Với CSS, danh sách có thể được định kiểu thêm, hình ảnh có thể được sử dụng để đánh dấu
                                các mục trong danh sách.</p>
                            <h2>Đánh dấu mục trong danh sách khác nhau</h2>
                            <p>Thuộc tính <b>list-style-type</b> chỉ định các kiểu đánh dấu mục trong danh sách. Ví dụ
                                sau cho thấy một số danh sách có sẵn các đánh dấu dành cho mục của nó:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/n5xq6dw9/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Một số các giá trị dành cho danh sách không có thứ tự, và một số dành cho danh sách có
                                thứ tự.
                            </p>
                            <h2>Đánh dấu các mục của danh sách bằng hình ảnh</h2>
                            <p>Thuộc tính <strong>list-style-image</strong> chỉ định một hình ảnh để đánh dấu các mục
                                trong danh sách.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/pyj42cke/1/embedded/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Vị trí đánh dấu các mục trong danh sách</h2>
                            <p>Thuộc tính <strong>list-style-position</strong> xác định nơi sẽ đánh dấu các mục của danh
                                sách sẽ xuất hiện bên trong hoặc bên ngoài dòng nội dung.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/70ky562d/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Danh sách - Thuộc tính rút gọn</h2>
                            <p>Thuộc tính <strong>list-style</strong> là một thuộc tính rút gọn. Nó được sử dụng để đặt
                                tất cả các thuộc tính của danh sách trong một mô tả (declaration).</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe width="100%" height="300" src="https://jsfiddle.net/codegym/gohqfw8s/embedded/"
                                        allowfullscreen="allowfullscreen" allowpaymentrequest=""
                                        frameborder="0"></iframe>
                            </p>
                            <p>Khi sử dụng thuộc tính rút gọn, thứ tự của các giá trị trong thuộc tính là:</p>
                            <ul>
                                <li>list-style-type (nếu một danh sách đánh dâu bằng hình ảnh được chỉ định, giá trị của
                                    thuộc tính này sẽ được hiển thị nếu hình ảnh vì một số lý do nào đó không thể hiển
                                    thị)
                                </li>
                                <li>list-style-position (xác định cho vị trí đánh dấu mục danh sách xuất hiện bên trong
                                    hoặc bên ngoài dòng nội dung)
                                </li>
                                <li>list-style-image (chỉ định một hình ảnh như để đánh dấu các mục của danh sách)</li>
                            </ul>
                            <p>Nếu một trong các giá trị thuộc tính ở trên bị thiếu, giá trị mặc định cho của các thuộc
                                tính này sẽ được sử dụng, nếu có.</p>
                            <h2>Kiểu của danh sách với màu sắc</h2>
                            <p>Chúng ta cũng có thể định kiểu danh sách với màu sắc, để làm cho chúng nhìn thú vị hơn
                                một chút. Bất cứ điều gì thêm vào thẻ &lt;ol&gt; hoặc &lt;ul&gt;, sẽ ảnh hưởng đến toàn
                                bộ danh sách, trong khi thuộc tính được bổ sung vào các thẻ &lt;li&gt; sẽ ảnh hưởng đến
                                các mục (phần tử) của danh sách.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/7uju3don/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 12 September 2022, 11:33 AM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
