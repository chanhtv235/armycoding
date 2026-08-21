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
                    <h2>[Bài đọc] Phông chữ với CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Chỉnh sửa được phông chữ của HTML bằng CSS.</p>
                            <h2 id="yui_3_17_2_1_1654249064472_20">Nội dung</h2>
                            <p>Các thuộc tính CSS về phông chữ (font) xác định phông chữ nào, nét chữ, kích cỡ, và kiểu
                                chữ của văn bản. Sự khác biệt giữa các phông Serif và Sans serif.</p>
                            <div style="text-aign: center;"><img
                                    src="https://james.codegym.vn/pluginfile.php/50291/mod_page/content/4/fonts-css.png"
                                    alt="" role="presentation" class="img-responsive atto_image_button_text-bottom"
                                    width="471" height="164"><br>
                                <div style="text-align: left;"></div>
                            </div>
                            <h2>Các phông chữ trong CSS</h2>
                            <p>Trong CSS, có hai loại phông chữ (font family):</p>
                            <ul>
                                <li>generic family - một nhóm các phông chữ trông tương tự nhau (như "Serif" hoặc
                                    "Monospace")
                                </li>
                                <li>font family - một phông chữ cụ thể (như "Times New Roman" hoặc "Arial")</li>
                            </ul>
                            <h2>Font Family</h2>
                            <p>Font family (Phông chữ) của văn bản được thiết lập bởi thuộc tính<b> font-family</b> .
                                <br>Thuộc tính font-family cần một số tên phông chữ như là một hệ thống "dự phòng". Nếu
                                trình duyệt không hỗ trợ phông chữ đầu tiên, nó sẽ thử phông chữ tiếp theo, và cứ như
                                vậy. Bắt đầu với phông chữ bạn muốn, và kết thúc với một "generic family", để trình
                                duyệt tự chọn một phông chữ tương tự "generic family", nếu phông chữ khác không có sẵn.
                                <br><span style="text-decoration: underline;">Lưu ý</span>: Nếu tên của một phông chữ
                                nhiều hơn một từ, nó phải đặt trong dấu nháy kép, ví dụ: "Times New Roman". <br>Nếu chỉ
                                định nhiều hơn một phông chữ, thì dùng dấu phẩy (,) để ngăn cách giữa chúng:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/6ofy2k78/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Việc kết hợp các phông chữ thường được sử dụng, mời bạn tham khảo tại trang <a
                                    href="http://www.w3schools.com/cssref/css_websafe_fonts.asp" target="_blank">Web
                                Safe Font Combinations</a>.<br><br></p>
                            <h2>Loại phông chữ</h2>
                            <p>Thuộc tính font-style chủ yếu được sử dụng để chỉ định in nghiêng văn bản. Thuộc tính này
                                có 3 giá trị:</p>
                            <ul>
                                <li>normal - Văn bản hiển thị bình thường</li>
                                <li>italic - Văn bản được hiển thị in nghiêng</li>
                                <li>oblique - Văn bản bị "nghiêng (xiên)" (xiên tương tự như in nghiêng, nhưng ít được
                                    hỗ trợ hơn)
                                </li>
                            </ul>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/w6xf5hz1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Kích cỡ phông chữ</h2>
                            <p>Thuộc tính <b>font-size</b> dùng để thiết lập kích cỡ của văn bản.<br>Khả năng quản lý
                                kích cỡ văn bản là điều quan trọng trong thiết kế web. Tuy nhiên, bạn không nên sử dụng
                                điều chỉnh kích cỡ phông chữ để làm cho đoạn văn trông giống như tiêu đề, hoặc tiêu đề
                                trông giống như đoạn văn.<br>Luôn luôn sử dụng các thẻ HTML thích hợp, như &lt;h1&gt; -
                                &lt;h6&gt; cho tiêu đề và &lt;p&gt; cho đoạn văn.<br>Giá trị của thuộc tính font-sizecó
                                thể là tuyệt đối hay tương đối.<br><br>Kích cỡ tuyệt đối:</p>
                            <ul>
                                <li>Thiết lập văn bản có một kích cỡ cụ thể</li>
                                <li>Không cho phép người dùng thay đổi kích cỡ văn bản trong tất cả các trình duyệt (tệ
                                    cho khả năng tiếlp cận)
                                </li>
                                <li>Kích cỡ tuyệt đối là hữu ích khi kích biết rõ thước vật lý của đầu ra</li>
                            </ul>
                            <h6>Kích cỡ tương đối:</h6>
                            <ul>
                                <li>Đặt kích cỡ tương đối so với các thành phần xung quanh</li>
                                <li>Cho phép người dùng thay đổi kích cỡ văn bản trong các trình duyệt</li>
                            </ul>
                            <h2>Kích cỡ phông chữ theo Pixel</h2>
                            <p>Thiết lập kích cỡ văn bản với pixel (điểm ảnh) cho bạn kiểm soát hoàn toàn kích cỡ văn
                                bản.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/xjLauxx1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                <strong>Mẹo</strong>: Nếu bạn sử dụng pixel, bạn vẫn có thể sử dụng công cụ phóng to\thu
                                nhỏ (zoom) để thay đổi kích cỡ toàn trang.
                            </p>
                            <h2>Kích thước phông chữ theo Em</h2>
                            <p>Để cho phép người dùng thay đổi kích cỡ văn bản (trong trình đơn của trình duyệt), nhiều
                                nhà phát triển sử dụng đơn vị em thay cho pixel (px). Đơn vị kích cỡ em được khuyến cáo
                                bởi W3C. 1em tương đương với kích cỡ của phông chữ hiện thời. Kích cỡ mặc định của văn
                                bản trong trình duyệt là 16px. Vì vậy, mặc định 1em = 16px. Kích cỡ có thể được tính từ
                                pixel sang em bằng cách sử dụng công thức: pixel / 16 = em</p>
                            <h3></h3>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/ht18q6ej/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Trong ví dụ trên, kích cỡ văn bản theo đơn vị "em" là giống như ví dụ trước đó theo
                                pixel. Tuy nhiên, với kích cỡ "em", nó có thể điều chỉnh kích cỡ văn bản trong tất cả
                                các trình duyệt.
                            </p>
                            <h2>Sử dụng kết hợp giữa phần trăm (%) và em</h2>
                            <p>Giải pháp mà làm việc trên tất cả các trình duyệt, là đặt font-size mặc định theo phần
                                trăm cho phần tử &lt;body&gt;:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/6xkjrLLt/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Bây giờ mã của chúng ta hoạt động tốt! Nó cho thấy kích cỡ văn bản giống nhau trong tất
                                cả các trình duyệt, và cho phép tất cả các trình duyệt zoom hoặc thay đổi kích cỡ văn
                                bản!
                            </p>
                            <h2>Font weight</h2>
                            <p>Thuộc tính font-weight xác định độ đậm (độ nặng) của phông chữ.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/7tjbugeo/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Font variant</h2>
                            <p>Thuộc tính font-variant xác định có hay không một văn bản sẽ được hiển thị với một phông
                                chữ small-caps (chữ hoa có kích cỡ bằng chữ thường). Trong phông chữ small-caps, tất cả
                                các chữ thường được chuyển đổi thành chữ hoa. Tuy nhiên, các chữ được chuyển đối thành
                                hoa hiển thị với kích cỡ nhỏ hơn so với các chữ hoa ban đầu trong văn bản.</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/h4twqxzo/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Friday, 3 June 2022, 4:49 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
