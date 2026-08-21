<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module2/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 4.Class và object</a>

                <h4>[Bài tập] Xây dựng lớp QuadraticEquation (Phương trình bậc hai)</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập định nghĩa lớp, tạo đối tượng và sử dụng các phương thức của đối tượng.</p>

                <h5>Mô tả</h5>
                <p>(Phương trình bậc 2) Thiết kế một lớp tên là QuadraticEquation cho một phương trình bậc hai
                    (quadratic equation) ax2 + bx + x = 0. Lớp này gồm các thành phần:</p>
                <p>• Trường dữ liệu a, b, và c thuộc kiểu private double đại diện cho 3 hệ số.</p>
                <p>• Phương thức khởi tạo với 3 tham số để khởi tạo các giá trị cho a, b và c.</p>
                <p>• Phương thức gettter cho a, b và c.</p>
                <p>• Phương thức getDiscriminant() trả về delta theo công thức delta = b2 - 4ac.</p>
                <p>• Phương thức getRoot1() và getRoot2() trả về 2 nghiệm của phương trình là:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session4/img/img-e1.png"
                     style="width: 71%;">
                <p>Phương thức getRoot1() và getRoot2() thật sự hữu ích khi delta >= 0. Hai phương thức này trả về 0 khi
                    delta < 0.</p>
                <p>• Vẽ sơ đồ UML cho lớp QuadraticEquation và cài đặt lớp.</p>
                <p>• Viết chương trình thực thi như sau:</p>
                <p>o Nhập vào 3 giá trị cho a, b, c và hiển thị kết quả dựa trên việc tính delta. Nếu delta >= 0, hiển
                    thị 2 nghiệm. Nếu delta bằng 0, hiển thị một nghiệm (do 2 nghiệm bằng nhau). Còn lại hiển thị chuỗi
                    “The equation has no roots”</p>
                <p>Chú ý: Sử dụng Math.pow(x, 0.5) để tính căn bậc hai của x.</p>
                <p>Chương trình chạy mẫu có thể tham khảo:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session4/img/img-e12.png"
                     style="width: 50%;">

                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo lớp QuadraticEquation , khai báo các thuộc tính (properties), định nghĩa các
                    phương thức khởi tạo (contructors).</p>
                <p><b>Bước 2:</b>Định nghĩa phương thức gettter cho a, b và c. </p>
                <p><b>Bước 3:</b>Định nghĩa phương thức getDiscriminant() trả về delta theo công thức delta = b2 - 4ac.
                </p>
                <p><b>Bước 4:</b> Viết chương trình thực thi như sau:</p>
                <p>• Nhập vào 3 giá trị cho a, b, c và hiển thị kết quả dựa trên việc tính delta. Nếu delta >= 0, hiển
                    thị 2 nghiệm. Nếu delta bằng 0, hiển thị một nghiệm (do 2 nghiệm bằng nhau). Còn lại hiển thị chuỗi
                    “The equation has no roots”
                </p>


            </div>
        </div>
    </div>

</body>
</html>
