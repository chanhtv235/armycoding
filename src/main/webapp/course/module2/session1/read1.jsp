<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Cài đặt môi trường Java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Các tính năng của java </a></div>
                        <div class="nxt-btn"><a href="#"> Chương trình Hello World trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Bài học này viettuts.vn hướng dẫn bạn: </p><p>
                        </p><ol>
                            <li> Cách <strong>cài đặt môi trường java</strong> trên Windows. </li>
                            <li> Tạo chương trình java đầu tiên trên eclipse. </li>
                            <li> Cách cài đặt môi trường java trên Linux (Ubuntu). </li>
                        </ol>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">[Video] Cài đặt JDK - tạo java project trong IntelliJ Idea (update 2024)</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">1. Cài đặt môi trường java trên Windows</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Cài đặt JDK (Java Development Kit)</a></li><li><a href="#goto-h3-2">Cấu hình biến môi trường</a></li></ul>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">2. Tạo chương trình java đầu tiên trên eclipse</a>
                                    <ul>
                                        <li>
                                            <a href="#goto-h3-3">Tạo chương trình java đầu tiên trên eclipse</a>
                                        </li>
                                        <li>
                                            <a href="#goto-h3-4">Chạy chương trình java đầu tiên trên eclipse</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> [Video] Cài đặt JDK - tạo java project trong IntelliJ Idea (update 2024) </h2>
                        <iframe width="766" height="430" src="https://www.youtube.com/embed/OVOB9G9-yBE?si=n0iV3NYZ9EZIvzf_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen=""></iframe>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> 1. Cài đặt môi trường java trên Windows </h2>
                        <p> Để lầm việc với java bạn phải cài đặt môi trường cho nó, môi trường java bao gồm những gì? Phần này viettuts.vn hướng dẫn bạn cài đặt môi trường cho java trên môi trường Windows. Còn trên môi trường Linux(Ubuntu) ở phía cuối của bài học. </p>
                        <p> Dưới đây là những gì cơ bản và cần thiết bạn cần phải cài đặt: </p>
                        <ul>
                            <li> Cài đặt JDK (Java Development Kit) </li>
                            <li> Cấu hình biến môi trường. </li>
                        </ul>
                        <p> Về cơ bản thì chỉ cần 2 bước trên là đủ để tạo ra và chạy một chương trình java đơn giản. Dưới đây là chi tiết cho các bước trên. </p>
                        <hr>

                        <h3 id="goto-h3-1">  Cài đặt JDK (Java Development Kit) </h3>
                        <p> <strong>JDK là gì</strong>? JDK (là viết tắt của Java Development Kit) là một bộ phát triển phần mềm để phát triển các ứng dụng trong Java. JDK bao gồm JRE và các Development Tool. Ngoài JRE, JDK cũng chứa số công cụ phát triển (trình biên dịch, JavaDoc, Java Debugger, ...) tham khảo tại <a href="/java/su-khac-nhau-giua-jdk-jre-va-jvm">sự khác nhau giữa JDK, JRE và JVM</a>. Nên bạn chỉ cần tải JDK về là đủ. </p>
                        <p> Hiện nay có 2 phiên bản java được sử dụng phổ biến đó là JDK7 và JDK8, dưới đây là link download JDK8: </p>
                        <ul>
                            <li> Link: <a href="http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html" target="_blank">http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html</a> </li>
                            <li> Click vào 'Accept License Agreement': <br>
                                <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-jdk.png" alt="Cài đặt môi trường java" title="Cài đặt môi trường java"> </li>
                            <li> Nếu hệ điều hành của bạn là 32bit thì bạn tải về bản x86, 64bit thì bạn có thể tải 1 trong 2 hoặc cả 2 x86 và x64 đều được. </li>
                        </ul>
                        <p> Sau khi tải JDK về, bạn cài đặt giống như cài đặt các phần mềm khác. </p>
                        <hr>

                        <h3 id="goto-h3-2"> Cấu hình biến môi trường </h3>
                        <p> Việc cấu hình biến môi trường bao gồm 2 việc sau: </p>
                        <ul>
                            <li> Tạo biến JAVA_HOME </li>
                            <li> Sửa biến Path </li>
                        </ul>
                        <hr>

                        <h4> Tạo biến JAVA_HOME </h4>
                        <p> Click chuột phải vào biểu tượng MyComputer --&gt; Properties -&gt; Advanced system settings -&gt; Environment Variables -&gt; Click 'New' trong System Variables </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-bien-moi-truong-2.png" alt="Cài đặt môi trường java" title="Cài đặt môi trường java">
                        <p> Nhập: Variable name = "JAVA_HOME" và Variable value = [java-path] </p>
                        <h5> Ví dụ </h5>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-bien-moi-truong-3.png" alt="Cài đặt môi trường java" title="Cài đặt môi trường java">
                        <p> Click: OK -&gt; OK -&gt; OK </p>
                        <hr>

                        <h4> Sửa biến Path </h4>
                        <p> Click chuột phải vào biểu tượng MyComputer --&gt; Properties -&gt; Advanced system settings -&gt; Environment Variables -&gt; edit biến Path trong System Variables -&gt; thêm [java-path]\bin vào biến Path -&gt; OK -&gt; OK -&gt; OK </p>
                        <h5> Ví dụ </h5>
                        <p> Edit biến path trong System Variables </p>
                        <img src="https://viettuts.vn/images/java/thiet-lap-path-cho-java-2.png" alt="Cài đặt môi trường java" title="Cài đặt môi trường java">
                        <p> Nhập giá trị sau vào cuối biến path: </p>
                        <div class="codeblock">
                            <div><div id="highlighter_706122" class="syntaxhighlighter  java"><div class="toolbar"><span><a href="#" class="toolbar_item command_help help">?</a></span></div><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="java plain">C:\Program Files\Java\jdk1.</code><code class="java value">8</code><code class="java plain">.0_45\bin</code></div></div></td></tr></tbody></table></div></div>
                        </div>
                        <img src="https://viettuts.vn/images/java/thiet-lap-path-cho-java-3.png" alt="Cài đặt môi trường java" title="Cài đặt môi trường java">
                        <p> Click button OK -&gt; OK -&gt; OK.
                        </p><p> Bạn cần phải restart (hoặc sign out) máy tính sau khi cài đặt biến môi trường. </p>
                        <hr>

                        <h2 id="goto-h2-3"> 2. Tạo chương trình java đầu tiên trên eclipse </h2>
                        <p> Khi mới học java có khi nào bạn tự hỏi các doạn code java được viết vào đâu (editor nào)? biên dịch và chạy nó như nào? Bạn có thể tham khảo bài <a href="#">Hello World trong java</a> để biết cách tạo chương trình java bằng notepad và hiểu một chương trình java được biên địch như thế nào.</p>
                        <p> Nhưng sau đó bạn nên biết và sử dụng <strong>eclipse</strong> hoặc <strong>netbean</strong>, vì chúng là 2 IDE miễn phí phổ biến mạnh mẽ nhất được sử dụng trong việc lập trình java. Phần này viettuts.vn hướng dẫn bạn cách <strong>tạo và chạy chương trình java đầu tiên trên eclipse</strong>. </p>
                        <p> Tiếp theo là bạn cần phải tải về và cài đặt eclipse. Tham khảo bài <a href="/eclipse/download-va-cai-dat-eclipse">download và cài đặt Eclipse IDE cho lập trình Java</a>. </p>
                        <hr>

                        <h3 id="goto-h3-3"> Tạo chương trình java đầu tiên trên eclipse </h3>
                        <p> Dưới đây là các bước tạo chương trình java đầu tiên trên eclipse: </p>
                        <p> Chọn File -&gt; New -&gt; Other... <br>
                            Nhập Wizards = "java project" để tìm kiếm nhanh:<br>
                            Sau đó chọn "Java Project" -&gt; Next: </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-1.png" alt="Cài đặt môi trường java - tạo project trên eclipse 1" title="Cài đặt môi trường java - tạo project trên eclipse 1">
                        <p> Nhập project name: "java-hello-world" -&gt; Finish </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-2.png" alt="Cài đặt môi trường java - tạo project trên eclipse 2" title="Cài đặt môi trường java - tạo project trên eclipse 2">
                        <p> Click OK tại dialog "Open Associated Perspective" </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-3.png" alt="Cài đặt môi trường java - tạo project trên eclipse 3" title="Cài đặt môi trường java - tạo project trên eclipse 3">
                        <p> Tạo package cho project: click chuột phải vào "src" -&gt; New -&gt; packpage </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-4.png" alt="Cài đặt môi trường java - tạo project trên eclipse 4" title="Cài đặt môi trường java - tạo project trên eclipse 4">
                        <p> Nhập package name = "vn.viettuts" -&gt; Finish </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-5.png" alt="Cài đặt môi trường java - tạo project trên eclipse 5" title="Cài đặt môi trường java - tạo project trên eclipse 5">
                        <p> Click chuột phải vào packpage "vn.viettuts" -&gt; New -&gt; Class </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-6.png" alt="Cài đặt môi trường java - tạo project trên eclipse 6" title="Cài đặt môi trường java - tạo project trên eclipse 6">
                        <p> Nhập Name = "HelloWorld" -&gt; Finish </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-7.png" alt="Cài đặt môi trường java - tạo project trên eclipse 7" title="Cài đặt môi trường java - tạo project trên eclipse 7">
                        <p> Eclipse tạo cho bạn lớp HelloWorld.java như sau: </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-8.png" alt="Cài đặt môi trường java - tạo project trên eclipse 8" title="Cài đặt môi trường java - tạo project trên eclipse 8">
                        <p> Viết hàm <strong>main</strong> cho lớp HelloWorld.java như sau: </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-9.png" alt="Cài đặt môi trường java - tạo project trên eclipse 9" title="Cài đặt môi trường java - tạo project trên eclipse 9">
                        <hr>

                        <h3 id="goto-h3-4"> Chạy chương trình java đầu tiên trên eclipse </h3>
                        <p> Sử dụng tổ hớp phím <strong>CTRL + F11</strong> để chạy (run) chương trình java trên eclipse, với chương trình đã tạo ở trên chúng ta có kết quả như sau: </p>
                        <img src="https://viettuts.vn/images/java/cai-dat-moi-truong-java-tao-project-tren-eclipse-10.png" alt="Cài đặt môi trường java - run project trên eclipse" title="Cài đặt môi trường java - run project trên eclipse">
                        <hr>


                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Các tính năng của java </a></div>
                        <div class="nxt-btn"><a href="#"> Chương trình Hello World trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>
