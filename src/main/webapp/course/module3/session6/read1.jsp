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
                <div role="main" id="yui_3_17_2_1_1714163406385_21"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714163406385_20">[Bài đọc] CSS là gì?</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Tìm hiểu về CSS (<span>Cascading Style Sheets</span>).</p>
                            <h2>Nội dung</h2>
                            <h4>CSS là gì?</h4>
                            <p></p>
                            <ul>
                                <li>CSS là viết tắt của cụm từ <b>Cascading Style Sheets</b></li>
                                <li>CSS được sử dụng để mô tả định dạng, kiểu dáng (gọi chung là phong cách - style) của
                                    trang web.
                                </li>
                                <li>CSS mô tả cách các phần tử HTML sẽ hiển thị trên màn hình, trang web, hoặc các
                                    phương tiện khác.
                                </li>
                                <li>CSS giúp chúng ta tiết kiệm được rất nhiều công sức. Nó giúp chúng ta chỉnh sửa giao
                                    diện của nhiều trang web cùng một lúc.
                                </li>
                                <li>Các mô tả css có thể được lưu trong tệp tin CSS.</li>
                            </ul>
                            <p></p>
                            <h4>Cùng một trang HTML, có thể hiển thị &nbsp;nhiều kiểu khác nhau</h4>
                            <p>Trong các ví dụ sau đây, chúng ta sẽ dùng chung một mã HTML nhưng với các CSS khác nhau,
                                do đó chúng sẽ có giao diện khác nhau.</p>
                            <h5>Không có CSS</h5>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/oznezkky/1/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <h5>Sử dụng CSS kiểu 1</h5>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/xdwcstaj/1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <h5>Sử dụng CSS kiểu 2</h5>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/r679vzam/1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <h5>Sử dụng CSS kiểu 3</h5>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/brvoLrc7/1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <p>Như vậy, chúng ta có thể thấy rằng CSS giúp cho việc thay đổi diện mạo của một trang web
                                một cách rất dễ dàng và ấn tượng.</p>
                            <h4>CSS là người bạn đồng hành không thể thiếu của HTML</h4>
                            <p>HTML được tạo ra để mô tả nội dung của một trang web, chẳng hạn như:</p>
                            <h4>&lt;h1&gt;Đây là một tiêu đề&lt;/h1&gt;</h4>
                            <p>&lt;p&gt;Đây là một đoạn văn bản&lt;/p&gt;</p>
                            <p>Bản thân các thẻ HTML không có các thuộc tính để cho phép chúng ta thay đổi diện mạo của
                                nó, chẳng hạn là chuyển sang chữ <b>in đậm</b>, <i>hay in nghiêng</i>, hay <span
                                        style="color: red;">màu đỏ</span>.</p>
                            <p>Trước đây, HTML có thêm các thẻ để làm điều này, &nbsp;chẳng hạn như các thẻ &lt;u&gt;,
                                &lt;i&gt;, &lt;b&gt;, &lt;font&gt;... nhưng việc sử dụng các thẻ này khiến cho mã nguồn
                                của trang web trở nên vô cùng lớn và lộn xộn. Ngoài ra, việc&nbsp;kiểm soát giao diện
                                của nhiều trang cùng một lúc là một việc rất khó khăn.</p>
                            <p>Do đó, CSS ra đời để giúp lập trình viên chúng ta có thể kiểm soát được diện mạo của các
                                thẻ HTML một cách dễ dàng. Ngày nay, có thể nói hầu hết tất cả các trang web trên thế
                                giới đều sử dụng CSS để tuỳ chỉnh giao diện của mình.</p>
                            <p>Chỉ cần tạo ra một vài file CSS là chúng ta đã định dạng nên một kiểu dáng, phong cách
                                riêng cho trang web của mình.</p>
                            <div id="gtx-trans" style="position: absolute; left: 484px; top: 220.297px;">
                                <div class="gtx-trans-icon"></div>
                            </div>
                        </div>
                    </div>
                    <div class="modified">Last modified: Sunday, 12 March 2023, 12:19 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
