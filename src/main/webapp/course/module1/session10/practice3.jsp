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
                <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Lập trình OOP</a>
                <h4>[Thực hành] Funny circles</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng đối tượng trong Javascript.</p>

                <h5>Mô tả</h5>
                <p>Phát triển một ứng dụng đơn giản với các hình tròn với nhiều hiệu ứng khác nhau.</p>
                <p> Ứng dụng này được phát triển theo từng cấp độ (tương ứng với từng bước) đi từ dễ đến khó.</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>: Tạo một trang HTML với thẻ canvas.</p>
                <pre><code class="language-javascript language-markup">
                        &lt;!DOCTYPE html&gt;
                        &lt;html lang=&quot;en&quot;&gt;
                            &lt;head&gt;
                                 &lt;meta charset=&quot;UTF-8&quot;&gt;
                                 &lt;title&gt;Funny Circle&lt;/title&gt;
                             &lt;/head&gt;
                             &lt;body&gt;
                                 &lt;canvas id=&quot;myCanvas&quot; width=&quot;1368px&quot; height=&quot;768px&quot; style=&quot;border:1px solid #d3d3d3;&quot;&gt;
                             &lt;/body&gt;
                        &lt;/html&gt;

                </code></pre>
                <p><b>Bước 2:</b> Vẽ một hình tròn đơn giản với kích thước cố định</p>
                <pre><code class="language-javascript language-markup">
                       // tạo lớp
                        class Circle{
                            constructor(x, y, radius) {
                                this.x = x;
                                this.y = y;
                                this.radius = radius;
                            }
                        }
                      // tạo hàm vẽ đường chòn
                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            // tạo 1 đối tượng circle từ lớp Circle
                            let circle= new Circle(500, 500, 80);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fill();
                        }
                     // gọi hàm để vẽ đường tròn
                        createCircle();

                </code></pre>
                <p> Trong đoạn mã trên, chúng ta sử dụng phương thức arc() để vẽ một hình tròn. cx và cy là các toạ độ
                    của hình tròn. r là bán kính của hình tròn.</p>
                <p><b>Bước 3:</b>Vẽ hình tròn với bán kính ngẫu nhiên</p>
                <pre><code class="language-javascript language-markup">
                        class Circle{
                            constructor(x, y, radius) {
                                this.x = x;
                                this.y = y;
                                this.radius = radius;
                            }
                        }

                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            let radius = Math.floor(Math.random() * 80);
                            let circle= new Circle(500, 500, radius);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fill();
                        }

                        createCircle();

                </code></pre>
                <p>Trong đoạn mã trên, chúng ta sử dụng hàm Math.random() để sinh một bán kính ngẫu nhiên nằm trong
                    khoảng từ 0-80.</p>
                <p><b>Bước 4:</b> Vẽ hình tròn với màu ngẫu nhiên</p>
                <pre><code class="language-javascript language-markup">
                        class Circle{
                             constructor(x, y, radius) {
                                 this.x = x;
                                 this.y = y;
                                 this.radius = radius;
                             }
                        }

                        function getRandomHex(){
                            return Math.floor(Math.random()*255);
                        }

                        function getRandomColor(){
                            let red = getRandomHex();
                            let green = getRandomHex();
                            let blue = getRandomHex();
                            return "rgb(" + red + "," + blue + "," + green +")";
                        }

                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            let radius = Math.floor(Math.random() * 80);
                            let color = getRandomColor();
                            let circle= new Circle(500, 500, radius);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fillStyle = color;
                            ctx.fill();
                        }

                        createCircle();
                </code></pre>
                <p>Ở đoạn mã trên, chúng ta đã tạo 2 hàm mới để phục vụ việc sinh ra một màu ngẫu nhiên:</p>
                <p>• Hàm getRandomHex() sẽ sinh ra một số ngẫu nhiên nằm trong khoảng 0-255.</p>
                <p>• Hàm getRandomColor() sinh ra một màu ngẫu nhiên.</p>
                <p><b>Bước 5:</b> Vẽ được hình tròn với vị trí ngẫu nhiên</p>
                <pre><code class="language-javascript language-markup">
                        class Circle{
                             constructor(x, y, radius) {
                                 this.x = x;
                                 this.y = y;
                                 this.radius = radius;
                             }
                        }

                        function getRandomHex(){
                            return Math.floor(Math.random()*255);
                        }

                        function getRandomColor(){
                            let red = getRandomHex();
                            let green = getRandomHex();
                            let blue = getRandomHex();
                            return "rgb(" + red + "," + blue + "," + green +")";
                        }

                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            let radius = Math.floor(Math.random() * 80);
                            let color = getRandomColor();
                            let x = Math.random() * window.innerWidth;
                            let y = Math.random() * window.innerHeight;
                            let circle= new Circle(x, y, radius);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fillStyle = color;
                            ctx.fill();
                        }

                        createCircle();

                </code></pre>
                <p>Ở các ví dụ trên, chúng ta vẫn đang cố định vị trí của hình tròn ở toạ độ 500, 500. Ở bước này, chúng
                    ta sẽ sinh toạ độ của hình tròn ngẫu nhiên.</p>
                <p>Ở đoạn mã trên, chúng ta có sử dụng window.innerWidth và window.innerHeight là 2 thuộc tính trả về
                    kích thước của cửa sổ trình duyệt.</p>
                <p><b>Bước 6:</b>Vẽ được 2 hình tròn.</p>
                <pre><code class="language-javascript language-markup">
                        class Circle{
                            constructor(x, y, radius) {
                                this.x = x;
                                this.y = y;
                                this.radius = radius;
                            }
                        }

                        function getRandomHex(){
                            return Math.floor(Math.random()*255);
                        }

                        function getRandomColor(){
                            let red = getRandomHex();
                            let green = getRandomHex();
                            let blue = getRandomHex();
                            return "rgb(" + red + "," + blue + "," + green +")";
                        }

                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            let radius = Math.floor(Math.random() * 80);
                            let color = getRandomColor();
                            let x = Math.random() * window.innerWidth;
                            let y = Math.random() * window.innerHeight;
                            let circle= new Circle(x, y, radius);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fillStyle = color;
                            ctx.fill();
                        }

                        createCircle();

                </code></pre>
                <p>Ở các bước trước, chúng ta chỉ mới tạo được 1 hình tròn. Ở bước này, chúng ta thử tạo 2 hình
                    tròn.</p>
                <p>Cách đơn giản để tạo 2 hình tròn đó là gọi phương thức createCircle() 2 lần liên tiếp nhau.</p>
                <p><b>Bước 7:</b> Tạo rất nhiều hình tròn.</p>
                <pre><code class="language-javascript language-markup">
                        class Circle{
                            constructor(x, y, radius) {
                                this.x = x;
                                this.y = y;
                                this.radius = radius;
                            }
                        }

                        function getRandomHex(){
                            return Math.floor(Math.random()*255);
                        }

                        function getRandomColor(){
                            let red = getRandomHex();
                            let green = getRandomHex();
                            let blue = getRandomHex();
                            return "rgb(" + red + "," + blue + "," + green +")";
                        }

                        function createCircle(){
                            let ctx = document.getElementById("myCanvas").getContext("2d");
                            let radius = Math.floor(Math.random() * 80);
                            let color = getRandomColor();
                            let x = Math.random() * window.innerWidth;
                            let y = Math.random() * window.innerHeight;
                            let circle= new Circle(x, y, radius);
                            ctx.beginPath();
                            ctx.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI);
                            ctx.fillStyle = color;
                            ctx.fill();
                        }

                        createCircle();
                </code></pre>
                <img src="img/img-p3.png" style="width: 60%;">
                <p>Để tạo rất nhiều hình tròn, chúng ta không thể sử dụng phương thức như ở bước 6. Thay vào đó, chúng
                    ta có thể sử dụng vòng lặp để đạt được mục tiêu này.</p>
                <p>Trong đoạn mã trên, chúng ta đã sử dụng một vòng lặp for để tạo ra 30 hình tròn.</p>
                <p>Như vậy, chúng ta đã tạo được một số hiệu ứng khá thú vị với các hình tròn.</p>
                <p>Thông qua các bước ở trên, chúng ta đã luyện tập:</p>
                <p>• Cách làm việc với đối tượng</p>
                <p>• Truyền tham số vào cho đối tượng</p>
                <p>• Sử dụng các thuộc tính của đối tượng</p>
                <p>• Tạo các hàm để bổ sung tính năng cho ứng dụng</p>
                <p>Yêu cầu nâng cao: Bổ sung thêm hiệu ứng di chuyển cho các hình tròn.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
