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
                <div role="main" id="yui_3_17_2_1_1714164156992_20"><span id="maincontent"></span>
                    <h2>[Bài đọc] Cú pháp của CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><p></p>
                            <h2>Mục tiêu</h2>
                            <p>Tìm hiểu về cú pháp của CSS, cách viết chú thích trong CSS.</p>
                            <h2>Nội dung</h2>
                            <h4>Cấu trúc của một Bộ quy tắc trong CSS</h4>
                            <p><span>Một Bộ Quy tắc (rule) CSS bao gồm một bộ chọn (selector) và một khối khai báo các thuộc tính:</span>
                            </p>
                            <p><span><img
                                    src="https://james.codegym.vn/pluginfile.php/50285/mod_page/content/4/selector.gif"
                                    alt="" width="569" height="119" role="presentation"
                                    class="img-responsive atto_image_button_text-bottom"><br></span></p>
                            <p><span>Bộ chọn (Selector) chỉ tới các phần tử HTML mà chúng ta muốn áp dụng kiểu.</span>
                            </p>
                            <p>Khối khai báo (Declaration) bao gồm một hoặc nhiều khai báo thuộc tính phân tách nhau
                                bằng dấu chấm phẩy.</p>
                            <p>Mỗi khai báo thuộc tính bao gồm một tên thuộc tính (Property) và giá trị (Value) của
                                thuộc tính, phân tách nhau bằng dấu hai chấm.</p>
                            <p><span>Một khai báo CSS luôn luôn kết thúc với một dấu chấm phẩy, và các nhóm khai báo đặt trong một cặp ngoặc nhọn ({}).</span>
                            </p>
                            <p>
                                <span>Trong ví dụ sau, tất cả các phần tử &lt;p&gt; sẽ được căn giữa và có màu đỏ<br></span>
                            </p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/bu81dyqb/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                            </p>
                            <p></p>
                            <h4>Chú thích trong CSS</h4>
                            <p>Chú thích (comment) được sử dụng để giải thích ý nghĩa của mã nguồn, chúng giúp cho người
                                khác hiểu mã nguồn do chúng ta viết ra, hoặc giúp cho chính chúng ta nếu sau này muốn
                                chỉnh sửa mã nguồn. Các trình duyệt sẽ không xử lý các phần chú thích, chúng sẽ bỏ qua
                                các đoạn chú thích này.</p>
                            <p>Một chú thích trong CSS bắt đầu với cặp kí hiệu /* và kết thúc với cặp kí hiệu */. Chúng
                                ta có thể viết chú thích trên nhiều dòng.</p>
                            <p></p>
                            <p>
                                <iframe width="100%" height="300"
                                        src="https://jsfiddle.net/khacnhat/uxdfv3vL/embedded/css/"
                                        allowfullscreen="allowfullscreen" frameborder="0"></iframe>
                                <br><br></p>
                            <p></p></div>
                    </div>
                    <div class="modified">Last modified: Friday, 3 June 2022, 2:03 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
