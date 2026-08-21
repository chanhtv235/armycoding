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
        <div>
            <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=detail" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">1. Mã giả và lưu đồ</a>
            <h4>[Bài tập] Mô tả thuật toán tìm giá trị lớn nhất trong 3 số</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng pseudo-code và flowchart để mô tả các giải thuật có chứa cấu trúc điều kiện (cấu trúc
                lựa chọn).</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ mô tả giải thuật để tìm ra giá trị lớn nhất trong 3 số.
                Bắt đầu, chúng ta cho phép nhập 3 giá trị vào. Sau đó, chúng ta thực hiện việc so sách lần lượt từng giá
                trị để tìm ra giá trị lớn nhất.
            </p>
            <p>Average = (Math + Physics + Chemistry) / 3</p>
            <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành này lên
                github
            <h5>Hướng dẫn thực hiện</h5>
            <pre>
            - Giả sử a, b, c là 3 biến được nhập vào.
            - Gọi a là phần tử có giá trị lớn nhất
            - So sánh a với các phần tử còn lại,
              + Nếu a lớn hơn 2 phần tử còn lại thì a là lớn nhất,
              + Nếu a nhỏ hơn 1 trong hai phần tử còn lại, so sánh các phần tử còn lại với nhau để tìm được giá trị lớn nhất</pre>
            <p>Hãy viết Pseudo-code và vẽ Flowchart dựa trên các  bước ở trên.</p>
        </div>
    </div>
</div>
</body>
</html>
