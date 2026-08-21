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
            <a href="${pageContext.request.contextPath}/course/module1/session9/detail.jsp" style="border:1px solid #7952B3"
               class="mb-2 btn btn-sm btn-outline-warning"> 9. Hàm trong javascript</a>

            <h4>[Bài tập] Luyện tập tạo và sử dụng hàm 02</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo và gọi hàm.</p>

            <h5>Mô tả</h5>
            <p>Xây dựng hàm:</p>
            <p><b>Bài 1:</b> Viết hàm tính bình phương của một số bất kỳ được đưa vào. Gọi hàm vừa xây dựng được.</p>
            <p><b>Bài 2:</b> Viết hàm tính diện tích, hàm tính chu vi hình tròn. Gọi hàm vừa xây dựng được</p>
            <p><b>Bài 3:</b> Viết hàm tính giai thừa của một số nguyên bất kỳ được đưa vào. Gọi hàm vừa xây dựng được.</p>
            <p><b>Bài 4:</b> Viết hàm kiểm tra xem ký tự nhập vào có phải là ký tự số không.</p>
                <p> Nếu là ký tự số hàm trả về true, ngược lại trả về false.</p>
            <p><b>Bài 5:</b> Viết hàm nhận vào 3 số nguyên bất kỳ, trả về số nguyên có giá trị nhỏ nhất.</p>
            <p><b>Bài 6:</b> Viết hàm nhận vào một số, kiểm tra xem nếu số đưa vào có phải là nguyên dương không.
            Nếu là nguyên dương trả về true, ngược lại trả về false.</p>
            <p><b>Bài 7:</b> Viết hàm truyền vào 2 số nguyên bất kì, thực hiện đổi chỗ hai số nguyên đó.</p>
            <p><b>Bài 8:</b> Viết hàm truyền vào mảng số nguyên bất kỳ, sau đó đảo ngược mảng số nguyên đó.</p>
            <p><b>Bài 9:</b> Viết hàm truyền vào một mảng ký tự, và một ký tự bất kỳ, kiểm tra xem ký tự bất kỳ đó có nằm trong
            mảng không.</p>
            <p>Nếu có trả về số lần xuất hiện của ký tự đó, nếu không trả về -1.</p>

        </div>
    </div>
</div>
</body>
</html>
