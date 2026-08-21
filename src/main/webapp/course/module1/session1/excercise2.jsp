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
            <h4>[Bài tập] Mô tả thuật toán chuyển đổi tiền tệ</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng pseudo-code và flowchart để mô tả các giải thuật đơn giản.</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ mô tả thuật toán để chuyển đổi tiền tệ, từ Đô la Mỹ sang Việt Nam Đồng.
                Bắt đầu, chúng ta nhập số tiền Đô la Mỹ và sau đó tính ra số tiền Việt Nam Đồng tương ứng.
                Công thức chuyển đổi:
            </p>
            <p>1 USD = 23000 VNĐ</p>
            <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành này lên
                github
            <h5>Hướng dẫn thực hiện</h5>
            <p>Các bước để chuyển đổi tiền tệ là:</p>
            <pre>
                1.	Nhập số tiền Đô la Mỹ
                2.	Tính số tiền Việt Nam Đồng bằng cách nhân số tiền Đô la Mỹ với tỉ giá
                3.	Hiển thị số tiền Việt Nam Đồng.</pre>
            <p>Hãy viết Pseudo-code và vẽ Flowchart dựa trên 3 bước ở trên.</p>
        </div>
    </div>
</div>
</body>
</html>
