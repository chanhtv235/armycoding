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

                <h4>[Optional] [Bài tập] Tổ chức dữ liệu hợp lý - Demerging sử dụng Queue</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Queue</p>

                <h5>Mô tả</h5>
                <p>Giả sử, với một hệ thống quản lý nhân sự. Các bản ghi được lưu trên file.</p>
                <p>Mỗi bản ghi gồm các trường: Họ tên, giới tính, ngày tháng năm sinh, ...</p>
                <p>Dữ liệu trên đã được sắp theo ngày tháng năm sinh.
                <p>Cần tổ chức lại dữ liệu sao cho nữ được liệt kê trước nam nhưng vẫn giữ được tính đã sắp theo ngày tháng
                năm sinh.</p>


                <h5>Hướng dẫn</h5>
                <pre>
                Cách giải quyết:
                    Ý tưởng không hiệu quả:
                    Sử dụng thuật toán sắp xếp.
                    Độ phức tạp của thuật toán O(n log n) trong trường hợp tốt nhất.
                    Ý tưởng hiệu quả hơn:
                    Sử dụng giải thuật demerging.
                    Độ phức tạp của giải thuật này là O(n).
                    Giải thuật Demerging:
                        1. Tạo 2 queue rỗng, có tên lần lượt là NU và NAM.
                        2. Với mỗi bản ghi p, xem xét:
                        •	Nếu p có giới tính nữ, đưa vào queue NU.
                        •	Nếu p có giới tính nam, đưa vào queue NAM.
                        3. Xét queue NU, khi queue chưa rỗng:
                        •	Lấy từng phần tử trong queue này.
                        •	Ghi vào file output nào đó.
                        4. Xét queue NAM, khi queue chưa rỗng:
                        •	Lấy từng phần tử trong queue này.
                        •	Ghi tiếp vào file output trên.
                        5. Kết thúc giải thuật.
                </pre>
            </div>
        </div>
    </div>

</body>
</html>
