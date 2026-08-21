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
                <a href="${pageContext.request.contextPath}/course/module1/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">9. Hàm trong Javascript</a>
                <h4>[Thực hành] Tạo và gọi hàm</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập định nghĩa hàm và gọi hàm.</p>

                <h5>Mô tả</h5>
                <p>Sử dụng hàm confirm để nhận thông tin đầu vào và đưa ra quyết định dựa trên những thông tin đó. </p>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Tạo hàm processConfirm</p>
                <pre><code class="language-javascript language-markup">
                    function processConfirm(answer) {
                        let result = "";
                        if (answer) {
                        result = "Excellent. We'll play a nice game of chess.";
                        } else {
                        result = "Maybe later then.";
                        }
                        return result;
                    }
                </code></pre>
                <p>Hàm này đánh giá giá trị có trong đối số answer.
                Nếu giá trị của biến answer là true đồng nghĩa với việc người dùng chọn OK,
                hàm sẽ tạo biến result và gán giá trị cho biến result là chuỗi "Excellent.
                We'll play a nice game of chess."".
                Nếu giá trị của biến answer là false, đồng nghĩa với việc người dùng chọn Cancel,
                hàm sẽ vẫn tạo biến result nhưng gán giá trị cho biến result là chuỗi "Maybe later then."".
                Bất kể biến answer lưu giá trị gì, hàm processConfirm trả về biến result cho hàm gọi bằng câu lệnh return bên trong hàm.</p>
                <p>Bước 2: Tạo hộp thoại xác nhận, gọi hàm processConfirm() và hiển thị kết quả</p>
                <pre><code class="language-javascript language-markup">
                    let confirmAnswer = confirm("Shall we play a game?");
                    let theAnswer = processConfirm(confirmAnswer);
                    alert(theAnswer);
                </code></pre>
                <p>Hàm confirm() nhận vào một đối số duy nhất, đó là nội dung thông báo để hiện thị trong hộp thoại.
                Chỉ có một lưu ý với hàm confirm() bạn nên đặt nội dung thông báo theo dạng câu hỏi hoặc thông điệp cho phép người dùng lựa chọn.
                Nếu người dùng không đưa vào lựa chọn nào hãy thay thế bằng hàm alert().</p>
                <p>Mã nguồn hoàn chỉnh như sau:</p>
                <pre><code class="language-javascript language-markup">
                    function processConfirm(answer) {
                        let result = "";
                        if (answer) {
                            result = "Excellent. We'll play a nice game of chess.";
                        } else {
                            result = "Maybe later then.";
                        }
                        return result;
                    }
                    let confirmAnswer = confirm("Shall we play a game?");
                    let theAnswer = processConfirm(confirmAnswer);
                    alert(theAnswer);
                </code></pre>
                <p>Bước 3: Chạy chương trình, quan sát kết quả</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
