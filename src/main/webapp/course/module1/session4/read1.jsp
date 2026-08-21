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
                <a href="${pageContext.request.contextPath}/course/module1/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4.Tổng quan về Javascript</a>
                <header class="entry-header">
                    <h1 class="entry-title">Javascript là gì?</h1>
                </header>
                <div class="entry-content" style="height: auto !important;">
                    <div>
                        <hr>
                        <div class="pre-btn"><a href="#"></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read2">Nhúng js vào html?</a></div>
                        <div class="clearer"></div>
                        <hr>

                        <p> <strong>Javascript là ngôn ngữ lập trình kịch bản hướng đối tượng</strong> được phát triển bởi <strong>Netscape Communications</strong> cho các ứng dụng client/server. Javascript là một ngôn ngữ lập trình thông dịch. JavaScript hiển thị các trang web theo cách tương tác và năng động góp phần tạo nên trang web động. Điều này cho phép các trang bắt các sự kiện, hiện thị các hiệu ứng đặc biệt, tự động tạo nội dung HTML, xác thực dữ liệu, tạo cookie, lấy thông tin trình duyệt của người dùng, v.v. </p>
                        <p> JavaScript được biết đến lần đầu tiên là <strong>LiveScript</strong>, nhưng Netscape đã đổi tên thành <strong>JavaScript</strong>, có thể là do sự hứng thú được tạo ra bởi Java. JavaScript xuất hiện lần đầu tiên trong Netscape 2.0 vào năm 1995 với tên LiveScript. Ngôn ngữ javascript đã được nhúng trong Netscape, Internet Explorer và các trình duyệt web khác. </p>
                        <img src="https://viettuts.vn/images/js/javascript_logo.png" alt="JavaScript là gì?" title="JavaScript là gì?">
                        <p> Ngôn ngữ JavaScript được định nghĩa như sau: </p>
                        <ul>
                            <li> JavaScript là một ngôn ngữ lập trình hướng đối tượng, thông dịch. </li>
                            <li> Được thiết kế để tạo các ứng dụng mạng tập trung. </li>
                            <li> Bổ sung và tích hợp với Java. </li>
                            <li> Bổ sung và tích hợp với HTML. </li>
                            <li> Mã nguồn mở và đa nền tảng. </li>
                        </ul>
                        <hr>

                        <div class="goto-wrapper mom_list">
                            <p>Nội dung chính </p>
                            <ul id="go-to-detail">
                                <li class="list-goto-1">
                                    <a href="#goto-h2-1">Javascript phía máy khách</a>
                                </li>
                                <li class="list-goto-2">
                                    <a href="#goto-h2-2">Ưu điểm của JavaScript</a>
                                </li>
                                <li class="list-goto-3">
                                    <a href="#goto-h2-3">Nhược điểm của JavaScript</a>
                                </li>
                                <li class="list-goto-4">
                                    <a href="#goto-h2-4">Công cụ phát triển Javascript</a>
                                </li>
                                <li class="list-goto-5">
                                    <a href="#goto-h2-5">Sự khác nhau giữa Javascript và Java</a>
                                </li>
                                <li class="list-goto-6">
                                    <a href="#goto-h2-6">Tham khảo</a>
                                </li>
                            </ul>
                        </div>
                        <h2 id="goto-h2-1"> Javascript phía máy khách </h2>
                        <p> Javascript phía máy khách là dạng phổ biến nhất của ngôn ngữ. Tập lệnh phải được khai báo bên trong hoặc được tham chiếu bởi một tài liệu HTML để code javascript được thông dịch bởi trình duyệt.  </p>
                        <p> Javascript hiển thị các trang web theo cách tương tác và năng động góp phần tạo nên trang web động. Có thể bao gồm các chương trình tương tác với người dùng, kiểm soát trình duyệt và tự động tạo nội dung HTML.  </p>
                        <p> Javascript được sử dụng để xác thực dữ liệu. Ví dụ, bạn có thể sử dụng Javascript để kiểm tra xem người dùng đã nhập địa chỉ email hợp lệ trong form chưa. </p>
                        <p> Javascript được sử dụng để gửi form và chỉ khi tất cả các mục nhập hợp lệ, chúng sẽ được gửi đến Máy chủ Web.  </p>
                        <p> JavaScript có thể được sử dụng để bắt các sự kiện do người dùng khởi tạo như nhấp chuột vào button, điều hướng liên kết và các hành động khác mà người dùng bắt đầu một cách rõ ràng hoặc ngầm định. </p>
                        <hr>
                        <h2 id="goto-h2-2"> Ưu điểm của JavaScript </h2>
                        <p> Các ưu điểm của JavaScript là: </p>
                        <ul>
                            <li> <strong>Ít tương tác với máy chủ</strong>: Bạn có thể xác thực các hạng mục nhập trước khi gửi form thông tin tới máy chủ. Điều này giúp tiết kiệm lưu lượng và thời gian. </li>
                            <li> <strong>Phản hồi ngay lập tức tới người dùng</strong>: Họ không phải chờ đợi trang web được tại lại để xem họ có quên nhập nội dung nào đó hay không. </li>
                            <li> <strong>Tăng cường tương tác</strong>: Bạn có thể tạo các thông báo khi người dùng di chuột qua chúng hoặc kích hoạt chúng thông qua bàn phím. </li>
                            <li> <strong>Giao diện mạnh mẽ hơn</strong>: Bạn có thể sử dụng Javascript để tạo ra các mục như là thành phần kéo và thả và thanh trượt để cung cấp giao diện đa dạng cho trang web. </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-3"> Nhược điểm của JavaScript </h2>
                        <p> Chúng ta không thể coi JavaScript là ngôn ngữ lập trình chính thức. Nó thiếu các tính năng quan trọng sau: </p>
                        <ul>
                            <li> JavaScript phía máy khách không cho phép đọc hoặc ghi tệp vì lý do bảo mật thông tin. </li>
                            <li> Javascript không hỗ trợ tạo các ứng dụng mạng. </li>
                            <li> Javascript không có tính năng đa luồng hoặc đa xử lý nào. </li>
                        </ul>
                        <hr>
                        <h2 id="goto-h2-4"> Công cụ phát triển Javascript </h2>
                        <p> Một trong những điểm mạnh của Javascript là nó không đòi hỏi các công cụ phát triển đắt tiền. Bạn có thể bắt đầu bằng trình soạn thảo văn bản đơn giản như Notepad. </p>
                        <p> Sau đây là các công cụ chỉnh sửa Javascript được đưa ra bởi các nhà cung cấp khác nhau: </p>
                        <ul>
                            <li> <strong>Microsoft FrontPage</strong>: Microsoft đã phát triển một trình soạn thảo HTML phổ biến được gọi là FrontPage. FrontPage cũng cung cấp cho các nhà phát triển web một số công cụ Javascript để hỗ trợ việc tạo ra các trang web động. </li>
                            <li> <strong>Macromedia Dreamweaver MX</strong>: Macromedia Dreamweaver MX là một trình soạn thảo HTML và Javascript rất phổ biến trong lĩnh vực phát triển web chuyên nghiệp. Nó cung cấp một số thành phần Javascript dựng sẵn, tích hợp tốt với cơ sở dữ liệu và tuân theo các tiêu chuẩn mới như XHTML và XML. </li>
                            <li> <strong>Macromedia HomeSite 5</strong>: HomeSite 5 là một trình soạn thảo HTML và Javascript được yêu thích và có thể được sử dụng để quản lý các trang web cá nhân một cách hiệu quả. </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-5"> Sự khác nhau giữa Javascript và Java  </h2>
                        <p> JavaScript không tạo ra các applet hoặc các ứng dụng độc lập. JavaScript được sử dụng phổ biến bên trong các tài liệu HTML và có cấp các mức tương tác cho các trang web. </p>
                        <p> Sự khác biệt chính giữa <a href="#">Java</a> và JavaScript: </p>
                        <ul>
                            <li> Java là một <a href="#">ngôn ngữ lập trình OOP</a> trong khi Javascript là một ngôn ngữ kịch bản OOP. </li>
                            <li> Java tạo các ứng dụng chạy trong máy ảo JVM hoặc trình duyệt trong khi mã Javascript chỉ chạy trên trình duyệt. </li>
                            <li> Mã Java cần phải được biên dịch trong khi mã Javascript ở dạng văn bản (được thông dich bởi trình duyệt). </li>
                        </ul>
                        <hr>

                        <h2 id="goto-h2-6"> Tham khảo </h2>
                        <p> Javascript là gì? tại <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/About_JavaScript">https://developer.mozilla.org/en-US/docs/Web/JavaScript/About_JavaScript</a> </p>

                        <hr>
                        <div class="pre-btn"><a href="#"></a></div>
                        <div class="nxt-btn"><a href="${pageContext.request.contextPath}/course?module=1&session=4&fileName=read2">Nhúng js vào html?</a></div>
                        <div class="clearer"></div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
