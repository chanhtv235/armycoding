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
                <a href="${pageContext.request.contextPath}/course/module3/session2/detail.jsp"
                   style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Thiết kế CSDL</a>
                <div role="main" id="yui_3_17_2_1_1714149817868_22"><span id="maincontent"></span>
                    <h2 id="yui_3_17_2_1_1714149817868_25">[Bài đọc] Ràng buộc (Constraint) trong SQL</h2>
                    <div class="box py-3 generalbox center clearfix" id="yui_3_17_2_1_1714149817868_21">
                        <div class="no-overflow" id="yui_3_17_2_1_1714149817868_20"><h3 id="_constraint-la-gi-0">
                            Constraint là gì?</h3>
                            <p>Constraint là những quy tắc được áp dụng trên các cột dữ liệu, trên bảng. Được sử dụng để
                                kiểm tra tính hợp lệ của dữ liệu vào, đảm bảo tính chính xác, tính toàn vẹn của dữ
                                liệu.</p>
                            <p><span>Các ràng buộc có thể được&nbsp;</span><span style="text-decoration: underline;">khai báo</span><span>&nbsp;trong quá trình tạo bảng hoặc cập nhật bảng.</span>
                            </p>
                            <pre><span><span><pre><code class="language-sql hljs sql"><span class="hljs-keyword">CREATE</span> <span
                                    class="hljs-keyword">TABLE</span><span>&nbsp;table_name( column1 <span
                                    class="hljs-keyword">DATA</span> <span class="hljs-keyword">TYPE</span>&nbsp;</span><span><span
                                    class="hljs-keyword">constraint</span></span><span>, column2 <span
                                    class="hljs-keyword">DATA</span> <span class="hljs-keyword">TYPE</span>&nbsp;</span><span><span
                                    class="hljs-keyword">constraint</span></span><span>, column3 <span
                                    class="hljs-keyword">DATA</span> <span class="hljs-keyword">TYPE</span>&nbsp;</span><span><span
                                    class="hljs-keyword">constraint</span></span><span>, .... );</span></code></pre></span></span></pre>
                            <h2 id="_cac-loai-constraint-pho-bien-1">Các loại constraint phổ biến</h2>
                            <table>
                                <thead>
                                <tr>
                                    <th>Loại ràng buộc</th>
                                    <th>Ý nghĩa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>NOT NULL</td>
                                    <td>Sử dụng để đảm bảo dữ liệu của cột không được nhận giá trị NULL</td>
                                </tr>
                                <tr>
                                    <td>DEFAULT</td>
                                    <td>Gán giá trị mặc định trong trường hợp dữ liệu của cột không được nhập vào hay
                                        không được xác định.
                                    </td>
                                </tr>
                                <tr>
                                    <td>UNIQUE</td>
                                    <td>Sử dụng để đảm bảo dữ liệu của cột là duy nhất, không trùng lặp giá trị trên
                                        cùng 1 cột.
                                    </td>
                                </tr>
                                <tr>
                                    <td>PRIMARY KEY (Khóa chính)</td>
                                    <td>Dùng để thiết lập khóa chính trên bảng, xác định giá trị trên tập các cột làm
                                        khóa chính phải là duy nhất, không được trùng lặp. Việc khai báo ràng buộc khóa
                                        chính yêu cầu các cột phải NOT NULL.
                                    </td>
                                </tr>
                                <tr>
                                    <td>FOREIGN KEY (Khóa ngoại)</td>
                                    <td>Dùng để thiết lập khóa ngoại trên bảng, tham chiếu đến bảng khác thông qua giá
                                        trị của cột được liên kết. Giá trị của cột được liên kết phải là duy nhất trong
                                        bảng kia.
                                    </td>
                                </tr>
                                <tr>
                                    <td>CHECK</td>
                                    <td>Bảo đảm tất cả giá trị trong cột thỏa mãn điều kiện nào đó. Đây là hình thức sử
                                        dụng phổ biến để kiểm tra tính hợp lệ của dữ liệu (validate data)
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <p>&nbsp;</p>
                            <div id="gtx-trans" style="position: absolute; left: -8px; top: 100px;">
                                <div class="gtx-trans-icon"><br><br></div>
                            </div>
                        </div>
                    </div>
                    <div class="modified">Last modified: Wednesday, 15 June 2022, 1:16 PM</div>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
