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
                <a href="/course/module2/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2.Vòng lặp trong java</a>
                <h4>[Thực hành] Kiểm tra số nguyên tố</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc lặp while</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép kiểm tra một số xem có phải là số nguyên tố hay không.</p>
                <p>Số nguyên tố là một số nguyên dương chỉ chia hết cho 1 và chính nó.</p>
                <p>Ứng dụng cho phép người dùng nhập vào một số và hiển thị kết quả là số đó là số nguyên tố hoặc không phải là số nguyên tố.</p>
                <p>* Với một số nguyên dương A lớn hơn 1, kiểm tra từ  2 đến căn bậc 2 của A, nếu A chia hết cho một số trong khoảng đó thì A không phải là số nguyên tố, ngược lại A là số nguyên tố.</p>
                <h5>Hướng dẫn</h5>

                <p> Bước 1: Đầu tiên chúng ta sẽ tạo dự án bằng cách chọn File -> New</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p11.png" style="width: 71%;">
                <p1>Ở cửa sổ tiếp theo chúng ta tích chọn create Project from template và chọn Next</p1>

                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p12.png" style="width: 71%;">
                <p>Sau đó chúng ta đặt tên cho dự án và nhấn finish</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p13.png" style="width: 71%;">

                <p>Bước 2: Cấu trúc dự án</p>

                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p14.png" style="width: 71%;">

                <p>Bước 3: Khai báo biến số nguyên number và nhập cho number giá trị từ bàn phím trong hàm main()</p>

                <pre><code class="language-java">
                        Scanner scanner = new Scanner(System.in);
                        System.out.print("Enter a number:");
                        int number = scanner.nextInt();
                </code></pre>

                <p>Đoạn code đầy đủ của hàm main lúc này sẽ như sau:</p>
                <pre><code class="language-java">
                    import java.util.Scanner;

                    public class Main {

                        public static void main(String[] args) {
                            Scanner scanner = new Scanner(System.in);
                            System.out.print("Enter a number:");
                            int number = scanner.nextInt();
                        }
                    }

                </code></pre>

                <p> Bước 4: Kiểm tra số vừa nhập có phải là số nguyên tố</p>
                <p>•	Trường hợp number < 2  chúng ta sẽ hiển thị number không phải là số nguyên tố</p>
                <pre><code class="language-javascript language-markup">
                        if (number < 2){
                            System.out.println(number + " is not a prime");
                        }

                </code></pre>

                <p>•	Trường hợp number >= 2 chúng ta sẽ có đoạn code như sau</p>
                <pre><code class="language-java">
                        else {
                            int i = 2;
                            boolean check = true;
                            while (i < number) {
                                if (number % i == 0) {
                                    check = false;
                                    break;
                                }
                                i++;
                            }
                            if (check)
                                System.out.println(number + " is a prime");
                            else
                                System.out.println(number + " is not a prime");
                        }

                </code></pre>
                <p>Ngoài ra để tối ưu đoạn code trên trong trường hợp number >= 2 hơn chúng ta chỉ cần cho i <= Math.sqrt(number) vì chỉ cần kiểm tra đến căn bậc 2 của một số là đã có thể biết được số đó có phải số nguyên tố hay không ?</p>
                <pre><code class="language-java">
                        else {
                            int i = 2;
                            boolean check = true;
                            while (i <= Math.sqrt(number)) {
                                if (number % i == 0) {
                                    check = false;
                                    break;
                                }
                                i++;
                            }
                            if (check)
                                System.out.println(number + " is a prime");
                            else
                                System.out.println(number + " is not a prime");
                        }

                </code></pre>
                <p>Đoạn code đầy đủ của hàm main() lúc này sẽ như sau:</p>
                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class Main {

                            public static void main(String[] args) {
                                Scanner scanner = new Scanner(System.in);
                                System.out.print("Enter a number:");
                                int number = scanner.nextInt();
                                if (number < 2){
                                    System.out.println(number + " is not a prime");
                                } else {
                                    int i = 2;
                                    boolean check = true;
                                    while (i <= Math.sqrt(number)) {
                                        if (number % i == 0) {
                                            check = false;
                                            break;
                                        }
                                        i++;
                                    }
                                    if (check)
                                        System.out.println(number + " is a prime");
                                    else
                                        System.out.println(number + " is not a prime");
                                }
                            }
                        }

                </code></pre>

                <p> Bước 5: Thực thi chương trình và quan sát kết quả.</p>
                <pre>
                    - Nhập cho number giá trị = 2 chương trình sẽ trả về: 2 is a prime
                    - Nhập cho number giá trị = 4 chương trình sẽ trả về: 4 is not a prime
                    - Nhập cho number giá trị = 1 chương trình sẽ trả  về: 1 is not a prime
                    - Nhập cho number giá trị = 11 chương trình sẽ trả về: 11 is a prime

                </pre>

            </div>
        </div>
    </div>
</div>


</body>
</html>
