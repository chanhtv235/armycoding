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
                <a href="${pageContext.request.contextPath}/course/module1/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Git và html</a>
                <h4>[Thực hành] Tạo bảng nâng cao</h4>

                <h5>Mục tiêu</h5>
                <p>Tạo bảng có cấu trúc nâng cao trong HTML.</p>

                <h5>Mô tả</h5>
                <p>Tạo bảng thời khoá biểu với cấu trúc như sau:</p>
                <img src="img/img-p41.png" style="width: 60%;">
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo 1 file HTML.</p>
                <p>Bước 2: Tạo cấu trúc table như sau :</p>
                <img src="img/img-p42.png" style="width: 60%;">
                <p>Để làm được điều này, chúng ta sử dụng:</p>
                <p>•	Thuộc tính colspan của thẻ &lt;td&gt; hoặc &lt;th&gt; để mở rộng theo chiều ngang.</p>
                <p> •	Thuộc tính rowspan của thẻ &lt;td&gt; hoặc &lt;th&gt; để mở rộng theo chiều dọc.</p>
                <p>Tạo cấu trúc tiêu đề như sau :</p>
                <p>•	Sử dụng thẻ  &lt;tr&gt;để tạo ra một hàng</p>
                <p>•	Sử dụng thẻ  &lt;th&gt; để tạo ra các mục tiêu đề</p>
                <pre><code class="language-javascript language-markup">
                    &lt;h2&gt; Thời Khóa Biểu&lt;/h2&gt;
                    &lt;table&gt;
                        &lt;tr&gt;
                            &lt;th rowspan=2&gt;Thứ&lt;/th&gt;
                            &lt;th colspan=2&gt;Hoạt động&lt;/th&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;th&gt;Sáng&lt;/th&gt;
                            &lt;th&gt;Chiều&lt;/th&gt;
                        &lt;/tr&gt;
                    &lt;/table&gt;
                </code></pre>
                <p>Bước 3: Thêm phần nội dung cho bảng:</p>
                <pre><code class="language-javascript language-markup">
                    &lt;h2&gt; Thời Khóa Biểu&lt;/h2&gt;
                    &lt;table&gt;
                        &lt;tr&gt;
                            &lt;th rowspan=2&gt;Thứ&lt;/th&gt;
                            &lt;th colspan=2&gt;Hoạt động&lt;/th&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;th&gt;Sáng&lt;/th&gt;
                            &lt;th&gt;Chiều&lt;/th&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Thứ Hai&lt;/td&gt;
                            &lt;td&gt;Thể dục&lt;/td&gt;
                            &lt;td&gt;HD trò chơi mới&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Thứ 3&lt;/td&gt;
                            &lt;td&gt;Nhận biết tập nói&lt;/td&gt;
                            &lt;td&gt;Rèn nề nếp,kỹ năng sống&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Thứ 4&lt;/td&gt;
                            &lt;td&gt;Âm Nhạc &lt;/td&gt;
                            &lt;td&gt;Vui chơi&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Thứ 5&lt;/td&gt;
                            &lt;td&gt;Văn Học&lt;/td&gt;
                            &lt;td&gt;Nhận Biết các giá trị sống&lt;/td&gt;
                        &lt;/tr&gt;
                    &lt;/table&gt;
                </code></pre>
                <p> Bước 4: Trang trí cho bảng sử dụng CSS.</p>
                <p>Nhúng file css vào trang HTML: &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;css/style.css&quot;&gt;</p>
                <pre><code class="language-javascript language-markup language-css">
                    body {
                        padding: 50px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    td, th {
                        padding: 20px;
                        border: 1px solid black;
                    }
                    th{
                        font-family: 'Patua One', cursive;
                        font-size:16px;
                        font-weight:400;
                        color:#fff;
                        text-align:center;
                        padding:20px;
                        background-color: #d61b06;
                        border-color: white;
                    }
                    td{
                        font-family: 'Open Sans', sans-serif;
                        font-weight:400;
                        color:#5f6062;
                        font-size:13px;
                        padding:20px 20px 20px 20px;
                        border-bottom:1px solid #e0e0e0;
                        text-align: center;
                    }
                    .hover {
                        background: red;
                    }
                </code></pre>
                <p>Xem kết quả</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
