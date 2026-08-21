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
                    <h1 class="entry-title">Tạo bảng trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Kiểu dữ liệu trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Xóa bảng trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Bảng dữ liệu là cấu trúc có vai trò quan trọng nhất trong cơ sở dữ liệu quan hệ. Toàn bộ dữ liệu của cơ sở dữ liệu được tổ chức trong các bảng, những bảng này có thể là những bảng hệ thống được tạo ra khi tạo cơ sở dữ liệu, và cũng có thể là những bảng do người sử dụng định nghĩa. </p>

                        <img src="https://viettuts.vn/images/mysql/tao-bang-trong-mysql.png" alt="Tạo bảng trong MySQL" title="Tạo bảng trong MySQL">

                        <p> Trong các bảng, dữ liệu được tổ chức dưới dạng các dòng và cột. Mỗi một dòng là một bản ghi duy nhất trong bảng và mỗi một cột là một trường. Các bảng trong cơ sở dữ liệu được sử dụng để biểu diễn thông tin, lưu giữ dữ liệu về các đối tượng trong thế giới thực và/hoặc mối quan hệ giữa các đối tượng. Bảng trong hình trên bao gồm 7 bản ghi và 5 trường là ID, NAME, AGE, ADDRESS, SALARY. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp tạo bảng trong MySQL</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ tạo bảng trong MySQL</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Insert dữ liệu vào bảng nhanvien</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Cú pháp tạo bảng trong MySQL </h2>
                        <p> Sau đây là cú pháp tạo bảng trong MySQL: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_29770" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">TABLE</code> <code class="sql plain">ten_bang (</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ten_cot thuoc_tinh_cot cac_rang_buoc_cot [,</code></div><div class="line number3 index2 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">...,</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ten_cot_n thuoc_tinh_cot_n cac_rang_buoc_cot_n],</code></div><div class="line number5 index4 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">[cac_rang_buoc_tren_bang]</code></div><div class="line number6 index5 alt1"><code class="sql plain">)</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong đó: </p>
                        <p> <strong>ten_bang </strong>: Tên của bảng cần tạo. Tên phải tuân theo qui tắc định danh và không được vượt quá 128 ký tự. </p>
                        <p> <strong>ten_cot </strong>: Là tên của cột (trường) cần định nghĩa, tên cột phải tuân theo qui tắc định danh và không được trùng nhau trong mỗi một bảng. Mỗi một bảng phải có ít nhất một cột. Nếu bảng có nhiều cột thì định nghĩa của các cột (tên cột, thuộc tính và các ràng buộc) phải phân cách nhau bởi dấu phẩy. </p>
                        <p> <strong>thuoc_tinh_cot </strong>: Mỗi một cột trong một bảng ngoài tên cột còn có các thuộc tính bao gồm: </p>
                        <ul>
                            <li> Kiểu dữ liệu của cột. Đây là thuộc tính bắt buộc phải có đối với mỗi cột. </li>
                            <li> Giá trị mặc định của cột: là giá trị được tự động gán cho cột nếu như người sử dụng không nhập dữ liệu cho cột một cách tường minh. Mỗi một cột chỉ có thể có nhiều nhất một giá trị mặc định. </li>
                            <li> Cột có tính chất IDENTITY hay không? tức là giá trị của cột có được tự động tăng mỗi khi có bản ghi mới được bổ sung hay không. Tính chất này chỉ có thể sử dụng đối với các trường kiểu số. </li>
                            <li> Cột có chấp nhận giá trị NULL hay không. </li>
                        </ul>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ tạo bảng trong MySQL </h2>
                        <p> Câu lệnh dưới đây định nghĩa bảng NHANVIEN với các trường MANV (mã nhân viên), HOTEN (họ và tên), NGAYSINH (ngày sinh của nhân viên), DIENTHOAI (điện thoại) và HSLUONG (hệ số lương) </p>
                        <div class="codeblock">
                            <div><div id="highlighter_84710" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">TABLE</code> <code class="sql plain">nhanvien (</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">manv </code><code class="sql keyword">INT</code> <code class="sql color1">NOT</code> <code class="sql color1">NULL</code> <code class="sql plain">AUTO_INCREMENT,</code></div><div class="line number3 index2 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">hoten </code><code class="sql keyword">VARCHAR</code><code class="sql plain">(50) </code><code class="sql color1">NOT</code> <code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ngaysinh DATETIME </code><code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number5 index4 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">dienthoai </code><code class="sql keyword">VARCHAR</code><code class="sql plain">(11) </code><code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">hsluong </code><code class="sql keyword">DECIMAL</code><code class="sql plain">(3, 2),</code></div><div class="line number7 index6 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">PRIMARY</code> <code class="sql keyword">KEY</code> <code class="sql plain">(manv)</code></div><div class="line number8 index7 alt1"><code class="sql plain">);</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Trong câu lệnh trên, trường MANV và HOTEN của bảng NHANVIEN không được NULL (tức là bắt buộc phải có dữ liệu), trường NGAYSINH và DIENTHOAI sẽ nhận giá trị NULL. </p>
                        <p> Thuộc tính ràng buộc <strong>NOT NULL</strong> của trường được sử dụng bởi vì chúng ta không muốn trường này là NULL. Vì thế, nếu người dùng cố gắng tạo một bản ghi có giá trị NULL, thì MySQL sẽ tạo một lỗi. </p>
                        <p> Thuộc tính <strong>AUTO_INCREMENT</strong> nói cho MySQL tự động tăng khóa chính và thêm giá trị có sẵn tiếp theo tới trường manv. </p>
                        <p> Từ khóa <strong>PRIMARY KEY</strong> được sử dụng để định nghĩa một cột là PRIMARY KEY (khóa chính). Bạn có thể sử dụng nhiều cột phân biệt nhau bởi dấu phảy để định nghĩa một PRIMARY KEY. </p>

                        <h2 id="goto-h2-3"> Insert dữ liệu vào bảng nhanvien </h2>
                        <p> Nếu ta thực thi các câu lệnh dưới đây sau khi tạo bảng để bổ sung dữ liệu cho bảng nhanvien</p>
                        <div class="codeblock">
                            <div><div id="highlighter_784613" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien (hoten, ngaysinh, dienthoai, hsluong)</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code><code class="sql plain">(</code><code class="sql string">'Nguyen Van Vinh'</code><code class="sql plain">, </code><code class="sql string">'2020/10/03'</code><code class="sql plain">, </code><code class="sql string">'886963'</code><code class="sql plain">, 2.14);</code></div><div class="line number3 index2 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien(hoten)</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code><code class="sql plain">(</code><code class="sql string">'Mai Thanh Toan'</code><code class="sql plain">);</code></div><div class="line number5 index4 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien(hoten,dienthoai)</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code><code class="sql plain">(</code><code class="sql string">'Tran Thi C'</code><code class="sql plain">,</code><code class="sql string">'849290'</code><code class="sql plain">);</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Ta sẽ có được dữ liệu trong bảng nhanvien như sau: </p>
                        <img src="https://viettuts.vn/images/mysql/tao-bang-trong-mysql-insert.png" alt="Ví dụ Tạo bảng trong MySQL" title="Ví dụ Tạo bảng trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Kiểu dữ liệu trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Xóa bảng trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
                    
        </div>
        </div>
    </div>
    </div>
</body>
</html>
