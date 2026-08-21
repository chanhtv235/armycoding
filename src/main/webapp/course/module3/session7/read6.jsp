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
                <a href="${pageContext.request.contextPath}/course/module3/session7/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 7. Layout and design responsive web </a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Tạo bố cục cơ bản</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Tạo được bố cục đơn giản của 1 trang web bằng CSS.</p>
                            <h2>Nội dung</h2>
                            <p>Xây dựng giao diện như sau</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout.png"
                                    width="913" height="603" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"></p>
                            <p><span>Trước hết chúng ta cần tạo mới một trang HTML với cấu trúc chuẩn (gồm đầy đủ các phần html, head, title, body). Tiếp theo chúng ta code đoạn mã HTML sau vào phần body của trang.</span>
                            </p>
                            <p>Các cặp thẻ trong đoạn mã trên giúp chúng ta tạo ra các phân vùng khác nhau trên trang
                                HTML của mình, mỗi phân vùng được đánh ID riêng biệt (các ID này sẽ &nbsp;dùng để định
                                nghĩa CSS), chi tiết như sau:</p>
                            <ol start="1">
                                <li><strong>main</strong>: Phân vùng chứa toàn bộ nội dung của trang.</li>
                                <li><strong>head:&nbsp;</strong>Phân vùng chứa nội dung đầu tiên của trang (theo VD trên
                                    đó là&nbsp; phần logo và banner)
                                </li>
                                <li><strong>head-link:&nbsp;</strong>Phân vùng chứa các liên kết đầu trang (ở VD trên:
                                    Home, Students, Course, v.v.)
                                </li>
                                <li><strong>left:&nbsp;</strong>Phân vùng chứa các nội dung bên trái (ở VD trên là các
                                    liên kết trái)
                                </li>
                                <li><strong>content:</strong>&nbsp;Phân vùng chứa các nội dung chính của trang (ở VD
                                    trên là các phân vùng thông tin như: Hot news, Photo Slide, News 1, v.v.)
                                </li>
                                <li><strong>right:&nbsp;</strong>Phân vùng chứa các thông tin bên phải trang (ở VD trên
                                    là lịch, biểu đồ, bản đồ)
                                </li>
                                <li><strong>footer:</strong>&nbsp;Phân vùng chứa các thông tin cuối trang (ở VD trên là
                                    thông tin về chủ sở hữu và các liên kết)
                                </li>
                            </ol>
                            <p>Chạy thử trang trên trình duyệt kết quả sẽ như sau:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout1.png"
                                    width="660" height="380" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"></p>
                            <p>Bây giờ là đến công đoạn code các bộ chọn CSS (selector) để phân vùng rõ ràng cho các DIV
                                đã tạo ở trên:</p>
                            <p>1. Tạo bộ chọn&nbsp;<strong>body</strong>&nbsp;để cố định phông chữ cho cả trang và bộ
                                chọn&nbsp;<strong>#main&nbsp;</strong>để cố định độ rộng vùng thông tin và trang sẽ
                                chiếm và căn chỉnh vùng này nằm giữa màn hình.</p>
                            <p><span>2. Tạo bộ chọn&nbsp;</span><strong>#head&nbsp;</strong><span>xác định chiều cao, màu nền, đường viền và khoảng cách so với các vùng khác (khoảng cách so với vùng bên dưới – margin-bottom).</span>
                            </p>
                            <p>3. Kiểm tra lại trang trên trình duyệt bạn sẽ có kết quả sau (phần div với id là head đã
                                được xác định):</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout-2.png"
                                    width="1072" height="600" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"></p>
                            <p>4. Tiếp tục với định nghĩa bộ chọn&nbsp;<strong>#head-link</strong>, để xác định vùng đặt
                                các liên kế đầu trang:</p>
                            <p>5. Quan sát lại trang trên trình duyệt, bạn sẽ thấy vùng liên kết đầu trang hiển thị ngay
                                dưới phần head.<br>6. Định nghĩa tiếp bộ chọn #left để xác định vùng cho nội dung bên
                                trái, với độ rộng là 200px, chiều cao tối thiểu là 400px và đặc biệt chú ý tới mô tả&nbsp;<strong>float:
                                    left;&nbsp;</strong>mô tả này làm cho vùng bên trái (DIV với ID là left) sẽ dạt sang
                                bên trái nhường chỗ cho các phân vùng khác: content và right).</p>
                            <p>7. Quan sát lại sự thay đổi về các vùng của trang trên trình duyệt:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout-3.png"
                                    width="1065" height="639" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom">8. Bổ sung tiếp các selector
                                cho vùng giữa và vùng phải lần lượt
                                là&nbsp;<strong>#content</strong>&nbsp;và&nbsp;<strong>#right</strong>:</p>
                            <p>9. Quan sát lại trang</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout-4.png"
                                    width="1025" height="568" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"><br>10. Cuối cùng, bạn định
                                nghĩa bộ chọn cho phân vùng cuối trang với id là&nbsp;<strong>#footer</strong></p>
                            <p>11. Quan sát lại trang trên trình duyệt bạn sẽ thấy các phân vùng cần thiết đã vào đúng
                                vị trí cần đặt:</p>
                            <p><img src="https://james.codegym.vn/pluginfile.php/50312/mod_page/content/5/layout-5.png"
                                    width="1025" height="624" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"></p>
                            <p>Như vậy qua các bước ở trên chúng ta đã thử nghiệm với các phương pháp cơ bản để dàn
                                trang sử dụng thẻ Div có sự kết hợp với CSS. Điều quan trọng nhất là bạn biết cách áp
                                dụng những kỹ thuật cơ bản này để tạo ra các trang web có layout tuỳ biến theo yêu cầu
                                của khách hàng. Bây giờ bạn tiếp tục bổ sung thông tin vào các phân vùng và định nghĩa
                                thêm các bộ chọn cần thiết để có thể có một trang HTML giống như mẫu thiết kế ở đầu bài
                                viết.</p>
                            <p style="text-align: right;"><em>&nbsp;</em></p>
                            <script src="https://jsfiddle.net/khacnhat/tkcw4w37/1/embed/html,css,result/dark/"
                                    type="text/javascript">// <![CDATA[
                            <span data-mce-type="bookmark" id="mce_0_end"
                                  data-mce-style="overflow:hidden;line-height:0px"
                                  style="overflow:hidden;line-height:0px"></span>
                            // ]]></script>
                            <iframe src="https://jsfiddle.net/tkcw4w37/1/embedded/html,css,result/dark/?username=khacnhat"
                                    id="JSFEMB_19839" width="100%" height="330.3125" frameborder="0"
                                    sandbox="allow-modals allow-forms allow-same-origin allow-scripts allow-popups allow-top-navigation-by-user-activation allow-downloads"
                                    allow="midi; geolocation; microphone; camera; display-capture; encrypted-media;"></iframe>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 2:29 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
