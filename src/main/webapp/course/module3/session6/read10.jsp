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
                <a href="${pageContext.request.contextPath}/course/module3/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 6. Cascading Style Sheets</a>
                <div role="main"><span id="maincontent"></span><h2>[Bài đọc] Điều chỉnh màu nền và ảnh nền</h2><div class="box py-3 generalbox center clearfix"><div class="no-overflow"><p></p>
                    <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                    <p>Thay đổi được màu nền của HTML và sử dụng được ảnh nền.</p>
                    <h2>Nội dung</h2>
                    <p><span lang="VI">Các thuộc tính về nền (background) trong CSS được sử dụng để xác định các hiệu ứng về nền của một phần tử. Bao gồm:</span></p>
                    <ul type="disc">
                        <li><span lang="VI">background-color</span></li>
                        <li><span lang="VI">background-image</span></li>
                        <li><span lang="VI">background-repeat</span></li>
                        <li><span lang="VI">background-attachment</span></li>
                        <li><span lang="VI">background-position</span></li>
                    </ul>
                    <h4><span lang="VI">Màu nền</span></h4>
                    <p><span lang="VI">Thuộc tính&nbsp;</span><code><span lang="VI">background-color</span></code><span lang="VI">&nbsp;chỉ</span><span lang="VI">&nbsp;định màu nền của một phần tử.</span></p>
                    <p><span lang="VI">Màu nền của toàn bộ trang web được thiết lập bằng cách sử dụng thẻ &lt;body&gt;:</span></p>
                    <p></p>
                    <p></p>
                    <p><iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/drhtucLy/embedded/css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></p>
                    <p><span lang="VI">&nbsp;</span></p>
                    <p><span lang="VI">Trong CSS, một màu sắc thường được chỉ định bởi:</span></p>
                    <ul type="disc">
                        <li><span lang="VI">một giá trị HEX - ví dụ: "#ff0000"</span></li>
                        <li><span lang="VI">một giá trị RGB - ví dụ: "rgb(255,0,0)"</span></li>
                        <li><span lang="VI">một tên màu sắc hợp lệ (bằng tiếng Anh) - ví dụ: "red"</span></li>
                    </ul>
                    <p><span lang="VI">Xem trang&nbsp;</span><span lang="VI"><a href="http://agilearn.vn/mod/page/view.php?id=45" target="_blank">Sử dụng màu sắc trong trang web</a></span><span lang="VI">&nbsp;để nắm rõ hơn về các cách sử dụng màu</span><span lang="VI">.</span></p>
                    <p><span lang="VI">Trong ví dụ dưới đây, &lt;h1&gt;, &lt;p&gt;, và các phần tử &lt;div&gt; có màu nền khác nhau:<br><br></span><br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/aL7x2b9d/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br></p>
                    <h4><span lang="VI">Hình nền</span></h4>
                    <p><span lang="VI">Thuộc tính&nbsp;</span><code><span lang="VI">background-image</span></code><span lang="VI">&nbsp;chỉ định một hình ảnh dùng để làm nền cho một phần tử.</span></p>
                    <p><span lang="VI">Mặc định, hình ảnh nền sẽ lặp đi lặp lại để nó trải ra toàn bộ phần tử.</span></p>
                    <p><span lang="VI">Hình nền cho một trang có thể được thiết lập như sau:</span></p>
                    <p><iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/qxf3n0q6/embedded/css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br><br></p>
                    <p><span lang="VI">Dưới đây là một ví dụ về sự kết hợp tồi của văn bản và hình nền. Văn bản khó có thể đọc được:</span></p>
                    <p><br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/c8dczbab/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br></p>
                    <h4><span lang="VI">Hình nền - lặp lại theo chiều ngang hoặc theo chiều dọc</span></h4>
                    <p><span lang="VI">Mặc định, thuộc tính&nbsp;</span><span lang="VI">background-mage</span><span lang="VI">&nbsp;lặp hình ảnh theo chiều ngang và theo chiều dọc. Nhưng trong một&nbsp;</span><span style="font-size: 1rem;">số trường hợp, chúng ta cần thiết lập để hình ảnh chỉ lặp lại theo chiều ngang hoặc chiều dọc để có được nền mong muốn. Chẳng hạn, trong trường hợp sau, nếu chúng ta để mặc định thì hình ảnh sẽ được lặp theo cả hai chiều, và kết quả là nền không đẹp như mong muốn:</span></p>
                    <p><br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/59xtwg7w/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br>Nếu chúng ta điều chỉnh để hình ảnh chỉ lặp theo chiều ngang thì hiệu ứng đạt được sẽ đẹp hơn.<br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/ozp6or7c/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br>Tương tự, chúng ta có thể sử dụng thuộc tính <b>background-repeat</b> với giá trị là <b>repeat-y</b> nếu muốn lặp ảnh nền theo chiều dọc.<br><br></p>
                    <h4><span lang="VI">Hình nền - Quy định vị trí ảnh và không lặp lại</span></h4>
                    <p></p>
                    <p><span lang="VI">Để hiển thị ảnh nền một lần duy nhất thì chúng ta cũng sử dụng thuộc tính&nbsp;</span><code><span lang="VI">background-repeat</span></code><span lang="VI">&nbsp;với giá trị là&nbsp;<code><span lang="VI">no-repeat</span></code></span><span style="font-size: 1rem;">.</span></p>
                    <p><br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/66wdjrr6/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br></p>
                    <p><span lang="VI">Trong ví dụ trên, hình nền được hiển thị trong cùng một vị trí với các văn bản. Nếu chúng ta muốn thay đổi vị trí của ảnh thì có thể sử dụng&nbsp;</span><span lang="VI" style="font-size: 1rem;">thuộc tính&nbsp;</span><code><span lang="VI">background-position</span></code><span lang="VI" style="font-size: 1rem;">:</span></p>
                    <p><iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/z7djeqd8/1/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><span lang="VI"><br></span></p>
                    <h4><span lang="VI">Hình nền - Cố định vị trí</span></h4>
                    <p><br><span lang="VI" style="font-size: 1rem;">Để quy định hình nền cố định (sẽ không di chuyển với phần còn lại của trang), chúng ta sử dụng thuộc tính&nbsp;</span><code><span lang="VI">background-attachment</span></code><span lang="VI" style="font-size: 1rem;">:<br></span><br><br> <iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/cr30rfpe/1/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe><br><br></p>
                    <h4><span lang="VI">Nền - Thuộc tính rút gọn</span></h4>
                    <p>Chúng ta có thể rút ngắn các đoạn mã bằng cách sử dụng một thuộc tính duy nhất để quy định tất cả các giá trị của nền.&nbsp;<span lang="VI" style="font-size: 1rem;">Thuộc tính rút gọn đó là&nbsp;</span><code><span lang="VI">background</span></code><span lang="VI" style="font-size: 1rem;">:</span></p>
                    <p><iframe width="100%" height="300" src="https://jsfiddle.net/khacnhat/ugd0xt51/embedded/html,css,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></p>
                    <p></p>
                    <p>Khi sử dụng thuộc tính rút gọn, thứ tự của các giá trị tương ứng với các thuộc tính là:</p>
                    <ul type="disc">
                        <li><code><span lang="VI">background-color</span></code></li>
                        <li><code><span lang="VI">background-image</span></code></li>
                        <li><code><span lang="VI">background-repeat</span></code></li>
                        <li><code><span lang="VI">background-attachment</span></code></li>
                        <li><code><span lang="VI">background-position</span></code></li>
                    </ul>
                    <p>Chúng ta có thể bỏ qua giá trị của một số thuộc tính, nhưng cần phải tuân thủ thứ tự trên.</p>
                    <p></p></div></div><div class="modified">Last modified: Sunday, 5 June 2022, 11:55 PM</div></div>
               
        </div>
    </div>
    </div>
</body>
</html>
