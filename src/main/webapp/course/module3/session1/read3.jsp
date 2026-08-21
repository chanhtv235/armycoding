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
                    <h1 class="entry-title">Tạo Database trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Đổi mật khẩu MySQL Root trên XAMPP </a></div>
                        <div class="nxt-btn"><a href="#"> Xóa Database trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Tạo cơ sở dữ liệu trong MySQL</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">I. Sử dụng lệnh CREATE DATABASE</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">II. Sử dụng trình phpMyAdmin của XAMPP</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">III. Sử dụng phần mềm Navicat</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Tạo database trong MySQL từ chương trình Java</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Tạo cơ sở dữ liệu trong MySQL </h2>
                        <p> Bài này hướng dẫn bạn 3 cách để <strong>tạo cơ sở dữ liệu trong MySQL</strong>: </p>
                        <ol>
                            <li> Sử dụng lệnh CREATE DATABASE </li>
                            <li> Sử dụng trình phpMyAdmin của XAMPP </li>
                            <li> Sử dụng phần mềm Navicat </li>
                        </ol>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> I. Sử dụng lệnh CREATE DATABASE </h2>
                        <p> Để tạo cơ sở dữ liệu, bạn có thể sử dụng lệnh CREATE trong MySQL.
                        </p><h4> 1. Cú pháp cơ bản của lệnh CREATE DATABASE: </h4>
                        <div class="codeblock">
                            <div><div id="highlighter_899244" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">[database_name];</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ: tạo cơ sở dữ liệu <em>sinhvien</em>: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_785623" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">sinhvien;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Lệnh này sẽ tạo một cơ sở dữ liệu có tên là sinhvien trong MySQL Database. </p>

                        <h4> 2. Tạo database trong MySQL với <strong>character set</strong> và <strong>collation</strong>: </h4>
                        <p> Với việc chỉ định character set và collection cho phép bạn nhập kiểu ký tự vào bảng trong cơ sở dữ liệu, ví dụ bạn muốn nhập tiếng Việt có dấu thì character set bạn phải chỉ định là UTF-8... </p>
                        <div class="codeblock">
                            <div><div id="highlighter_768217" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">[database_name] </code><code class="sql keyword">character</code> <code class="sql keyword">set</code> <code class="sql plain">[CHAR_SET] </code><code class="sql keyword">collate</code> <code class="sql plain">[COLLATION];</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ: tạo cơ sở dữ liệu <em>sinhvien</em> có thể lữu trữ dữ liệu tiếng Việt có dấu: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_201371" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">sinhvien </code><code class="sql keyword">character</code> <code class="sql keyword">set</code> <code class="sql plain">UTF8 </code><code class="sql keyword">collate</code> <code class="sql plain">utf8_vietnamese_ci;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> MySQL hỗ trợ hai loại bộ ký tự UTF8: utf8 và utf8mb4. </p>
                        <p> Bảng ký tự utf8 của MySQL chứa các ký tự từ mặt phẳng đa lớp, còn được gọi là BMP - nó là tập hợp con của các ký tự UTF8 có từ 1 đến 3 byte. Các ký tự 4 byte không được bao gồm trong bảng ký tự này và khi cố lưu trữ các ký tự này trong bảng MySQL, sẽ xảy ra lỗi giá trị chuỗi không chính xác. </p>
                        <p> Ký tự utf8mb4 của MySQL là siêu ký tự của BMP và cũng chứa các ký tự 4 byte. Ký tự này được hỗ trợ kể từ MySQL 5.5.3. Trong trường hợp này, máy chủ MySQL phải được cấu hình với tùy chọn character_set_server = utf8mb4 và không sử dụng thuộc tính kết nối thecharacterEncoding. Xem <a href="http://dev.mysql.com/doc/refman/5.5/en/connector-j-reference-charsets.html">http://dev.mysql.com/doc/refman/5.5/en/connector-j-reference-charsets.html</a> để biết thêm chi tiết. </p>
                        <p> Vì vậy để sử dụng bộ ký tự utf8mb4 nên sử dụng phiên bản MySQL 5.5.3 trở lên và trình kết nối / J (trình điều khiển jdbc) của MySQL phiên bản 5.1.18 trở lên. </p>

                        <h4> 3. Sử dụng từ khóa IF NOT EXISTS </h4>
                        <p> Khi các bạn dùng lệnh trên thì nếu bảng đã tồn tại thì hệ thống sẽ báo lỗi. Nếu không muốn nhìn thấy lỗi này, bạn nên sử dụng thêm từ khóa IF NOT EXISTS của MySQL. </p>
                        <p> Cú pháp: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_153762" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">IF </code><code class="sql color1">NOT</code> <code class="sql plain">EXISTS [database_name]</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ví dụ: tạo cơ sở dữ liệu có tên nhanvien như sau, hệ thống sẽ không hiển thị lỗi: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_615106" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">nhanvien;</code></div><div class="line number2 index1 alt1"><code class="sql keyword">CREATE</code> <code class="sql keyword">DATABASE</code> <code class="sql plain">IF </code><code class="sql color1">NOT</code> <code class="sql plain">EXISTS nhanvien;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <hr>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Đổi mật khẩu MySQL Root trên XAMPP </a></div>
                        <div class="nxt-btn"><a href="#"> Xóa Database trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
               
        </div>
        </div>
    </div>
    </div>
</body>
</html>
