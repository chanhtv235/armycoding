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
                <div role="main" id="yui_3_17_2_1_1714166470470_22"><span id="maincontent"></span>
                    <h2>[Bài đọc] Thanh điều hướng (navbar)</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714166470470_21">
                        <div class="no-overflow" id="yui_3_17_2_1_1714166470470_20"><p></p>
                            <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Triển khai được thanh điều hướng (navbar) với <span>Bootstrap</span>.</p>
                            <h2>Nội dung</h2>
                            <p><span>Thanh điều hướng là thành phần responsive thường được sử dụng trong phần header trong website của bạn. Thông thường, ban đầu chúng được thu gọn lại (và mở ra khi kích hoạt) trên khung nhìn của điện thoại di động và sẽ được mở rộng ra khi chiều rộng của khung nhìn tăng lên.</span>
                            </p>
                            <h4><b>Thanh điều hướng mặc định</b></h4>
                            <p>Để tạo một Navbar mặc định ta làm các bước sau:</p>
                            <p></p>
                            <ul>
                                <li><span style="font-size: 1rem;">Thêm các class </span><span style="font-size: 1rem;"><b>.navbar,</b> <b>.navbar-default</b> </span><span
                                        style="font-size: 1rem;">cho thẻ <b>&lt;nav&gt;</b></span></li>
                                <li><span style="font-size: 1rem;">Thêm </span><span style="font-size: 1rem;"><b>role = "navigation"</b> </span><span
                                        style="font-size: 1rem;">vào phần tử ở trên, trợ giúp tiếp cận.</span></li>
                                <li><span style="font-size: 1rem;">Thêm class </span><span style="font-size: 1rem;"><b>.navbar-header</b> </span><span
                                        style="font-size: 1rem;">&nbsp;vào phần từ &lt;div&gt;. Gồm phần từ &lt;a&gt; với class </span><span
                                        style="font-size: 1rem;"><b>&nbsp;.navbar-brand</b>.</span><span
                                        style="font-size: 1rem;"> Điều này sẽ cho văn bản một kích thước lớn hơn một chút</span>
                                </li>
                                <li><span style="font-size: 1rem;">Để thêm liên kết vào thanh điều hướng, chỉ cần thêm một danh sách không có thứ tự với các class của </span><span
                                        style="font-size: 1rem;"><b>.nav</b>, <b>.navbar-nav.</b></span></li>
                            </ul>
                            <p></p>
                            <p>Xem ví dụ dưới đây:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/8/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><strong>Responsive navbar</strong></h3>
                            <p>Để thêm tính năng responsive vào thanh điều hướng, nội dung mà bạn muốn bị thu gọn cần
                                phải được bao bọc trong một thẻ &lt;div&gt; với các class&nbsp;<b>.collapse,
                                    .navbar-collapse</b>.&nbsp;Bản chất thu hẹp bị trật bánh bởi nút có class&nbsp;<b>.navbar-toggle&nbsp;</b>và
                                sau đó có hai phần tử dữ liệu.&nbsp;Đầu tiên,&nbsp;data-toggle được sử dụng để báo cho
                                JavaScript biết phải làm gì với nút này, và thứ hai, data-target, cho biết phần tử nào
                                cần bật / tắt.&nbsp;Sau đó với &nbsp;class&nbsp;<b>.icon-bar</b>&nbsp;tạo ra những gì
                                chúng ta muốn gọi nút hamburger.&nbsp;Thao tác này sẽ bật / tắt các phần tử nằm trong&nbsp;<b>.nav-collapse</b>&nbsp;&lt;div&gt;.&nbsp;Để
                                tính năng này hoạt động, bạn cần thêm&nbsp;Bootstrap Collapse Plugin.</p>
                            <p>Hãy theo dõi ví dụ dưới đây:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/9/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Forms </b></h3>
                            <p>Thay vì sử dụng các class <span>forms</span> mặc định từ Chương Bootstrap Forms ta sẽ
                                dụng forms trong navbar bằng cách sử dụng class <b>.navbar-form</b>. Đặt nội dung của
                                form vào bên trong&nbsp;<b>.navbar-form&nbsp;</b>để form được căn theo chiều dọc và có
                                thể thu gọn khi kích thước khung nhìn đủ hẹp. Hãy sử dụng các tùy chọn căn chỉnh để xác
                                định vị trí mà form nằm bên trong nội dung của thanh điều hướng.</p>
                            <p>Xem ví dụ dưới đây:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/10/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Các nút trong Navbar</b></h3>
                            <p>Bạn có thể thêm các nút bằng cách sử dụng các class<b>&nbsp;.navbar-btn&nbsp;</b>cho các
                                phần tử &lt;button&gt; không nằm trong &lt;form&gt; để đặt chúng ở trung tâm dọc trong
                                thanh điều hướng,&nbsp;<b>.navbar-btn</b>&nbsp;có thể được sử dụng trên các phần tử &lt;a&gt;
                                và &lt;input&gt;.</p>
                            <p>Tương tự như các&nbsp;class cho nút,<b>&nbsp;.navbar-btn</b>&nbsp;có thể được sử dụng
                                trên các phần tử&nbsp;&lt;a&gt;&nbsp;và&nbsp;&lt;input&gt;. Tuy nhiên, cả&nbsp;<b>.navbar-btn</b>&nbsp;và
                                các class cho nút không nên sử dụng trên phần tử&nbsp;&lt;a&gt;&nbsp;nằm bên trong&nbsp;<b>.navbar-nav</b>.
                            </p>
                            <p>Ví dụ:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/11/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Text</b></h3>
                            <p>Hãy bọc chuỗi các text bằng một phần tử có class&nbsp;<b>.navbar-text</b>, phần tử đó
                                thường là thẻ&nbsp;&lt;p&gt;&nbsp;để hiển thị được tốt.</p>
                            <p>Ví dụ:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/12/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Các liên kết không điều hướng</b></h3>
                            <p>Nếu bạn muốn thêm một liên kết vào bên trong thanh điều hướng nhưng không dùng để điều
                                hướng, hãy sử dụng class&nbsp;<b>.navbar-link</b>&nbsp;để hiển thị màu mặc định của một
                                liên kết phân biệt với các thành phần điều hướng.</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/13/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Sắp xếp các thành phần</b></h3>
                            <p>Bạn có thể căn chỉnh các liên kết, form, nút, hoặc text trong thanh điều hướng bằng cách
                                sử dụng các class&nbsp;<b>.navbar-left</b>&nbsp;hoặc&nbsp;<b>.navbar-right</b>. Cả hai
                                class sẽ thêm các thuộc tính CSS float theo các hướng cụ thể.</p>
                            <p>Ví dụ, để căn chỉnh các liên kết điều hướng, hãy đặt chúng vào bên trong một&nbsp;&lt;ul&gt;&nbsp;riêng
                                biệt và áp dụng các class căn chỉnh lên thẻ&nbsp;&lt;ul&gt;&nbsp;đó.</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/14/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Cố định lên trên</b></h3>
                            <p>Nếu bạn muốn thanh định vị cố định ở trên cùng, hãy thêm
                                lớp&nbsp;<b>.navbar-fixed-top</b>&nbsp;vào&nbsp;class <b>.navbar&nbsp;</b></p>
                            <p><b><br></b><b>Yêu cầu padding cho body</b></p>
                            <p>Để ngăn không cho thanh điều hướng đè lên các nội dung khác trong phần thân trang, hãy
                                thêm ít nhất 50 pixel vào&nbsp; &lt;body&gt; hoặc thử các giá trị của riêng bạn</p>
                            <p>&nbsp;Ví dụ:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/17/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h4><b>Cố định xuống dưới</b></h4>
                            <p>Nếu bạn muốn thanh navbar cố định ở cuối trang, hãy thêm
                                lớp&nbsp;<b>.navbar-fixed-bottom</b>&nbsp;vào class <b>.navbar</b>.</p>
                            <p>Ví dụ:</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/18/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Không cố định</b></h3>
                            <p>Nếu bạn muốn tạo ra một thanh điều hướng không cố định khi cuộn trang, hãy thêm&nbsp;<b>.navbar-static-top</b>&nbsp;và
                                sử dụng&nbsp;<b>.container</b> hoặc&nbsp;<b>.container-fluid</b>&nbsp;để căn giữa và tạo
                                khoảng đệm cho nội dung của thanh điều hướng.</p>
                            <p>Không giống như các class&nbsp;<b>.navbar-fixed-*</b>, bạn sẽ không cần phải thay đổi
                                padding của&nbsp;body.</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/19/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h3><b>Thanh điều hướng đảo ngược</b></h3>
                            <p>Bạn có thể thay đổi hình thức của thanh điều hướng bằng cách sử dụng class<b>&nbsp;.navbar-inverse.</b>
                            </p>
                            <p>Để ngăn không cho thanh điều hướng đè lên các nội dung khác trong phần thân trang, hãy
                                thêm ít nhất 50 pixel vào &lt;body&gt; hoặc thử các giá trị của riêng bạn.</p>
                            <p><br>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/codegym/h1efjszy/20/embedded/html,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Monday, 6 June 2022, 10:02 PM</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
