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
                <a href="${pageContext.request.contextPath}/course/module1/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Git và html</a>
                <h4>[Thực hành] Tạo bảng cơ bản</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo bảng</p>

                <h5>Mô tả</h5>
                <p>Tạo trang web hiển thị nội dung như sau:</p>
                <img src="img/img-p3.png" style="width: 50%;" alt="Bảng">

                <h5>Các bước thực hiện</h5>

                <p>Bước 1: Tạo file tablesimple.html</p>
                <p>Bước 2: Sử dụng thẻ table, tr, th, td tạo bảng gồm 7 dòng và mỗi dòng chứa 3 cột. Tiêu đề mỗi cột là
                    Company, Contact, Country. Các nội dung chứa trong từng cột như trong hình mẫu.</p>
                <pre><code class="language-javascript language-markup">
                        &lt;!DOCTYPE html&gt;
                        &lt;html&gt;
                        &lt;head&gt;
                          &lt;title&gt; Table simple &lt;/title&gt;
                        &lt;/head&gt;
                        &lt;body&gt;
                        &lt;table&gt;
                          &lt;tr&gt;
                            &lt;th&gt;Company&lt;/th&gt;
                            &lt;th&gt;Contact&lt;/th&gt;
                            &lt;th&gt;Country&lt;/th&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Alfreds Futterkiste&lt;/td&gt;
                            &lt;td&gt;Maria Anders&lt;/td&gt;
                            &lt;td&gt;Germany&lt;/td&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Centro comercial Moctezuma&lt;/td&gt;
                            &lt;td&gt;Francisco Chang&lt;/td&gt;
                            &lt;td&gt;Mexico&lt;/td&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Ernst Handel&lt;/td&gt;
                            &lt;td&gt;Roland Mendel&lt;/td&gt;
                            &lt;td&gt;Austria&lt;/td&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Island Trading&lt;/td&gt;
                            &lt;td&gt;Helen Bennett&lt;/td&gt;
                            &lt;td&gt;UK&lt;/td&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Laughing Bacchus Winecellars&lt;/td&gt;
                            &lt;td&gt;Yoshi Tannamuri&lt;/td&gt;
                            &lt;td&gt;Canada&lt;/td&gt;
                          &lt;/tr&gt;
                          &lt;tr&gt;
                            &lt;td&gt;Magazzini Alimentari Riuniti&lt;/td&gt;
                            &lt;td&gt;Giovanni Rovelli&lt;/td&gt;
                            &lt;td&gt;Italy&lt;/td&gt;
                          &lt;/tr&gt;
                        &lt;/table&gt;
                        &lt;/body&gt;
                        &lt;/html&gt;
                </code></pre>

                <p>Bước 2: Mở file tablesimple.html bằng trình duyệt quan sát kết quả hiển thị.</p>
                <p>Bước 3: Tạo style sử dụng cho bảng.</p>
                <i>Xác định font chữ hiển thị bảng. Viền bảng hiển thị nét mảnh. Độ rộng 100%.</i>
                <pre><code class="language-javascript language-markup">
                    table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                }
                </code></pre>

                <i>Xác định đường viền cho bảng. Nội dung từng ô căn bên trái. Các ô cách nhau 8px.</i>

                <pre><code class="language-javascript language-markup">
                    td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                </code></pre>
                <i>Xác định màu nền của các dòng chẵn là #dddddd</i>
                <pre><code class="language-javascript language-markup">
                    tr:nth-child() {
                        background-color: #dddddd;
                    }
                </code></pre>

                <p> Bước 4: Mở lại file tablesimple.html bằng trình duyệt quan sát kết quả hiển thị.</p>
                <p> Kết luận</p>
                <p>Trong bài thực hành này chúng ta luyện tập với:</p>
                <p>• Các thẻ làm việc với bảng &lt;table&gt;, &lt;tr&gt;, &lt;td&gt;, &lt;th&gt;</p>
                <p> • Tạo một số style định dang cho bảng</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
