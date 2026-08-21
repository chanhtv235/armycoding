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
                <a href="${pageContext.request.contextPath}/course/module3/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về CSDL Mysql</a>
                <header class="entry-header">
                    <h1 class="entry-title">MySQL là gì?</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="nxt-btn"><a href="#"> Cài đặt MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">MySQL là gì?</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Cách thức hoạt động của MySQL</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Các tính năng cốt lõi của MySQL</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Các nhánh của MySQL</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Sự khác biệt giữa SQL và MySQL</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> MySQL là gì? </h2>
                        <p> MySQL là một hệ thống quản lý cơ sở dữ liệu quan hệ mã nguồn mở (RDBMS) dựa trên ngôn ngữ truy vấn có cấu trúc ( SQL) được phát triển, phân phối và hỗ trợ bởi tập đoàn Oracle. MySQL chạy trên hầu hết tất cả các nền tảng, bao gồm cả  Linux ,  UNIX và  Windows. MySQL thường được kết hợp với các ứng dụng web. </p>
                        <p> Trang web MySQL <a href="http://www.mysql.com">http://www.mysql.com</a> cung cấp thông tin mới nhất về hệ quản lý cơ sở dữ liệu MySQL. </p>
                        <img src="https://viettuts.vn/images/mysql/mysql.jpg" alt="MySQL là gì?" title="MySQL là gì?">

                        <p> SQL là ngôn ngữ phổ biến nhất để thêm, truy cập và quản lý nội dung trong cơ sở dữ liệu. Nó được chú ý nhất vì khả năng xử lý nhanh, độ tin cậy đã được chứng minh, dễ sử dụng và linh hoạt. MySQL là một phần thiết yếu của hầu hết mọi ứng dụng <a href="/php">PHP</a> mã nguồn mở. Các ví dụ điển hình cho các tập lệnh dựa trên PHP và MySQL là  WordPress, Joomla, Magento và Drupal. MySQL đang trở nên phổ biến vì nhiều lý do tốt: </p>

                        <ul>
                            <li>
                                MySQL được phát hành theo giấy phép nguồn mở. Vì vậy, bạn không phải trả tiền để sử dụng nó.
                            </li>
                            <li>
                                MySQL là một chương trình rất mạnh theo đúng nghĩa của nó. Nó xử lý một tập hợp lớn các chức năng của các gói cơ sở dữ liệu mạnh mẽ và đắt tiền nhất.
                            </li>
                            <li>
                                MySQL sử dụng một dạng chuẩn của ngôn ngữ dữ liệu SQL nổi tiếng.
                            </li>
                            <li>
                                MySQL hoạt động trên nhiều hệ điều hành và với nhiều ngôn ngữ bao gồm PHP, PERL, C, C ++, JAVA, v.v.
                            </li>
                            <li>
                                MySQL hoạt động rất nhanh và hoạt động tốt ngay cả với các tập dữ liệu lớn.
                            </li>
                            <li>
                                MySQL rất thân thiện với PHP, ngôn ngữ được đánh giá cao nhất để phát triển web.
                            </li>
                            <li>
                                MySQL hỗ trợ cơ sở dữ liệu lớn, lên tới 50 triệu hàng hoặc nhiều hơn trong một bảng. Giới hạn kích thước tệp mặc định cho một bảng là 4GB, nhưng bạn có thể tăng mức này (nếu hệ điều hành của bạn có thể xử lý nó) đến giới hạn lý thuyết là 8 triệu terabyte (TB).
                            </li>
                            <li>
                                MySQL là tùy biến. Giấy phép GPL mã nguồn mở cho phép các lập trình viên sửa đổi phần mềm MySQL để phù hợp với môi trường cụ thể của riêng họ.
                            </li>
                        </ul>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Cách thức hoạt động của MySQL </h2>
                        <p> MySQL dựa trên mô hình client-server. Cốt lõi của MySQL là máy chủ MySQL, xử lý tất cả các hướng dẫn cơ sở dữ liệu (hoặc các lệnh). Máy chủ MySQL có sẵn như là một chương trình riêng biệt để sử dụng trong môi trường mạng client-server và như một thư viện có thể được nhúng (hoặc liên kết) vào các ứng dụng riêng biệt.</p>

                        <p> MySQL hoạt động cùng với một số chương trình tiện ích hỗ trợ quản trị cơ sở dữ liệu MySQL. Các lệnh được gửi đến MySQLServer thông qua máy khách MySQL, được cài đặt trên máy tính.</p>

                        <p> MySQL ban đầu được phát triển để xử lý cơ sở dữ liệu lớn một cách nhanh chóng. Mặc dù MySQL thường chỉ được cài đặt trên một máy, nhưng nó có thể gửi cơ sở dữ liệu đến nhiều vị trí, vì người dùng có thể truy cập thông qua các giao diện máy khách MySQL khác nhau. Các giao diện này gửi các câu lệnh SQL đến máy chủ và sau đó hiển thị kết quả. </p>
                        <hr>

                        <h2 id="goto-h2-3"> Các tính năng cốt lõi của MySQL </h2>
                        <p> MySQL cho phép dữ liệu được lưu trữ và truy cập trên nhiều công cụ lưu trữ, bao gồm InnoDB, CSV và NDB. MySQL cũng có khả năng sao chép dữ liệu và phân vùng bảng để có hiệu suất và độ bền tốt hơn. Người dùng MySQL không bắt buộc phải học các lệnh mới; họ có thể truy cập dữ liệu của mình bằng các lệnh <a href="/sql">SQL</a> tiêu chuẩn. </p>

                        <p> MySQL được viết bằng C và C++ và có thể truy cập và có sẵn trên hơn 20 nền tảng, bao gồm Mac, Windows, Linux và Unix. RDBMS hỗ trợ cơ sở dữ liệu lớn với hàng triệu bản ghi và hỗ trợ nhiều loại dữ liệu bao gồm các số nguyên có chữ ký hoặc không dấu có độ dài 1, 2, 3, 4 và 8 byte(s); FLOAT; DOUBLE; CHAR; VARCHAR; BINARY; VARBINARY; TEXT; BLOB; DATE; TIME; DATETIME; TIMESTAMP; YEAR; SET; ENUM; và các kiểu OpenGIS. Các loại chuỗi có độ dài cố định và biến đổi cũng được hỗ trợ. </p>

                        <p> Để bảo mật, MySQL sử dụng một đặc quyền truy cập và hệ thống mật khẩu được mã hóa cho phép xác minh dựa trên máy chủ. Các máy khách MySQL có thể kết nối với Máy chủ MySQL bằng một số giao thức, bao gồm cả giao thức TCP/IP trên bất kỳ nền tảng nào. MySQL cũng hỗ trợ một số chương trình máy khách và tiện ích, chương trình dòng lệnh và công cụ quản trị như MySQL Workbench. </p>
                        <hr>

                        <div class="ad-content">
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- tuts-content1-336x280 -->
                            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-4405294953475693" data-ad-slot="1248734165" data-ad-format="auto" data-full-width-responsive="true"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-4"> Các nhánh của MySQL </h2>
                        <p> Các nhánh của MySQL bao gồm: </p>
                        <ul>
                            <li> <strong>Drijection</strong>: một hệ thống quản lý cơ sở dữ liệu nguồn mở nhẹ được phát triển dựa trên MySQL 6.0. </li>
                            <li> <strong>MariaDB</strong>: một sự thay thế phổ biến do cộng đồng phát triển cho MySQL sử dụng các lệnh và API của MySQL. </li>
                            <li> <strong>Percona Server với XtraDB</strong>: một phiên bản nâng cao của MySQL được biết đến với  khả năng mở rộng theo chiều ngang. </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-5"> Sự khác biệt giữa SQL và MySQL </h2>
                        <table class="alt">
                            <thead>
                            <tr>
                                <th width="15%"><strong>Tiêu chí</strong> </th>
                                <th><strong>SQL </strong> </th>
                                <th><strong>MYSQL</strong> </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Định nghĩa</td>
                                <td>SQL là một ngôn ngữ truy vấn có cấu trúc (Structured Query Language). Nó rất hữu ích để quản lý cơ sở dữ liệu quan hệ. </td>
                                <td>MySQL là một RDBMS để lưu trữ, truy xuất, sửa đổi và quản trị cơ sở dữ liệu bằng cách sử dụng MySQL. </td>
                            </tr>
                            <tr>
                                <td>Kiểu</td>
                                <td>SQL là một ngôn ngữ truy vấn. </td>
                                <td>MySQL là phần mềm cơ sở dữ liệu. Nó đã sử dụng ngôn ngữ "SQL" để truy vấn cơ sở dữ liệu. </td>
                            </tr>
                            <tr>
                                <td>Hỗ trợ kết nối </td>
                                <td>SQL không cung cấp trình kết nối. </td>
                                <td>MySQL cung cấp một công cụ tích hợp được gọi là 'MySQL workbench' để thiết kế và phát triển cơ sở dữ liệu. </td>
                            </tr>
                            <tr>
                                <td>Mục đích</td>
                                <td>Để truy vấn và vận hành hệ thống cơ sở dữ liệu. </td>
                                <td>Cho phép xử lý dữ liệu, lưu trữ, sửa đổi, xóa theo định dạng bảng. </td>
                            </tr>
                            <tr>
                                <td>Sử dụng</td>
                                <td>Mã và lệnh SQL được sử dụng trong các hệ thống DBMS và RDMS khác nhau bao gồm MYSQL. </td>
                                <td>MYSQL được sử dụng làm cơ sở dữ liệu RDBMS. </td>
                            </tr>
                            <tr>
                                <td>Cập nhật</td>
                                <td>Ngôn ngữ là cố định, và lệnh vẫn giữ nguyên. </td>
                                <td>Nhận cập nhật thường xuyên. </td>
                            </tr>
                            </tbody>
                        </table>

                        <hr>
                        <div class="nxt-btn"><a href="#"> Cài đặt MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
        </div>
        </div>
    </div>
    </div>
</body>
</html>
