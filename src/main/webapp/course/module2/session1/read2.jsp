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
                <a href="${pageContext.request.contextPath}/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 1.Tổng quan về Java</a>
                <header class="entry-header">
                    <h1 class="entry-title">Cài đặt môi trường Java</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn">
                            <a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Hello World trong java </a>
                        </div>
                        <div class="nxt-btn">
                            <a href="#"> Biến và kiểu dữ liệu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a>
                        </div>
                        <div class="clearer"></div>
                        <hr>

                        <p> Hiểu rõ sự khác nhau giữa JDK, JRE và JVM là điều khá quan trọng trong Java. </p>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Tìm hiểu JVM</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Tìm hiểu JRE</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Tìm hiểu JDK</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Tìm hiểu JVM </h2>
                        <p> JVM (viết tắt của Java Virtual Machine) là một thiết bị trừu tượng (ảo) có thể giúp máy tính chạy các chương trình Java. Nó cung cấp môi trường runtime mà trong đó Java Bytecode có thể được thực thi. </p>
                        <p> JVM là có sẵn cho nhiều nền tảng (Windows, Linux...). JVM, JRE và JDK là phụ thuộc nền tảng, bởi vì cấu hình của mỗi OS (hệ điều hành) là khác nhau. Nhưng, Java là độc lập nền tảng. </p>
                        <p><strong> Các nhiệm vụ chính của JVM</strong>
                        </p><ul>
                            <li>Tải code </li>
                            <li>Kiểm tra code </li>
                            <li>Thực thi code </li>
                            <li>Cung cấp môi trường runtime </li>
                        </ul>

                        <p> Cấu trúc của JVM </p><p>
                            <img class="aligncenter wp-image-179 size-full" src="https://viettuts.vn/images/java/jvm.jpg" alt="JVM">

                        </p><p> Trong đó: </p><p>
                        </p><ul>
                            <li> <strong>Classloader:</strong> Là một hệ thống con của JVM được sử dụng để tải class file. </li>
                            <li> <strong>Class (method) Area:</strong> Lưu trữ cấu trúc mỗi lớp, chẳng hạn như hằng, trường, dữ liệu phương thức, code của phương thức, ... </li>

                            <li><strong>Heap:</strong> Nó là khu vực dữ liệu runtime mà trong đó đối tượng được cấp phát. </li>

                            <li><strong>Stack:</strong> Stack trong Java lưu giữ các Frame. Nó giữ các biến cục bộ và các kết quả cục bộ, và thực hiện một phần nhiệm vụ trong phần triệu hồi và trả về phương thức. Mỗi Thread có một Stack riêng, được tạo tại cùng thời điểm với Thread.
                                <br>
                                Một Frame mới được tạo mỗi khi một phương thức được triệu hồi và bị hủy khi lời triệu hồi phương thức là kết thúc.</li>

                            <li><strong>Program Counter Register:</strong> Nó chứa địa chỉ của chỉ lệnh JVM hiện tại đang được thực thi.</li>

                            <li><strong>Native Method Stack:</strong> Bao gồm tất cả các phương thức tự nhiện được sử dụng trong ứng dụng.</li>

                            <li><strong>Execution Engine:</strong> Phần này bao gồm:
                                <br>
                                Một bộ xử lý ảo Virtual Processor
                                <br>
                                Một trình thông dịch Interpreter. Đọc Bytecode Stream sau đó thực thi các chỉ thị.</li>

                            <li><strong>Just-In-Time (JIT) Compiler:</strong> được sử dụng để cải thiện hiệu suất. JIT biên dịch các phần của Bytecode mà có cùng tính năng tại cùng một thời điểm, và vì thế giảm lượng thời gian cần thiết để biên dịch. Ở đây khái niệm Compiler là một bộ biên dịch tập chỉ thị của JVM thành tập chỉ thị của một CPU cụ thể.</li>
                        </ul>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Tìm hiểu JRE </h2>
                        <img src="https://viettuts.vn/images/java/jre.jpg" alt="JRE" class="aligncenter wp-image-179 size-full">
                        <p> JRE (là viết tắt của Java Runtime Environment) được sử dụng để cung cấp môi trường runtime. Nó là trình triển khai của JVM. JRE bao gồm tập hợp các thư viện và các file khác mà JVM sử dụng tại runtime. Trình triển khai của JVM cũng được công bố bởi các công ty khác ngoài Sun Micro Systems. </p>


                        <h2 id="goto-h2-3"> Tìm hiểu JDK </h2>
                        <img src="https://viettuts.vn/images/java/jdk.jpg" alt="JRE" class="aligncenter wp-image-179 size-full">
                        <p> JDK (là viết tắt của Java Development Kit) bao gồm JRE và các Development Tool. </p>


                        <hr>
                        <div class="pre-btn">
                            <a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Hello World trong java </a>
                        </div>
                        <div class="nxt-btn">
                            <a href="#"> Biến và kiểu dữ liệu trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;</a>
                        </div>
                        <div class="clearer"></div></div>
                    
                </div>

        </div>
    </div>
    </div>
</body>
</html>
