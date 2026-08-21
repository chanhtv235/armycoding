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
                    <h2>[Bài đọc] Bảng trong CSS</h2>
                    <div class="box py-3 generalbox center clearfix">
                        <div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                            <p>Chỉnh sửa được giao diện của bảng bằng CSS.</p>
                            <h2>Nội dung</h2>
                            <p>Giao diện của bảng trong HTML có thể được cải thiện đáng kể với CSS.</p>
                            <h2>Đường viền của bảng</h2>
                            <p>Để định kiểu cho đường viền (border) của bảng trong CSS, sử dụng thuộc tính border.<br>
                                Ví dụ dưới đây chỉ định đường biên màu đen cho các phần tử &lt;table&gt;, &lt;th&gt;, và
                                &lt;td&gt;:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/578ae5am/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                                Lưu ý rằng bảng ở ví dụ trên có đường viền đôi. Điều này là bởi các phần tử &lt;table&gt;,<br>&lt;th&gt;
                                và &lt;td&gt; đều có đường viền riêng biệt.
                            </p>
                            <h2>Bỏ các đường viền của bảng</h2>
                            <p>Thuộc tính <strong>border-collapse</strong> thiết lập các đường viền của bảng nhập vào
                                thành một đường viền duy nhất:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/ov1p93sv/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Chiều rộng và chiều cao của bảng</h2>
                            <p>Chiều rộng và chiều cao của một bảng được xác định bởi các thuộc tính width và height .
                                Ví dụ dưới đây đặt chiều rộng của bảng là 100%, và chiều cao của các phần tử &lt;th&gt;
                                là 50px:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/4emy9r7g/1/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Căn chỉnh theo chiều ngang</h2>
                            <p>Thuộc tính text-align thiết lập căn chỉnh theo chiều ngang (như trái, phải, hoặc
                                giữa)<br>cho nội dung bên trong &lt;th&gt; hoặc &lt;td&gt;.<br>Mặc định, nội dung của
                                các phần tử &lt;th&gt; được canh giữa và nội dung của các phần tử<br>&lt;td&gt; được
                                canh trái.<br>Ví dụ sau văn bản trong &lt;th&gt; được canh lề trái:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/Lvonscn0/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Căn chỉnh theo chiều dọc</h2>
                            <p>Thuộc tính vertical-lign dùng để thiết lập căn chỉnh theo chiều dọc (như trên, dưới,<br>hoặc
                                giữa) nội dung bên trong các phần tử &lt;th&gt; hoặc &lt;td&gt;.<br>Mặc định, căn chỉnh
                                theo chiều dọc nội dung trong bảng là ở giữa (middle) (cho cả &lt;th&gt;<br>và &lt;td&gt;).<br>Ví
                                dụ sau thiết lập căn chỉnh văn bản xuống dưới (bottom) cho các phần tử &lt;td&gt;:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/m5n59L6z/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Padding trong bảng</h2>
                            <p>Để điều khiển khoảng cách giữa đường viền và nội dung bên trong một bảng, sử dụng<br>thuộc
                                tính padding cho các phần tử &lt;td&gt; và &lt;th&gt;:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/k46e278m/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                            <h2>Màu sắc trong bảng</h2>
                            <p>Ví dụ dưới đây chỉ định màu sắc của các đường viền; màu nền và màu chữ của phần tử &lt;th&gt;:</p>
                            <h3>Ví dụ</h3>
                            <p>
                                <iframe src="https://jsfiddle.net/khacnhat/g7fuo26k/embedded/html,css,result/"
                                        allowfullscreen="allowfullscreen" width="100%" height="300"
                                        frameborder="0"></iframe>
                            </p>
                        </div>
                    </div>
                    <div class="modified">Last modified: Friday, 3 June 2022, 4:37 PM</div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
