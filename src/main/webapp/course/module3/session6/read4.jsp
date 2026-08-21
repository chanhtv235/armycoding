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
                    <h2>[Bài đọc] Các bộ chọn (selector) khác nhau trong CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2>Mục tiêu</h2>
                            <p>Sử dụng được các bộ chọn&nbsp;CSS (selector) để thao tác với HTML.&nbsp;</p>
                            <h2>Nội dung</h2>
                            <p><span style="font-size: 1rem;">Các bộ chọn CSS (selector) cho phép chúng ta chọn và thao tác với các phần tử HTML mà mình mong muốn.</span>
                            </p>
                            <p>Bộ chọn được sử dụng để "tìm" (hoặc chọn) phần tử HTML dựa trên id, class, loại thẻ, các
                                thuộc tính, và nhiều thứ khác của phần tử HTML.</p>
                            <p></p>
                            <h4><span>Bộ chọn phần tử</span></h4>
                            <p>Bộ chọn Phần tử (element selector) dựa vào <b>tên</b> của các phần tử (thẻ) HTML.</p>
                            <p>Chẳng hạn, chúng ta có thể chọn tất cả các phần tử &lt;p&gt; trên một trang như thế này
                                (trong trường hợp này, tất cả các văn bản nằm trong thẻ &lt;p&gt; sẽ được căn giữa và có
                                màu đỏ):</p>
                            <p></p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/q4tq9zrj/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <h4></h4>
                            <h4>Bộ chọn id</h4>
                            <p>Bộ chọn id sử dụng thuộc tính <b>id</b> của một phần tử HTML để chỉ định cụ thể một phần
                                tử HTML nào đó.</p>
                            <p>Một <b>id</b> nên là duy nhất trong một trang, do đó bộ chọn <b>id</b><b> </b>được sử
                                dụng khi muốn áp dụng kiểu cho một phần tử duy nhất nào đó trên trang.</p>
                            <p>Để chọn một phần tử với một id cụ thể, chỉ cần viết kí hiệu # trước id (giá trị của thuộc
                                tính id) của phần tử đó.</p>
                            <p>Quy tắc kiểu dưới đây sẽ được áp dụng cho các phần tử HTML với<b> id =
                                "<span>para1</span>"</b>:</p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/t4c77wrq/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p></p>
                            <p>Lưu ý: Không được đặt id bắt đầu bằng một chữ số hay ký tự đặc biệt.</p>
                            <h4>Bộ chọn class</h4>
                            <p>Bộ chọn class (class selector) chọn các phần tử có thuộc tính class với một giá trị cụ
                                thể.</p>
                            <p>Để chọn các phần tử với một class cụ thể, chỉ cần viết thêm dấu chấm<b> (.) </b>trước tên
                                của class:</p>
                            <p>Trong ví dụ dưới đây, tất cả các phần tử HTML với class="center" sẽ có văn bản được căn
                                giữa và màu đỏ.</p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/dkh9oo5b/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <p><span style="font-size: 1rem;">Chúng ta cũng có thể kết hợp giữa các bộ chọn khác nhau để tạo nên một bộ chọn mới. Chẳng hạn là kết hợp giữa bộ chọn phần tử với bộ chọn class.</span>
                            </p>
                            <p>Trong ví dụ dưới đây, chỉ những phần tử &lt;p&gt; với class="center" có văn bản được căn
                                giữa và màu đỏ:</p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/89q6h8wq/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p><span style="font-size: 1rem;">&nbsp;</span></p>
                            <h4>Gộp các bộ chọn lại với nhau</h4>
                            <p>Trường hợp chúng ta có nhiều phần tử được định nghĩa kiểu giống nhau, chẳng hạn như:</p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/fc7ufu1r/embedded/css/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p></p>
                            <p>Chúng ta có thể gộp chúng lại với nhau để giảm bớt mã nguồn và dễ điều chỉnh hơn.</p>
                            <p>Cách làm ở đây là phân tách các bộ chọn bởi dấu phẩy (,).</p>
                            <p>Sau khi gộp 3 bộ chọn ở trên thì chúng ta sẽ được một bộ chọn mới nhỏ gọn như sau:</p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/zy4rxhLd/embedded/css/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p></p>
                            <div id="gtx-trans" style="position: absolute; left: -45px; top: 119.266px;">
                                <div class="gtx-trans-icon"></div>
                            </div>
                        </div>
                    </div>
                    <div class="modified">Last modified: Sunday, 12 March 2023, 1:40 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
