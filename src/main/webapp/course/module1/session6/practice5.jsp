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
                <a href="${pageContext.request.contextPath}/course/module1/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6. Cấu trúc điều kiện</a>
                <h4>[Thực hành] Luyện tập với toán tử ba ngôi</h4>

                <h5>Mục tiêu</h5>

                <p>Luyện tập sử dụng cấu trúc điều kiện với toán tử ? :</p>

                <h5>Mô tả</h5>

                <h6>Bài 1: Viết chương trình nhập vào giá trị cho a và b. Tính tổng a và b, nếu tổng nhỏ hơn 4, hiển thị chuỗi Below, ngược lại hiển thị Over. Lưu ý sử dụng toán tử ? :</h6>
                <pre><code class="language-javascript language-markup">
                    if ((a + b) < 4) {
                        result = 'Below';
                    } else {
                        result = 'Over';
                    }
                </code></pre>
                <p>Hướng dẫn</p>
                <p>Bước 1: Tạo file add.html</p>
                <p>Bước 2: Thêm thẻ &lt;script&gt; thực hiện viết các mã JavaScript</p>
                <p>Bước 3: Khai báo biến a, b nhập vào giá trị cho a, b từ hộp thoại</p>
                <pre><code class="language-javascript language-markup">
                    let a = prompt("a: ");
                    let b = prompt("b: ");
                </code></pre>
                <p>Bước 4: Khai báo biến result lưu kết quả</p>
                <pre><code class="language-javascript language-markup">
                    result = (a + b < 4) ? 'Below' : 'Over';
                </code></pre>
                <p>Bước 5: Thực thi chương trình. Quan sát kết quả.</p>

                <h6>Bài 2: Viết chương trình nhập vào giá trị cho chuỗi message. </h6>
                <p>•	Nếu giá trị nhập vào là Employee thì hiển thị chuỗi Hello.</p>
                <p>•	Còn lại nếu giá trị nhập vào là Director thì hiển thị chuỗi Greetings</p>
                <p>•	Còn lại nếu giá trị nhập vào chuỗi rỗng thì hiển thị No login</p>
                <p>•	Còn lại hiển thị chuỗi rỗng</p>
                <p> Sử dụng toán tử ? : để viết chương trình với cấu trúc điều kiện như sau:</p>
                <pre><code class="language-javascript language-markup">
                        let message;
                        if (login == 'Employee') {
                            message = 'Hello';
                        } else if (login == 'Director') {
                            message = 'Greetings';
                        } else if (login == '') {
                            message = 'No login';
                        } else {
                            message = '';
                        }
                </code></pre>

                <p>Hướng dẫn</p>
                <p>Bước 1: Tạo file employee.html</p>
                <p>Bước 2: Thêm thẻ &lt;script&gt; thực hiện viết các mã JavaScript</p>
                <p>Bước 3: Khai báo biến message</p>
                <pre><code class="language-javascript language-markup">
                    let message = (login == 'Employee') ?
                                'Hello' :
                                (login == 'Director') ?
                                  'Greetings' :
                                  (login == '') ?
                                    'No login' :
                                    '';
                </code></pre>
                <p>Bước 4: Hiển thị thông báo</p>
                <pre><code class="language-javascript language-markup">
                   alert(message)
                </code></pre>
                <p>Bước 5: Thực thi chương trình. Quan sát kết quả.</p>


            </div>
        </div>
    </div>
</div>

</body>
</html>
