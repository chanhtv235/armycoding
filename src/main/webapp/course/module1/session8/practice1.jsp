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
                <h4>[Thực hành] Tạo và thao tác với mảng</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo mảng, thao tác với mảng..</p>
                <h5>Mô tả</h5>
                <p>Viết một chương trình JavaScript để thêm vào các phần tử trong một mảng và hiển thị chúng.

                </p>
                <p> Giao diện mẫu như sau</p>
                <img src="${pageContext.request.contextPath}/course/module1/session8/img/img-p1.png" style="width: 40%;">
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo file arrayElement.html. Thêm mã lệnh html để tạo giao diện:</p>

                <pre><code class="language-javascript language-markup">
                    // CSS
                    &lt;style&gt;
                        body {padding-top:50px}
                    &lt;/style&gt;
                    // body
                    &lt;input type="text" id="txtValue"/&gt;
                    &lt;input type="button" id="btnAdd" value="Add" onclick="add_element_to_array();"/&gt;
                    &lt;input type="button" id="btnDisplay" value="Display" onclick="display_array();"/&gt;
                    &lt;div id="result"&gt; &lt;/div&gt;
                </code></pre>

                <p>Thêm sự kiện onclick cho button ADD gọi đến hàm add_element_to_array() và DISPLAY gọi đến hàm display_array().</p>
                <p>Bước 2: Tạo biến x và khởi tạo bằng 0, x là chỉ số truy cập tới các phần tử trong mảng.</p>
                <pre><code class="language-javascript language-markup">
                     let x = 0;
                </code></pre>
                <p>Bước 3: Tạo mảng array để lưu các giá trị được nhập vào</p>
                <pre><code class="language-javascript language-markup">
                    let array = Array();
                </code></pre>
                <p>Bước 4: Xây dựng hàm add_element_to_array() để thêm mới một phần tử từ form</p>
                <p>•	Lấy giá trị từ input-text và gán phần tử ở vị trí x trong mảng mỗi lần hàm add_element_to_array() được gọi</p>
                <p>•	Tăng giá trị x lên 1</p>
                <p>•	Hiển thị phần tử vừa được thêm vào mảng</p>
                <p>•	Gán giá trị rỗng cho input-text</p>
                <p>Mã lệnh thực thi có thể như sau:</p>
                <pre><code class="language-javascript language-markup">
                     function add_element_to_array() {
                        array[x] = document.getElementById("txtValue").value;
                        alert("Element: " + array[x] + " Added at index " + x);
                        x++;
                        document.getElementById("txtValue").value = "";
                    }
                </code></pre>
                <p>Bước 5: Xây dựng hàm display_array() để hiển thị các phần tử trong mảng</p>
                <p>•	Tạo biến e để lưu thẻ &lt;hr&gt; mỗi lần hiển thị một phần tử thẻ &lt;hr&gt; sử dụng để phân cách các phần tử trong mảng: var e = "&lt;hr/&gt;"</p>
                <p>•	Dùng vòng lặp for duyệt toàn bộ mảng:for (let i=0; i< array.length i++)</p>
                <p>•	Mỗi lần duyệt lấy giá trị của các phần tử cộng dồn vào biến e. Thêm thẻ  &lt;br/&gt; cuối mỗi lần duyệt.</p>
                <p>•	Kết thúc lặp. Hiển thị biến e</p>
                <p>Mã lệnh thực thi có thể như sau:</p>
                <pre><code class="language-javascript language-markup">
                     function display_array() {
                        let e = "<hr/>";
                        for (let i = 0; i < array.length; i++) {
                        e += "Element " + i + " = " + array[i] + "<br/>";
                        }
                        document.getElementById("result").innerHTML = e;
                    }
                </code></pre>
                <p>Bước 6: Thực thi chương trình. Quan sát kết quả.

            </div>
        </div>
    </div>
</div>


</body>
</html>
