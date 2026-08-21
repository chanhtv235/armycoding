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
                <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8. Cấu trúc Mảng</a>

                <h4>[Thực hành] Tạo bàn cờ caro đơn giản</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập mảng hai chiều với vòng lặp for, truy cập và thay đổi các phần tử trong mảng 2 chiều.</p>

                <h5>Mô tả</h5>
                <p>
                    Xây dựng game caro đơn giản.
                    Bàn cờ hiển thị đơn giản gồm N dòng và M cột. Mỗi giá trị trong cột nhận giá trị mặc định là 0.
                </p>
                <img src="${pageContext.request.contextPath}/course/module1/session8/img/img-p51.png" style="width: 40%;">
                <p>
                    Khi người dùng click vào nút “Change Value” sẽ hiển thị hộp thoại yêu cầu nhập vị trí phần tử cần
                    thay đổi và giá trị phần tử cần thay đổi. </p>
                <p> Sau khi thay đổi màn hình hiển thị lại bàn cờ như sau:
                </p>
                <img src="${pageContext.request.contextPath}/course/module1/session8/img/img-p52.png" style="width: 40%;">
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo file carosimple.html.</p>
                <p>Bước 2: Tạo giao diện sử dụng thẻ html</p>
                <pre><code class="language-javascript language-markup">
                    &lt;h3&gt;Caro Game Simple&lt;/h3&gt;
                    &lt;p id="carogame" /&gt;
                    &lt;input type="button" value="Change Value" onclick="changeValue()"&gt;
                </code></pre>
                <p>Bước 3: Hiển thị bàn cờ</p>
                <pre><code class="language-javascript language-markup">
                    let b = document.getElementById("carogame");
                    let board = [];
                    let data = "";
                    for (let i = 0; i < 5; i++) {
                        board[i] = new Array(0, 0, 0, 0, 0);
                    }

                    for (let i = 0; i < 5; i++) {
                        data += "&lt;br/&gt;";
                        for (let j = 0; j < 5; j++) {
                            data += board[i][j] + "&nbsp;&nbsp;";
                        }
                    }
                    data += "&lt;br/&gt;&lt;br/&lt;input type='button' value='Change Value' onclick='changeValue()'&gt;"
                    b.innerHTML = data;
                </code></pre>

                <p>Bước 4: Xử lý sự kiện khi người dùng click chuột vào nút “Change Value”</p>
                <pre><code class="language-javascript language-markup">
                       function changeValue() {
                            let positionX = prompt("X: ");
                            let positionY = prompt("Y: ");
                            data = "";
                            board[positionX][positionY] = "x";
                            for (let i = 0; i < 5; i++) {
                                data += "&lt;br/&gt;";
                                for (let j = 0; j < 5; j++) {
                                    data += board[i][j] + "&nbsp;&nbsp;&nbsp;&nbsp;";
                                }
                            }
                            data += "&lt;br/&gt;&lt;br/&lt;input type='button' value='Change Value' onclick='changeValue()'&gt;"
                            b.innerHTML = "&lt;hr/&gt;" + data;
                        }
                </code></pre>
                <p>Bước 5: Chạy chương trình và thay đổi vị trí trên bàn cờ. Quan sát kết quả.</p>




            </div>
        </div>
    </div>
</div>


</body>
</html>
