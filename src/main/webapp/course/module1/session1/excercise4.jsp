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
            <h4>[Bài tập] Mô tả thuật toán tìm giá trị lớn nhất trong một dãy số</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng pseudo-code và Flowchart để mô tả các giải thuật có cấu trúc lặp.</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ mô tả một thuật toán để tìm được giá trị lớn nhất trong một dãy số.</p>
            <p>Ban đầu, chúng ta cho phép nhập vào các giá trị a1, a2, a3...ai.. với i < n.
            <p>Trong đó n là số lượng các số trong dãy. Sau đó, chúng ta thực hiện việc so sánh để tìm ra giá trị lớn nhất và hiển thị giá trị đó.</p></p>
            <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành này lên
                github
            <h5>Hướng dẫn thực hiện</h5>
            <pre>
                - 1.Nhập vào N là số lượng giá trị trong dãy số
                - 2.Lần lượt nhập vào N giá trị liên tiếp: a1, a2, a3... an
                - 3.Ban đầu giả sử a1 là số lớn nhất (được lưu trong giá trị max);
                - 4.Sau đó lần lượt xét các ai còn lại, nếu ai nào lớn hơn giá trị max thi lúc đó max sẽ nhận giá trị là ai.
                - 5.Sau khi đã xét hết các ai thì max chính là giá trị lớn nhất cần tìm.</pre>
            <p>Hãy viết Pseudo-code và vẽ Flowchart dựa trên các  bước ở trên.</p>
        </div>
    </div>
</div>
</body>
</html>
