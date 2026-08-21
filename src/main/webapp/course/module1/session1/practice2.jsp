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
                <a href="${pageContext.request.contextPath}/course?module=1&session=1&fileName=detail" style="border:1px solid #7952B3" class="mb-2 btn btn-sm btn-outline-warning">1. Mã giả và lưu đồ</a>
                <h4>[Thực hành] Thuật toán game đoán số</h4>
                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng pseudo-code và Flowchart để mô tả giải thuật có sử dụng cấu trúc điều kiện..</p>
                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ luyện tập việc sử dụng Pseudo-code và Flowchart để mô tả thuật toán game
                    đoán số đơn giản. Các bước hoạt động của game này như sau:</p>
                <pre>
             1.	Máy tính sẽ chọn ra một số ngẫu nhiên trong khoảng từ 0 đến 9
             2.	Người dùng sẽ đoán xem máy tính đã chọn số nào bằng cách nhập vào hộp thoại
             3.	Máy tính sẽ trả lời là đúng hay không.</pre>
                <p>Hãy sử dụng bút và giấy để viết các giải thuật, sau đó chụp ảnh màn hình và nộp lên bài thực hành lên
                    github.</p>
                <h5>Hướng dẫn thực hiện</h5>
                <p>Pseudo-code</p>
                <code>
            <pre>
                 Begin
                    N là số được sinh số ngẫu nhiên trong khoảng 0-9
                    Nhập vào M
                    IF (N==M)
                        Display "Dự đoán đúng"
                    ELSE
                        Display "Dự đoán sai"
                End
            </pre>

                </code>
                <img style="width: 50%" src="${pageContext.request.contextPath}/course/module1/session1/img/img2.png">
            </div>

        </div>
    </div>
</div>
</body>
</html>
