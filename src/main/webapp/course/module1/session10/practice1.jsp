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
                <h4>[Thực hành] Xây dựng lớp Date</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo và sử dụng lớp</p>

                <h5>Mô tả</h5>
                <p>Hãy xây dựng lớp Date theo sơ đồ lớp sau:</p>
                <img src="img/img-p1.png" style="width: 50%;">
                <h6>Lớp MyDate gồm:</h6>
                <p>1.	Thuộc tính:</p>
                <p>-	day (ngày) sẽ nhận vào giá trị dạng số nguyên</p>
                <p>-	month (tháng) sẽ nhận vào giá trị dạng số nguyên</p>
                <p>-	year (năm) sẽ nhận vào giá trị dạng số nguyên</p>
                <p>2.	Phương thức:</p>
                <p>-	Date(day, month, year) là phương thức khởi tạo để tạo đối tượng với 3 tham số.</p>
                <p>-	getDay(), getMonth(), getYear() là phương thức trả về ngày, tháng, năm</p>
                <p>-	setDay(), setMonth(), setYear() là phương thức thiết đặt lại giá trị mới cho ngày tháng năm</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>: Xây dựng lớp MyDate với phương thức khởi tạo có 3 tham số truyền vào</p>
                <pre><code class="language-javascript language-markup">
                    class MyDate{
                        constructor(day, month, year) {
                            this.day = day;
                            this.month = month;
                            this.year = year;
                        }
                </code></pre>
                <p><b>Bước 2:</b> Xây dựng phương thức trả về ngày, tháng, năm</p>
                <pre><code class="language-javascript language-markup">
                    getDay() {
                        return this.day;
                    }
                    getMonth() {
                        return this.month;
                    }
                    getYear() {
                        return this.year;
                    }
                </code></pre>
                <p><b>Bước 3:</b> Xây dựng phương thức thiết đặt lại giá trị các thuộc tính day, month, year</p>
                <pre><code class="language-javascript language-markup">
                    setDay(day) {
                        this.day  = day;
                    }
                    setMonth(month) {
                        this.month  = month;
                    }
                    setYear(year) {
                        this.year  = year;
                    }
                </code></pre>
                <p><b>Bước 4:</b> Sử dụng lớp vừa tạo. Tạo đối tượng date với ngày:2, tháng:2, năm: 2007:</p>
                <pre><code class="language-javascript language-markup">
                    let date = new MyDate(2, 2, 2007);
                </code></pre>
                <p><b>Bước 5:</b> Truy cập phương thức của lớp date như sau:</p>
                <pre><code class="language-javascript language-markup">
                    let day = date.getDay(); // 2
                    let month = date.getMonth(); // 2
                    let year = date.getYear(); // 2007
                </code></pre>
                <p><b>Bước 6:</b> Hiển thị ngày, tháng, năm:</p>
                <pre><code class="language-javascript language-markup">
                    alert(day + "/" + month + "/" + year
                </code></pre>
                <p><b>Bước 7:</b> Chạy chương trình. Quan sát kết quả.</p>
                <p><b>Bước 8:</b> Gọi phương thức để thay đổi ngày, tháng, năm của đối tượng date vừa tạo ra thành ngày mùng 10/10/2019 sau đó hiển thị lại:</p>

                <pre><code class="language-javascript language-markup">
                    date.setDay(10);
                    date.setMonth(10);
                    date.setYear(2019);

                    let newDay = date.getDay(); // 2
                    let newMonth = date.getMonth(); // 2
                    let newYear = date.getYear(); // 2007

                    alert(newDay + "/" + newMonth + "/" + newYear);
                </code></pre>
                <p><b>Bước 9:</b>Cài đặt thêm phương thức setDate() để thiết đặt lại ngày, tháng, năm cho đối tượng MyDate và phương thức toString() để trả về chuỗi ngày tháng năm theo định dạng dd/mm/yyyy.</p>
                <p><b>Bước 10:</b> Gọi 2 phương thức vừa xây dựng.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
