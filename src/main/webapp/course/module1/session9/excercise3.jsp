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

            <h4>[Bài tập] Luyện tập tạo và sử dụng hàm 01</h4>

            <h5>Mục tiêu</h5>
            <p>Luyện tập tạo hàm không tham số, có tham số, mảng với hàm.</p>

            <h5>Mô tả</h5>
            <p><b>Bài 1:</b> Tạo hàm alertMessage() hiển thị hộp thoại chứa chuỗi  "Xin chao". Gọi hàm từ trong phần <body> của trang web.</p>
            <p><b>Bài 2:</b>Tạo hàm nhận vào một đối số dạng số, tăng giá trị đối số đó lên 1 và trả lại giá trị cho lời gọi hàm. Gọi hàm từ trong phần <body> của trang web và hiển thị kết quả lên màn hình.</p>
            <p><b>Bài 3:</b>Tạo hàm nhận vào hai tham số. Nếu giá trị của tham số thứ nhất lớn hơn tham số thứ hai, hiển thị hộp thoại thông báo cho người dùng. Nếu giá trị của tham số thứ nhất nhỏ hơn hoặc bằng tham số thứ hai, trả về tổng của hai tham số.</p>
            <p><b>Bài 4:</b> Thêm các hàm alert() vào những vị trí thích hợp trong đoạn mã sau để bạn có thể nhìn thấy giá trị của biến result trước và sau lời gọi hàm. Đoạn mã có dạng như sau:</p>
            <pre><code class="language-javascript language-markup">
                   function addNumbers() {
                        firstNum = 4;
                        secondNum = 8;
                        result = firstNum + secondNum;
                        return result;
                    }
                    result = 0;
                    result = addNumbers();
            </code></pre>

            <p><b>Bài 5:</b>Tạo một mảng với bảy phần tử dạng chuỗi có giá trị là tên các ngôi sao sau: Polaris, Aldebaran, Deneb, Vega, Altair, Dubhe và Regulus.</p>
            <p>   Tạo một mảng khác với bảy phần tử dạng chuỗi có giá trị là tên các chòm sao tương ứng chứa các ngôi sao: Ursa Minor, Tarurus, Cygnus, Lyra, Aquila, Ursa Major và Leo. </p>
            <p>   Tiếp theo, tạo một hàm nhận vào một tham số dạng chuỗi duy nhất.</p>
            <p>  Trong hàm này, duyệt qua mảng thứ nhất để tìm tên ngôi sao.</p>
            <p>   Nếu tìm thấy, trả lại giá trị tương ứng với chỉ số đó ở mảng thứ hai.</p>
            <p>   Nói cách khác, trả lại tên chòm sao của ngôi sao đó. </p>
            <p>  Trong phần &lt;body&gt; của trang web, dùng hộp thoại prompt để người dùng nhập vào tên của ngôi sao, sau đó gọi hàm với thông tin đầu vào. </p>
            <p>   Đừng quên xử lý trong trường hợp không tìm thấy ngôi sao nào. Cho kết quả hiển thị trên màn hình.</p>



        </div>
    </div>
</div>
</body>
</html>
