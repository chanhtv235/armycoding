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
            <h4>[Bài tập] Mô tả thuật toán tính điểm trung bình</h4>
            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng pseudo-code và Flowchart để mô tả giải thuật</p>
            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ luyện tập việc sử dụng Pseudo-code và Flowchart để mô tả thuật toán tính điểm
                trung bình của 3 môn học: Toán, Lí, Hoá. Công thức:</p>
            <p>Average = (Math + Physics + Chemistry) / 3</p>
            <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành này lên
                github
            <h5>Hướng dẫn thực hiện</h5>
            <p>Các bước để thực hiện thuật toán tính điểm trung bình là:</p>
            <pre>
            1.	Nhập điểm Toán
            2.	Nhập điểm Lý
            3.	Nhập điểm Hoá
            4.	Tính điểm trung bình
            5.	Hiển thị điểm trung bình</pre>
            <p>Hãy viết Pseudo-code và vẽ Flowchart dựa trên 5 bước ở trên.</p>
        </div>
    </div>
</div>
</body>
</html>
