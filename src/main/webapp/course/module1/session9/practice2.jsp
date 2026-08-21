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
                   class="mb-2 btn btn-sm btn-outline-warning">9. Hàm trong Javascript</a>
                <h4>[Thực hành] Chuyển đổi nhiệt độ</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập xây dựng và sử dụng hàm.</p>

                <h5>Mô tả</h5>
                <p> Xây dựng hàm để chuyển đổi từ độ F cho trước sang độ C theo công thức sau: C = (F - 32)/1.8.</p>
                <p>Giao diện mẫu như sau:</p>
                 <img src="img/img-p2.png" style="width: 50%;" alt="Ảnh">
                <h5>Hướng dẫn</h5>
                <p>Bước 1: Thêm mã HTML tạo form</p>
                <pre><code class="language-javascript language-markup">
                    &lt;p&gt;
                        &lt;label>Fahrenheit&lt;/label&gt;
                       &lt;input id="inputFahrenheit" type="number" placeholder="Fahrenheit"
                               oninput="temperatureConverter(this.value)"
                               onchange="temperatureConverter(this.value)"&gt;
                    &lt;/p&gt;
                    &lt;p&gt;Celsius: &lt;span id="outputCelsius"&gt;&lt;/span&gt; &lt;/p&gt;
                </code></pre>
                <p>Bước 2: Xây dựng hàm temperatureConverter
                <p>Hàm sẽ nhận tham số đầu vào là giá trị cần chuyển đổi. </p>
                <p>Thực hiện chuyển đổi từ độ F sang C theo công thức C = (F– 32) /1.8</p>
                <pre><code class="language-javascript language-markup">
                    function temperatureConverter(valNum) {
                    valNum = parseFloat(valNum);
                    document.getElementById("outputCelsius").innerHTML = (valNum-32) / 1.8;
                }
                </code></pre>
                <p>Mã nguồn hoàn chỉnh như sau:</p>
                <pre><code class="language-javascript language-markup">
                    // html
                    &lt;form&gt;
                        &lt;p&gt;
                        &lt;label>Fahrenheit&lt;/label&gt;
                        &lt;input id="inputFahrenheit" type="number" placeholder="Fahrenheit"
                               oninput="temperatureConverter(this.value)"
                               onchange="temperatureConverter(this.value)"&gt;
                        &lt;/p&gt;
                        &lt;p&gt;Celsius: &lt;span id="outputCelsius"&gt;&lt;/span&gt; &lt;/p&gt;
                    &lt;/form&gt;

                    // js
                    function temperatureConverter(valNum) {
                        valNum = parseFloat(valNum);
                        document.getElementById("outputCelsius").innerHTML = (valNum-32) / 1.8;
                    }

                </code></pre>

                <p> Bước 3: Chạy chương trình và quan sát kết quả</p>



            </div>
        </div>
    </div>
</div>


</body>
</html>
