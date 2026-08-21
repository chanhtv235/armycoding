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
                <div role="main"><span id="maincontent"></span><h2>[Bài đọc] Bootstrap Panel</h2><div class="box py-3 generalbox center clearfix"><div class="no-overflow"><p><span style="font-family: 'times new roman', times, serif; font-size: large;"></span></p>
                    <h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;"></span></p>
                    <p id="yui_3_17_2_1_1654528376603_20">Triển khai được&nbsp;<span>Panel</span> với&nbsp;Bootstrap.</p>
                    <p><span style="color: #37474f; font-family: 'Open Sans'; font-size: 2.143rem;">Nội dung</span></p>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;"></span></p>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Chương này chúng ta sẽ cùng tìm hiểu về Panels. Hãy sử dụng thành phần panel khi bạn muốn đặt nội dung của bạn vào bên trong một chiếc hộp. Chỉ cần thêm class <strong>.panel</strong> &nbsp;vào thẻ &lt;div&gt;. Và hãy sử dụng thêm class .panel-default như ví dụ dưới đây:</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="200" src="https://jsfiddle.net/codegym/04vu3qq9/4/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <h2><span style="font-family: 'times new roman', times, serif; font-size: x-large;"><b>Panel có tiêu đề</b></span></h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Có hai cách để có panel có tiêu đề:</span></p>
                    <ol>
                        <li><span style="font-family: 'times new roman', times, serif; font-size: large;">Sử dụng class <strong>.panel-heading</strong> để dễ dàng thêm tiêu đề vào thành phần Container của bạn.</span></li>
                        <li><span style="font-family: 'times new roman', times, serif; font-size: large;">Sử dụng bất kỳ thẻ &lt;h1&gt; đến &lt;h6&gt; với một class <strong>.panel-title</strong> để thêm một tiêu đề.</span></li>
                    </ol>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Xem ví dụ dưới đây:</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="300" src="https://jsfiddle.net/codegym/04vu3qq9/5/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <h2><span style="font-family: 'times new roman', times, serif; font-size: x-large;"><b>Panel có footer</b></span></h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Bạn có thể thêm footer vào panel bằng cách bọc các nút hoặc text trong thẻ &lt;div&gt; có class <strong>.panel-footer</strong>. Xem ví dụ dưới đây:</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="230" src="https://jsfiddle.net/codegym/04vu3qq9/6/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <h2><span style="font-family: 'times new roman', times, serif; font-size: x-large;"><b>Biến thể theo ngữ cảnh</b></span></h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Bạn có thể sử dụng các class theo ngữ cảnh như <strong>panel-primary</strong>, <strong>panel-success</strong>, <strong>panel-info</strong>, <strong>panel-warning</strong>, <strong>panel-danger</strong> &nbsp;cho Panel để thể hiện một ngữ cảnh cụ thể.</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="600" src="https://jsfiddle.net/codegym/04vu3qq9/8/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <h2><span style="font-family: 'times new roman', times, serif; font-size: x-large;"><b>Panel và bảng</b></span></h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Bạn có thể thêm bất kỳ phần tử&nbsp;<strong>.table</strong>&nbsp;không có đường viền nào vào bên trong một panel để đảm bảo tính thống nhất về giao diện. Nếu như có một&nbsp;.<strong>panel-body</strong>&nbsp;cùng với bảng, chúng ta sẽ thêm một đường viền trên cho bảng để phân tách nội dung.</span></p>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Ví dụ :</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="500" src="https://jsfiddle.net/codegym/04vu3qq9/9/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <h2><span style="font-family: 'times new roman', times, serif; font-size: x-large;"><b>Panel và nhóm các danh sách</b></span></h2>
                    <p><span style="font-family: 'times new roman', times, serif; font-size: large;">Bạn có thể thêm các nhóm danh sách trong bất kỳ panel nào.&nbsp;Tạo panel bằng cách thêm lớp&nbsp;.panel&nbsp;vào phần tử &lt;div&gt;.&nbsp;Cũng thêm lớp&nbsp;<strong>.panel-default</strong>&nbsp;cho phần tử này.&nbsp;Bây giờ trong panel này bao gồm các nhóm danh sách của bạn.</span></p>
                    <p><span style="font-family: 'times new roman', times, serif;"><iframe width="100%" height="500" src="https://jsfiddle.net/codegym/04vu3qq9/10/embedded/html,result/" allowfullscreen="allowfullscreen" frameborder="0"></iframe></span></p>
                    <p></p></div></div><div class="modified">Last modified: Monday, 6 June 2022, 10:13 PM</div></div>
            </div>
        </div>
    </div>
</body>
</html>
