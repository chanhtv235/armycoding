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
                <a href="${pageContext.request.contextPath}/course/module3/session8/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Bootstrap </a>
                <div role="main"><span id="maincontent"></span>
                    <h2>[Bài đọc] Glyphicons trong Bootstrap</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><p><span
                                style="font-family: arial, helvetica, sans-serif; font-size: medium;"></span></p>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"></span></p>
                            <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"></span></p>
                            <p>Tìm hiểu về <span>Glyphicons trong&nbsp;<span>Bootstrap</span></span>.</p>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"></span></p>
                            <h2>Nội dung</h2>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Chương này sẽ thảo luận về Glyphicons, cách sử dụng và một số ví dụ.&nbsp;Bootstrap có 200 glyphs trong định dạng phông chữ.&nbsp;Bây giờ chúng ta hãy hiểu Glyphicons là gì.</span>
                            </p>
                            <h2><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"><strong>Glyphicons là gì?</strong></span>
                            </h2>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Glyphicons là các biểu tượng phông chữ mà bạn có thể sử dụng trong các dự án web của bạn.&nbsp;Glyphicons Halflings&nbsp;không phải là miễn phí và yêu cầu cấp phép, tuy nhiên người tạo của họ đã làm cho chúng có sẵn cho các dự án Bootstrap miễn phí.</span>
                            </p>
                            <h4><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"><strong>Có thể tìm thấy Glyphicons ở đâu ?</strong></span>
                            </h4>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Bây giờ chúng ta đã tải về phiên bản Bootstrap 4.x và hiểu cấu trúc thư mục của nó trong chương&nbsp;Environment Setup, glyphicons có thể được tìm thấy trong&nbsp;thư mục&nbsp;fonts.&nbsp;Điều này chứa các tập tin sau đây:</span>
                            </p>
                            <ul type="disc">
                                <li><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Glyphicons-halflings-regular.eot</span>
                                </li>
                            </ul>
                            <ul type="disc">
                                <li><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Glyphicons-halflings-regular.svg</span>
                                </li>
                            </ul>
                            <ul type="disc">
                                <li><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Glyphicons-halflings-regular.ttf</span>
                                </li>
                            </ul>
                            <ul type="disc">
                                <li><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Glyphicons-halflings-regular.woff</span>
                                </li>
                            </ul>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Các quy tắc CSS kết hợp có trong các&nbsp;tệp bootstrap.css&nbsp;và&nbsp;bootstrap-min.css&nbsp;trong thư mục css của thư mục&nbsp;dist.&nbsp;Bạn có thể xem glyphicons có sẵn tại liên kết này&nbsp;<a
                                    href="https://www.tutorialspoint.com/bootstrap/bootstrap_glyph_icons.htm">GLYPHICONS</a>&nbsp;.</span>
                            </p>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"><strong>Cách sử dụng</strong></span>
                            </p>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Toàn bộ các biểu tượng yêu cầu một class cơ sở và class cụ thể cho các biểu tượng đó. Để sử dụng, hãy thêm đoạn code sau đây vào nơi bạn sử dụng. Để hiển thị được tốt, bạn hãy nhớ luôn thêm một khoảng trắng vào giữa biểu tượng và text..</span>
                            </p>
                            <p><span style="font-family: 'times new roman', times, serif; font-size: medium;"><iframe
                                    width="100%" height="100"
                                    src="https://jsfiddle.net/codegym/354nsr05/7/embedded/html/"
                                    allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                            <p><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">Ví dụ sau chứng minh điều này:</span>
                            </p>
                            <p><span style="font-family: 'times new roman', times, serif; font-size: medium;"><iframe
                                    width="100%" height="300"
                                    src="https://jsfiddle.net/codegym/354nsr05/8/embedded/html,result/"
                                    allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 3:07 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
