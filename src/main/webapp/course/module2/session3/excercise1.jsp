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
        <div>
            <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>

            <h4>[Bài tập] Xoá phần tử khỏi mảng</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập sử dụng mảng và cấu trúc lặp.</p>

            <h5>Mô tả</h5>
            <p>Trong phần này, chúng ta sẽ phát triển một chương trình thực hiện xoá một phần tử được nhập vào từ bàn phím ra khỏi mảng, nếu phần tử đó xuất hiện trong mảng.</p>
            <p>Vậy để thực hiện được việc xoá, trước tiên cần tìm xem phần tử đó có xuất hiện trong mảng hay không. Nếu xuất hiện cần chỉ ra vị trí của phần tử đó.</p>
            <p>Việc xoá một phần tử trong mảng chính là thực hiện ghi đè phần tử đằng sau nó lên chính phần tử cần xoá.</p>
            <p>Quan sát trong bảng sau:</p>
            <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-e1.png" style="width: 50%;">
            <p> Dòng value: hiển thị các giá trị trong mảng cho trước. 7 là phần tử cần xoá. Sau khi 7 xoá khỏi mảng thì có mảng với giá trị mới ở dòng new value.</p>
            <h5>Hướng dẫn</h5>
            </p>
            <p><b>Bước 1:</b> Khai báo và khởi tạo mảng số nguyên gồm N phần tử cho trước.</p>
            <p><b>Bước 2:</b>Nhập X là phần tử cần xoá</p>
            <p><b>Bước 3:</b>Tìm X xem có xuất hiện trong mảng không. Nếu xuất hiện chỉ ra vị trí của X. Giả sử vị trí này là: index_del</p>
            <p><b>Bước 4:</b>Thực hiện xoá phần tử X khỏi mảng</p>
            <p>Duyệt mảng từ vị trí cần xoá (index_del) đến cuối mảng (array.length-1)</p>
            <p>-       Gán phần tử ở vị trí index cho phần tử ở vị trí index + 1</p>
            <p><b>Bước 5:</b> Kết thúc duyệt mảng. In ra mảng.</p>

        </div>
    </div>
</div>
</body>
</html>
