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
                    <h1 class="entry-title">Câu lệnh INSERT trong MySQL</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Xóa bảng trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh Select trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Câu lệnh INSERT trong MySQL được sử dụng để chèn dữ liệu vào bảng. </p>
                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Cú pháp</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ví dụ chèn dữ liệu vào bảng trong MySQL</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-1">Ví dụ 1 insert dữ liệu vào bảng</a>
                                        </li>
                                        <li>
                                            <a href="#goto-h3-2">Ví dụ 2 insert dữ liệu vào bảng với trường primary key tự động tăng</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Cú pháp </h2>
                        <p> Cú pháp SQL cơ bản của lệnh INSERT INTO để chèn dữ liệu vào trong bảng MySQL là: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_844991" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">ten_bang(ten_truong_1, ten_truong_2, ... ten_truong_n)</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(gia_tri_1, gia_tri_2, ... gia_tri_n);</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Bạn có thể không cần phải chỉ rõ tên cột trong truy vấn SQL nếu bạn đang thêm các giá trị cho tất cả các cột của bảng. Nhưng hãy chắc chắn thứ tự của các giá trị theo thứ tự như các cột trong bảng. </p>
                        <p> Cú pháp như sau: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_749552" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">ten_bang </code><code class="sql keyword">VALUES</code> <code class="sql plain">(gia_tri_1, gia_tri_2, ... gia_tri_n);</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Ví dụ chèn dữ liệu vào bảng trong MySQL </h2>
                        <h3 id="goto-h3-1"> Ví dụ 1 insert dữ liệu vào bảng </h3>
                        <p> Đoạn mã sau đây là một ví dụ, tạo ra một bảng CUSTOMERS với một ID như một khóa chính và NOT NULL là những ràng buộc cho thấy các trường này không thể là NULL trong khi tạo các bản ghi trong bảng này: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_128454" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">TABLE</code> <code class="sql plain">CUSTOMERS (</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ID&nbsp;&nbsp; </code><code class="sql keyword">INT</code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code class="sql color1">NOT</code> <code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number3 index2 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">NAME</code> <code class="sql keyword">VARCHAR</code> <code class="sql plain">(20)&nbsp;&nbsp;&nbsp;&nbsp; </code><code class="sql color1">NOT</code> <code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql plain">AGE&nbsp; </code><code class="sql keyword">INT</code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code class="sql color1">NOT</code> <code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number5 index4 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ADDRESS&nbsp; </code><code class="sql keyword">CHAR</code> <code class="sql plain">(25),</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql plain">SALARY&nbsp;&nbsp; </code><code class="sql keyword">DECIMAL</code> <code class="sql plain">(18, 2),</code></div><div class="line number7 index6 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">PRIMARY</code> <code class="sql keyword">KEY</code> <code class="sql plain">(ID)</code></div><div class="line number8 index7 alt1"><code class="sql plain">);</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Các câu lệnh sau sẽ tạo ra sáu bản ghi trong bảng CUSTOMERS: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_724657" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(1, </code><code class="sql string">'Ha Anh'</code><code class="sql plain">, 32, </code><code class="sql string">'Da Nang'</code><code class="sql plain">, 2000.00 );</code></div><div class="line number3 index2 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(2, </code><code class="sql string">'Van Ha'</code><code class="sql plain">, 25, </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, 1500.00 );</code></div><div class="line number5 index4 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(3, </code><code class="sql string">'Vu Bang'</code><code class="sql plain">, 23, </code><code class="sql string">'Vinh'</code><code class="sql plain">, 2000.00 );</code></div><div class="line number7 index6 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number8 index7 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(4, </code><code class="sql string">'Thu Minh'</code><code class="sql plain">, 25, </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, 6500.00 );</code></div><div class="line number9 index8 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number10 index9 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(5, </code><code class="sql string">'Hai An'</code><code class="sql plain">, 27, </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, 8500.00 );</code></div><div class="line number11 index10 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS (ID,</code><code class="sql keyword">NAME</code><code class="sql plain">,AGE,ADDRESS,SALARY)</code></div><div class="line number12 index11 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(6, </code><code class="sql string">'Hoang'</code><code class="sql plain">, 22, </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, 4500.00 );</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Bạn có thể tạo một bản ghi trong bảng CUSTOMERS bằng cách sử dụng cú pháp thứ hai như hình dưới đây. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_662582" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">CUSTOMERS</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(7, </code><code class="sql string">'Binh'</code><code class="sql plain">, 24, </code><code class="sql string">'Ha Noi'</code><code class="sql plain">, 10000.00 );</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Tất cả các câu lệnh trên sẽ tạo ra các bản ghi sau trong bảng CUSTOMERS như hình dưới đây. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_730356" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">nhanvien;</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <p> Kết quả: </p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-insert-trong-mysql-1.png" alt="Câu lệnh INSERT trong MySQL" title="Câu lệnh INSERT trong MySQL">

                        <h3 id="goto-h3-2"> Ví dụ 2 insert dữ liệu vào bảng với trường primary key tự động tăng </h3>
                        <p> Sử dụng câu lệnh <a href="#">tạo bảng trong MySQL</a>: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_582587" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">CREATE</code> <code class="sql keyword">TABLE</code> <code class="sql plain">nhanvien (</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">manv </code><code class="sql keyword">INT</code> <code class="sql color1">NOT</code> <code class="sql color1">NULL</code> <code class="sql plain">AUTO_INCREMENT,</code></div><div class="line number3 index2 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">hoten </code><code class="sql keyword">VARCHAR</code><code class="sql plain">(50) </code><code class="sql color1">NOT</code> <code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">ngaysinh DATETIME </code><code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number5 index4 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">dienthoai </code><code class="sql keyword">VARCHAR</code><code class="sql plain">(11) </code><code class="sql color1">NULL</code><code class="sql plain">,</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql plain">hsluong </code><code class="sql keyword">DECIMAL</code><code class="sql plain">(3, 2),</code></div><div class="line number7 index6 alt2"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">PRIMARY</code> <code class="sql keyword">KEY</code> <code class="sql plain">(manv)</code></div><div class="line number8 index7 alt1"><code class="sql plain">);</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Dưới đây là ví dụ minh họa việc sử dụng lệnh INSERT INTO để chèn dữ liệu vào trong bảng <em>nhanvien</em>. </p>
                        <div class="codeblock">
                            <div><div id="highlighter_266200" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien (hoten, ngaysinh, dienthoai, hsluong)</code></div><div class="line number2 index1 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(</code><code class="sql string">'Trịnh Bá Đạo'</code><code class="sql plain">, </code><code class="sql string">'1997-10-15 00:00:00'</code><code class="sql plain">, </code><code class="sql string">'0989898966'</code><code class="sql plain">, 1.2);</code></div><div class="line number3 index2 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien (hoten, ngaysinh, dienthoai, hsluong)</code></div><div class="line number4 index3 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(</code><code class="sql string">'Phan Văn Vinh'</code><code class="sql plain">, </code><code class="sql string">'1990-03-04 00:00:00'</code><code class="sql plain">, </code><code class="sql string">'0989898967'</code><code class="sql plain">, 1.8);</code></div><div class="line number5 index4 alt2"><code class="sql keyword">INSERT</code> <code class="sql keyword">INTO</code> <code class="sql plain">nhanvien (hoten, ngaysinh, dienthoai, hsluong)</code></div><div class="line number6 index5 alt1"><code class="sql spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="sql keyword">VALUES</code> <code class="sql plain">(</code><code class="sql string">'Đào Van Hoa'</code><code class="sql plain">, </code><code class="sql string">'1990-03-05 00:00:00'</code><code class="sql plain">, </code><code class="sql string">'0989898968'</code><code class="sql plain">, 1.9);</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Trong ví dụ trên, mình đã không cung cấp mssv bởi vì tại thời điểm tạo bảng này, mình đã cung cấp tùy chọn AUTO_INCREMENT cho trường này. Vì thế, MySQL sẽ xử lý việc chèn các mssv của nó một cách tự động. </p>
                        <p> Sử dụng câu lệnh SELECT để xem dữ liệu của bảng nhanvien: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_491200" class="syntaxhighlighter  sql"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="sql keyword">SELECT</code> <code class="sql plain">* </code><code class="sql keyword">FROM</code> <code class="sql plain">nhanvien;</code></div></div></td></tr></tbody></table></div></div>
                        </div>

                        <p> Kết quả: </p>
                        <img src="https://viettuts.vn/images/mysql/vi-du-cau-lenh-insert-trong-mysql.png" alt="Câu lệnh INSERT trong MySQL" title="Câu lệnh INSERT trong MySQL">

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Xóa bảng trong MySQL </a></div>
                        <div class="nxt-btn"><a href="#"> Câu lệnh Select trong MySQL <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr></div>
                    
        </div>
        </div>
    </div>
    </div>
</body>
</html>
