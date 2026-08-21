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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <h4>[Bài tập] Đảo ngược phần tử trong mảng số nguyên sử dụng Stack</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Stack</p>

                <h5>Mô tả</h5>
                <p>Đảo ngược phần tử trong mảng số nguyên sử dụng Stack

                </p>
                <p> Đảo ngược chuỗi sử dụng Stack</p>
                <h5>Hướng dẫn</h5>
                <p> Đảo ngược phần tử trong mảng số nguyên sử dụng Stack</p>
                <p> Ý tưởng giải quyết vấn đề:</p>
                <p> 1. Khởi tạo một Stack rỗng, có kiểu số.</p>
                <p> 2. Với n phần tử của mảng, lần lượt đưa vào Stack thông qua hàm Push: Push a[i] into Stack.</p>
                <p> 3. Lần lượt lấy ra từ Stack n phần tử và đưa vào trở lại mảng ban đầu:</p>
                <p> 4. Kết thúc giải thuật.</p>
                <p> Đảo ngược chuỗi sử dụng Stack</p>
                <p> Ý tưởng xây dựng chương trình:</p>
                <p> 1. Tạo một wStack rỗng.</p>
                <p> 2. Với mỗi từ mWord đọc được từ string, đưa từ đó vào Stack: Push mWord vào wStack.</p>
                <p> 3. Đọc từ wStack cho đến hết, thực hiện:</p>
                <p> • Pop một word từ wStack vào mWord.</p>
                <p> • Nối mWord vào cuối chuỗi mới outp.</p>
                <p> 4. Dừng giải thuật.</p>
                <p> Chú ý: Cần xây dựng phương thức tách word từ string (hoặc có thể sử dụng phương thức slipt() của lớp
                    String hoặc một phương thức tách từ từ chuỗi có sẵn khác)</p>


            </div>
        </div>
    </div>

</body>
</html>
