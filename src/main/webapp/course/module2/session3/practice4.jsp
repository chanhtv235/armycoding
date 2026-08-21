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
                <a href="/course/module2/session3/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning"> 2.Mảng và phương thức</a>
                <h4>[Thực hành] Tìm giá trị nhỏ nhất trong mảng sử dụng phương thức</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng phương thức.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một chương trình cho phép tìm kiếm giá trị nhỏ nhất trong một mảng cho trước.</p>
                <p>Bài tập này yêu cầu sử dụng một phương thức để giải quyết vấn đề. Phương thức được yêu cầu sẽ cần dữ liệu là một mảng các số, đầu ra của phương thức là một số trong mảng đó. Có thể sử dụng nguyên mẫu của phương thức như sau:</p>
                <p>public static int minValue(int []);</p>
                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1:</b> Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p41.png" style="width: 71%;">
                <p>Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p42.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p43.png" style="width: 40%;">

                <p><b>Bước 2:</b> Tạo lớp NumberArray</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p44.png" style="width: 40%;">

                <p>Cài đặt nguyên mẫu phương thức</p>
                <pre><code class="language-javascript language-markup">
                    public static int minValue(int[] array){
                        return -1;
                    }
                </code></pre>
                <p>Tạo phương thức main() để thực thi chương trình</p>
                <pre><code class="language-javascript language-markup">
                    public static void main(String[] args) {
                        int []arr = {4, 12, 7, 8, 1, 6, 9};
                        int index = minValue(arr);
                        System.out.println("The smallest element in the array is: " + arr[index]);
                    }


                </code></pre>
                <p>Thực thi chương trình và quan sát kết quả, xác định vấn đề và đoán phương án, sau đó thực hiện bước tiếp theo.</p>
                <p>Triển khai phương thức minValue:</p>
                <p>Sử dụng phép lặp để duyệt mảng và trả về index của phần tử có giá trị nhỏ nhất trong mảng ta có đoạn code như sau:</p>
                <pre><code class="language-java">
                   public static int minValue(int[] array){
                        int index = 0;
                        for (int i = 1;i < array.length;i++){
                            if(array[i]< array[index]){
                                index = i;
                            }
                        }
                        return index;
                    }

                </code></pre>

                <p>Đoạn code đầy đủ của bài sẽ như sau:</p>
                <pre><code class="language-java language-markup">

                    public class NumberArray {

                        public static void main(String[] args) {
                            int[] arr = {4, 12, 7, 8, 1, 6, 9};
                            int index = minValue(arr);
                            System.out.println("The smallest element in the array is: " + arr[index]);
                        }

                        public static int minValue(int[] array) {
                            int index = 0;
                            for (int i = 1; i < array.length; i++) {
                                if (array[i] < array[index]) {
                                    index = i;
                                }
                            }
                            return index;
                        }
                    }

                </code></pre>

                <p><b>Bước 3:</b>Thực thi chương trình và quan sát kết quả.</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p45.png" style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
