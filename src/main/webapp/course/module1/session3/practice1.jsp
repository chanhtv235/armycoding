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
                <h4>[Thực hành] Tạo form cơ bản</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo form</p>

                <h5>Mô tả</h5>
                <p>Tạo form như mẫu sau. Font chữ sử dụng trên form là: "Lucida Grande","Lucida Sans Unicode", Tahoma, sans-serif</p>
                <img src="img/img-p1.png" style="width: 30%;">

                <h5>Hướng dẫn </h5>
                <p>Bước 1: Tạo file html đặt tên simpleform.html</p>
                <p>Bước 2: Thêm thẻ &lt;form&gt; vào.</p>
                <pre><code class="language-javascript language-markup">
                    &lt;body&gt;
                        &lt;form method=&quot;get&quot; action=&quot;simpleform.html&quot;&gt;
                        &lt;/form&gt;
                    &lt;/body&gt;
                </code></pre>

                <p>Bước 3: Thêm các phần tử vào form</p>
                <p>Tạo tùy chọn với select ... option</p>

                <pre><code class="language-javascript language-markup">
                    &lt;h2&gt;Order Form&lt;/h2&gt;
                    &lt;p&gt;What would you like to buy?&lt;/p&gt;
                    &lt;select&gt;
                        &lt;option value = &quot;  &quot;&gt;A&lt;/option&gt;
                        &lt;option&gt;B (+  0.5$)&lt;/option&gt;
                        &lt;option&gt;C (+  0.5$)&lt;/option&gt;
                    &lt;/select&gt;
                </code></pre>
                <p>Tạo radio button</p>
                <pre><code class="language-javascript language-markup">
                    &lt;p&gt;How many would you like to order?&lt;/p&gt;
                    &lt;input type=&quot;radio&quot; name=&quot;rd&quot;/&gt; 1 - $10 &lt;br/&gt;
                    &lt;input type=&quot;radio&quot; name=&quot;rd&quot;/&gt; 2 - $20 &lt;br/&gt;
                    &lt;input type=&quot;radio&quot; name=&quot;rd&quot;/&gt; 3 - $25 &lt;br/&gt;
                </code></pre>

                <p>Tạo textfield</p>
                <pre><code class="language-javascript language-markup">
                    &lt;p&gt;Name &lt;span style=&quot;color: red&quot;&gt;*&lt;/span&gt; &lt;/p&gt;
                    &lt;input type = &quot;text&quot; name=&quot;firstname&quot; placeholder=&quot;FirstName&quot; size=&quot;15&quot;/&gt;
                    &lt;input type = &quot;text&quot; name=&quot;lastname&quot; placeholder=&quot;LastName&quot; size=&quot;15&quot;/&gt;
                    &lt;p&gt;Email&lt;/p&gt;
                    &lt;input type = &quot;text&quot; name=&quot;email&quot; size=&quot;35&quot;/&gt;
                    &lt;p&gt;Phone Number&lt;/p&gt;
                    &lt;input type = &quot;text&quot; name=&quot;phone1&quot; size=&quot;5&quot;/&gt; -
                    &lt;input type = &quot;text&quot; name=&quot;phone2&quot; size=&quot;5&quot;/&gt; -
                    &lt;input type = &quot;text&quot; name=&quot;phone3&quot; size=&quot;5&quot;/&gt;
                </code></pre>

                <p>Tạo button</p>
                <pre><code class="language-javascript language-markup">
                    &lt;p&gt;&lt;input type = &quot;button&quot; name=&quot;btSubmit&quot; value=&quot;Submit&quot;/&gt;&lt;/p&gt;
                </code></pre>
                <p>Bước 4: Tạo style về font chữ áp dụng toàn bộ form</p>
                <pre><code class="language-javascript language-markup">
                    &lt;style&gt;
                        .wufoo {
                        font-family: &quot;Lucida Grande&quot;,&quot;Lucida Sans Unicode&quot;, Tahoma, sans-serif;
                        }
                    &lt;/style&gt;
                </code></pre>
                <p>Sử dụng style vừa tạo:</p>
                <pre><code class="language-javascript language-markup">
                    &lt;form method=&quot;get&quot; action=&quot;simpleform.html&quot; class = &quot;wufoo&quot;&gt;
                </code></pre>

                <p>Bước 5: Mở file simpleform.html bằng trình duyệt. Quan sát kết quả.
                <p>Kết luận
                Trong bài thực hành này chúng ta đã luyện tập tạo form với các phần tử cơ bản text, button, radio, select.



            </div>
        </div>
    </div>
</div>


</body>
</html>
