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
               <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">6. Cấu trúc điều kiện</a>
                <h4>[Thực hành] Kiểm tra năm nhuận</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc điều kiện if.</p>
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng nhằm kiểm tra xem một năm có phải là năm nhuận hay không.</p>
                <p>Ứng dụng cho phép người dùng nhập vào một năm, sau đó sẽ đưa ra thông báo là năm đó là năm nhuận hay không phải là năm nhuận.</p>
                <p>Năm nhuận là một năm đặc biệt, được cộng thêm một ngày để giữ cho lịch được đồng bộ với lịch thiên văn.</p>
                <p>Cách xác định năm nhuận: Những năm chia hết cho 4 là năm nhuận, ngoại trừ những năm chia hết cho 100 mà không chia hết cho 400.</p>
                <p>Từ đó, có thể rút gọn thành các quy tắc xác định năm nhuận:</p>
                <p>•	Những năm chia hết cho 4 mà không chia hết cho 100 là năm nhuận</p>
                <p>•	Những năm chia hết cho 100 mà không chia hết cho 400 thì KHÔNG PHẢI là năm nhuận</p>
                <p>•	Những năm chia hết đồng thời cho 100 và 400 là năm nhuận</p>

                <h5>Hướng dẫn thực hiện</h5>
                <h6>Bước 1: Tạo dự án mới với file index.html và khối lệnh JavaScript</h6>
                <h6>Bước 2: Nhập dữ liệu từ bàn phím</h6>
                <pre><code class="language-javascript language-markup">
                      let year = parseInt(prompt("Enter a year"));
                </code></pre>
                <h6>Bước 3: Phân loại và hiển thị kết quả</h6>
                <pre><code class="language-javascript language-markup">
                    if (year % 4 == 0) {
                      if (year % 100 == 0) {
                        if (year % 400 == 0) {
                          alert(year + " is a leap year");
                        } else {
                          alert(year + " is NOT a leap year");
                        }
                      } else {
                        alert(year + " is a leap year");
                      }
                    } else {
                      alert(year + " is NOT a leap year");
                    }
                </code></pre>
                <h6>Bước 4: Chạy và quan sát kết quả.</h6>
                <p>Nhập vào các năm sau để kiểm tra:</p>
                    <p> •	12: năm nhuận</p>
                    <p>•	13: năm không nhuận</p>
                    <p>•	1000: năm không nhuận</p>
                    <p>•	2000: năm nhuận</p>
                <p><b>Lưu ý:</b> Với các điều kiện như trên, chúng ta có thể chỉnh sửa để mã nguồn tốt hơn như sau:</p>

                <pre><code class="language-javascript language-markup">
                    let year = parseInt(prompt("Enter a year"));
                    let isLeapYear = false;
                    if (year % 4 == 0) {
                      if (year % 100 == 0) {
                        if (year % 400 == 0) {
                          isLeapYear = true;
                        }
                      } else {
                        isLeapYear = true;
                      }
                    }
                    if (isLeapYear) {
                      alert(year + " is a leap year");
                    } else {
                      alert(year + " is NOT a leap year");
                    }
                </code></pre>
                <p>Đảm bảo clean code</p>
                <p>Trong đoạn mã trên, các điều kiện bên trong các câu lệnh if sẽ là khó hiểu, bởi vì bản thân các biểu thức không trực tiếp nói rõ ý nghĩa của nó. Chúng ta có thể sử dụng kỹ thuật tách biến để các câu lệnh này dễ hiểu hơn.</p>
                <b>Ví dụ:</b>
                <pre><code class="language-javascript language-markup">
                    let isLeapYear = false;
                    let isDivisibleBy4 = year % 4 == 0;
                    if (isDivisibleBy4) {
                      let isDivisibleBy100 = year % 100 == 0;
                      if (isDivisibleBy100) {
                        let isDivisibleBy400 = year % 400 == 0;
                        if (isDivisibleBy400) {
                          isLeapYear = true;
                        }
                      } else {
                        isLeapYear = true;
                      }
                    }
                    if (isLeapYear) {
                      alert(year + " is a leap year");
                    } else {
                      alert(year + " is NOT a leap year");
                    }
                </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
