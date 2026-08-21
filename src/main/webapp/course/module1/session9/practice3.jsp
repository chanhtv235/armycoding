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
                <h4>[Thực hành] Tìm giá trị nhỏ nhất của mảng</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo và sử dụng hàm, truyền mảng vào hàm.</p>

                <h5>Mô tả</h5>
                <p>Xây dựng hàm nhận vào một tham số là một mảng cho trước.
                    Hàm thực hiện tìm giá trị nhỏ nhất trong mảng và trả về giá trị đó.
                    Sử dụng hàm vừa xây dựng trên với mảng như sau:</p>
                <pre><code class="language-javascript language-markup">
                    arr1: [3, 5, 1, 8, -3, 7, 8]
                    arr2: [7, 12, 6, 9, 20, 56, 89]
                    arr3: []
                    arr4: [0, 0, 0, 0, 0, 0]
                </code></pre>

                <h5>Hướng dẫn</h5>
                <p>Bước 1: Xây dựng hàm</p>
                <p>Các bước thực thi trong hàm:</p>
                <p>• Giả sử phần tử đầu tiên trong mảng là giá trị nhỏ nhất. Gán giá trị của phần tử này cho biến
                    min.</p>
                <p>• Duyệt mảng từ phần tử tiếp theo. Kiểm tra nếu giá trị của phần tử tiếp theo trong mảng nhỏ hơn min
                    thì gán min = arr[i] (với i ở vị trí của phần tử tiếp theo)</p>
                <p>• Kết thúc duyệt mảng, tìm được giá trị min trong mảng. Hàm trả về giá trị min đó.</p>
                <p>Code mẫu như sau:</p>
                <pre><code class="language-javascript language-markup">
                     function minArray(arr) {
                        let min = arr[0];
                        for(var i = 1; i < arr.length; i++){
                            if(arr[i] < min){
                                min = arr[i];
                            }
                        }
                        return min;
                     }
                </code></pre>

                <p>Bước 2: Sử dụng hàm</p>
                <pre><code class="language-javascript language-markup">
                    let arr1 = [3, 5, 1, 8, -3, 7, 8];
                    let min = minArray(arr1);
                    alert(min);
                </code></pre>
                <p>Bước 3: Chạy chương trình. Quan sát kết quả.</p>
                <p>Bước 4: Tương tự với mảng được khởi tạo các phần tử mặc định</p>
                <pre><code class="language-javascript language-markup">
                    arr2: [7, 12, 6, 9, 20, 56, 89]
                    arr3: []
                    arr4: [0, 0, 0, 0, 0, 0]
                </code></pre>

                <p>Bước 5: Với mảng không có phần tử nào sửa lại hàm minArray để kiểm tra số phần tử trong mảng.</p>
                <p>Nếu độ dài mảng bằng 0. Thì trả về -1.</p>
                <pre><code class="language-javascript language-markup">
                    function minArray(arr) {
                        if(arr.length == 0){
                            return -1;
                        }
                        let min = arr[0];
                        for(let i = 1; i < arr.length; i++){
                            if(arr[i] < min){
                                min = arr[i];
                            }
                        }
                        return min;
                    }

                </code></pre>

                <p>Vậy khi hàm trả về giá trị -1 ta hiểu rằng mảng này đang rỗng.</p>
                <p>Mở rộng: Tuy nhiên có trường hợp xảy ra là nếu trong mảng có phần tử -1 là phần tử nhỏ nhất thì sẽ xử
                    lý thế nào?</p>
                <p>Gợi ý: Cần xây dựng lại hàm trên. Không phải trả về giá trị min trong mảng, mà trả về vị trí của phần
                    tử trong mảng. Do đó, nếu hàm trả về -1 tức là mảng rỗng.</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
