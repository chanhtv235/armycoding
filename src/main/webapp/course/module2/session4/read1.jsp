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
                <a href="${pageContext.request.contextPath}/course/module2/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4. Class và Object</a>
                <header class="entry-header">
                    <h1 class="entry-title">Lập trình hướng đối tượng(OOPs) trong java
                    </h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div><hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Chương trình kinh điển trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp và đối tượng trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Khái niệm về lập trình hướng đối tượng trong java</a>
                                    <ul>
                                        <li><a href="#goto-h3-1">Đối tượng (Object)</a></li><li><a href="#goto-h3-2">Lớp (Class)</a></li><li><a href="#goto-h3-3">Kế thừa (Inheritance)</a></li><li><a href="#goto-h3-4">Đa hình (Polymorphism)</a></li><li><a href="#goto-h3-5">Trừu tượng (Abstraction)</a></li><li><a href="#goto-h3-6">Đóng gói (Encapsulation)</a></li></ul>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Thế mạnh của OOPs so với ngôn ngữ lập trình hướng thủ tục</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Khái niệm về lập trình hướng đối tượng trong java </h2>
                        <p><strong> Lập trình hướng đối tượng (OOP-Object-Oriented Programming)</strong> là một phương pháp hay mô hình giúp tăng năng suất, đơn giản hóa việc bảo trì, dễ dàng mở rộng trong thiết kế phần mềm bởi việc cung cấp một vài khái niệm như: </p>
                        <ul>
                            <li> Đối tượng (Object) </li>
                            <li> Lớp (Class) </li>
                            <li> Kế thừa (Inheritance) </li>
                            <li> Đa hình (Polymorphism) </li>
                            <li> Trừu tượng (Abstraction) </li>
                            <li> Đóng gói (Encapsulation) </li>
                        </ul>
                        <p> <strong>Lập trình hướng đối tượng có 4 tính chất:</strong> </p>
                        <img src="https://viettuts.vn/images/java/cac-tinh-chat-cua-oops.png" alt="các tính chất của oops">
                        <hr>

                        <h3 id="goto-h3-1"> Đối tượng (Object) </h3>
                        <p> Tất cả những thực thể có trạng thái và hành vi được biết đến như là một đối tượng. Ví dụ: bàn, ghế, bút chì, xe dạp, ô tô... </p>
                        <hr>
                        <h3 id="goto-h3-2"> Lớp (Class) </h3>
                        <p> Tập hợp các đối tượng được gọi là lớp. </p>
                        <hr>
                        <h3 id="goto-h3-3"> Kế thừa (Inheritance) </h3>
                        <p> Khi một đối tượng được truyền lại tất cả các thuộc tính và phương thức của đối tượng cha được gọi là kế thừa. Kế thừa giúp tái sử dụng lại mã nguồn. Nó được sử dụng cho đa hình lúc runtime. </p>
                        <p> Tìm hiểu thêm về <a href="#"> Tính kế thừa (Inheritance) trong java </a> </p>
                        <hr>
                        <h3 id="goto-h3-4"> Đa hình (Polymorphism) </h3>
                        <p> Khi một nhiệm vụ được thực hiện bởi nhiều cách khác nhau, tính chất này được gọi là đa hình. Ví dụ có nhiều các để thuyết phục các khách hàng khác nhau, để vẽ một cái gì đó như hình tròn, hình chữ nhật, ... </p>
                        <p> Trong java, để áp dụng tính đa hình chúng ta sử dụng phương thức orverloading hoặc overriding. </p>
                        <p> Tìm hiểu thêm về <a href="#"> Tính đa hình (Polymorphism) trong java </a> </p>
                        <hr>
                        <h3 id="goto-h3-5"> Trừu tượng (Abstraction) </h3>
                        <p> Trừu tượng là sự ẩn đi những chi tiết bên trong và hiển thị ra các chức năng, tính chất này gọi là trừu tượng. Ví dụ: khi gọi điện thoại chúng ta không biết xử lý nội bộ thế nào, khi đi xe máy cũng vậy, mà chúng ta chỉ biết đến các chức năng thông qua giao tiếp bên ngoài. </p>
                        <p> Trong java, chúng ta áp dụng tính chất trừu tượng bằng cách sử dụng abstract class và interface. </p>
                        <p> Tìm hiểu thêm về <a href="#">lớp abstract trong java</a> và <a href="/java/interface-trong-java">interface trong java</a>. </p>
                        <hr>
                        <h3 id="goto-h3-6"> Đóng gói (Encapsulation) </h3>
                        <p> Việc ràng buộc giữa code và data với nhau tạo thành một khối duy nhất được biết đến là đóng gói. Ví dụ: viên thuốc con nhộng được đóng gói với nhiều loại thuốc bên trong. </p>
                        <p> Một class trong java là một ví dụ về đóng gói. Java bean là một lớp được đóng gói hoàn toàn vì tất cả các dữ liệu thành viên là private. </p>
                        <p> Tìm hiểu thêm về <a href="#"> Tính đóng gói (Encapsulation) trong java.</a> </p>
                        <hr>

                        <div class="ad-content">
                            <!-- tuts-in-content-1 -->
                            <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4405294953475693" data-ad-slot="3394562752"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div><br>
                        <h2 id="goto-h2-2"> Thế mạnh của OOPs so với ngôn ngữ lập trình hướng thủ tục </h2>
                        <p> 1) Lập trình hướng đối tượng giúp việc phát triển và bảo trì dễ dàng hơn. Trong khi phương pháp lập trình hướng thủ tục là không dẽ dàng quản lý khi code lớn. </p>
                        <p> 2) Lập trình hướng đối tượng có tính năng ẩn dấu thông tin, trong khi hướng thủ tục có thể truy cập dữ liệu toàn cục ở bất kỳ nơi nào </p>
                        <p> 3) Lập trình hướng đối tượng cung cấp khả năng mô phỏng sự kiện thực tế hiệu quả hơn. </p>

                        <hr>
                        <div class="pre-btn"><a href="#"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> Chương trình kinh điển trong java </a></div>
                        <div class="nxt-btn"><a href="#"> Lớp và đối tượng trong java <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> </a></div>
                        <div class="clearer"></div>
                        <hr>
                        </div>
                </div>

        </div>
    </div>
    </div>
</body>
</html>
