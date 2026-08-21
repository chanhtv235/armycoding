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
                <div role="main"><span id="maincontent"></span><h2>[Bài đọc] Sử dụng màu sắc trong trang web</h2><div class="box py-3 generalbox center clearfix"><div class="no-overflow"><h2 id="yui_3_17_2_1_1654239543361_24">Mục tiêu</h2>
                    <p>Sử dụng được màu sắc bằng CSS với HTML.</p>
                    <h2>Nội dung</h2>
                    <p>Có 3 cách thường được dùng để quy định màu sắc trong trang web:</p>
                    <ul>
                        <li>Sử dụng tên của màu. Chẳng hạn là "red" (đỏ) hoặc "green" (xanh lá cây)</li>
                        <li>Sử dụng giá trị RGB ( Red Green Blue). Chẳng hạn là "rgb(255, 0, 0).</li>
                        <li>Sử dụng giá trị HEX. Chẳng hạn là "#ff0000".</li>
                    </ul>
                    <h2>Tên màu</h2>
                    <p>Sau đây là bảng các tên màu phổ biến:</p>
                    <table class="w3-table-all notranslate" style="width: 336px; height: 158px;">
                        <tbody>
                        <tr><th style="width: 50%;">Color</th><th>Name</th></tr>
                        <tr>
                            <td style="background-color: red;">&nbsp;</td>
                            <td>Red</td>
                        </tr>
                        <tr>
                            <td style="background-color: green;">&nbsp;</td>
                            <td>Green</td>
                        </tr>
                        <tr>
                            <td style="background-color: blue;">&nbsp;</td>
                            <td>Blue</td>
                        </tr>
                        <tr>
                            <td style="background-color: orange;">&nbsp;</td>
                            <td>Orange</td>
                        </tr>
                        <tr>
                            <td style="background-color: yellow;">&nbsp;</td>
                            <td>Yellow</td>
                        </tr>
                        <tr>
                            <td style="background-color: cyan;">&nbsp;</td>
                            <td>Cyan</td>
                        </tr>
                        <tr>
                            <td style="background-color: black;">&nbsp;</td>
                            <td>Black</td>
                        </tr>
                        </tbody>
                    </table>
                    <h2>Giá trị RGB</h2>
                    <p>Giá trị RGB biểu diễn một màu theo công thức: Tất cả các màu sắc khác đều được sinh ra bằng cách hoà trộn 3 màu cơ bản là: Red (đỏ), Green (xanh lá cây) và Blue (xanh nước biển).</p>
                    <p>Giá trị của R, G và B được xác định nằm trong khoảng từ 0 đến 255.</p>
                    <p>Chẳng hạn, sau đây là bảng một số màu phổ biến cùng với giá trị RGB của nó:</p>
                    <p></p>
                    <table class="w3-table-all notranslate" style="width: 334px; height: 131px;">
                        <tbody>
                        <tr><th style="width: 50%;">Color</th><th>RGB</th></tr>
                        <tr>
                            <td style="background-color: #ff0000;">&nbsp;</td>
                            <td>rgb(255,0,0)</td>
                        </tr>
                        <tr>
                            <td style="background-color: #00ff00;">&nbsp;</td>
                            <td>rgb(0,255,0)</td>
                        </tr>
                        <tr>
                            <td style="background-color: #0000ff;">&nbsp;</td>
                            <td>rgb(0,0,255)</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffa500;">&nbsp;</td>
                            <td>rgb(255,165,0)</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffff00;">&nbsp;</td>
                            <td>rgb(255,255,0)</td>
                        </tr>
                        <tr>
                            <td style="background-color: #00ffff;">&nbsp;</td>
                            <td>rgb(0,255,255)</td>
                        </tr>
                        </tbody>
                    </table>
                    <h2>Mã HEX</h2>
                    <p>Mã HEX là một cách biểu diễn khác của màu dựa trên các giá trị RGB. Tuy nhiên, thay vì biểu diễn bằng cú pháp rgb(value, value, value) thì được biểu diễn dưới dạng 6 chữ số hệ thập lục phân.</p>
                    <p><strong>Lưu ý:</strong> Hệ thập lục phân bao gồm 16 chữ số: 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f. Chữ số ff trong hệ 16 tương đương với chữ số 255 trong hệ thập phân.</p>
                    <p>Như vậy:</p>
                    <p>Trong hệ thập phân, giá trị các màu biến thiên trong khoảng 0 - 255</p>
                    <p>Trong hệ thập lục phân, giá trị các màu biến thiên trong khoảng 00 - FF.</p>
                    <p>Sau đây là bảng các màu thông dụng và mã HEX của chúng:</p>
                    <table class="w3-table-all notranslate" style="width: 333px; height: 131px;">
                        <tbody>
                        <tr><th style="width: 50%;">Color</th><th>HEX</th></tr>
                        <tr>
                            <td style="background-color: #ff0000;">&nbsp;</td>
                            <td>#FF0000</td>
                        </tr>
                        <tr>
                            <td style="background-color: #00ff00;">&nbsp;</td>
                            <td>#00FF00</td>
                        </tr>
                        <tr>
                            <td style="background-color: #0000ff;">&nbsp;</td>
                            <td>#0000FF</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffa500;">&nbsp;</td>
                            <td>#FFA500</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffff00;">&nbsp;</td>
                            <td>#FFFF00</td>
                        </tr>
                        <tr>
                            <td style="background-color: #00ffff;">&nbsp;</td>
                            <td>#00FFFF</td>
                        </tr>
                        </tbody>
                    </table>
                    <p>Lưu ý: Trong 6 chữ số của mã HEX thì:</p>
                    <ul>
                        <li>2 chữ số đầu biểu diễn giá trị R</li>
                        <li>2 chữ số giữa biểu diễn giá trị G</li>
                        <li>2 chữ số cuối biểu diễn giá trị B</li>
                    </ul>
                    <p>Như vậy, màu có giá trị rgb(255, 255, 0) sẽ tương đương với mã HEX là #FFFF00.</p>
                    <p></p>
                    <p></p></div></div><div class="modified">Last modified: Monday, 6 June 2022, 12:03 AM</div></div>
        </div>
    </div>
    </div>
</body>
</html>
