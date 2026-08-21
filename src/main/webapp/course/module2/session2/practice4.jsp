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
                <h4>[Thực hành] Thiết kế menu cho ứng dụng </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp while.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép người dùng hiển thị một menu các hình mà ứng dụng có thể vẽ, kèm theo số thứ tự, người dùng lựa chọn bằng cách nhập và số thứ tự trên menu và ứng dụng sẽ vẽ hình tương ứng.</p>

                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1: </b> Tạo mới dự án</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p41.png"
                     style="width: 71%;">
                <p>Đặt tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p42.png"
                     style="width: 71%;">
                <p>Cấu trúc dự án sau khi tạo mới như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p43.png"
                     style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp Geometry</p>
                <p>Sau khi tạo lớp Geometry, cấu trúc dự án như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p44.png"
                     style="width: 50%;">

                <p>Khai báo biến choice lưu giá trị chọn lựa</p>

                <pre><code class="language-java">
                        int choice = -1;
                </code></pre>
                <p>Tạo đối tượng input thuộc lớp Scanner để nhập liệu</p>
                <pre><code class="language-java">
                        Scanner input = new Scanner(System.in);
                </code></pre>
                <p>Chúng ta sẽ cần hiển thị thông tin menu như minh hoạ sau:</p>
                <pre>
                    Menu:
                        1. Draw the triangle
                        2. Draw the square
                        3. Draw the rectangle
                        0. Exit
                        Enter your choice:

                </pre>

                <p>Mã nguồn:</p>
                <pre><code class="language-java">
                    System.out.println("Menu");
                    System.out.println("1. Draw the triangle");
                    System.out.println("2. Draw the square");
                    System.out.println("3. Draw the rectangle");
                    System.out.println("0. Exit");
                    System.out.println("Enter your choice: ");
                    choice = input.nextInt();

                </code></pre>
                <p>Sử dụng cấu trúc switch…case để cho phép người dùng xử lý các tình huống lựa chọn</p>
                <p> (Ngoài ra bạn có thể sử dụng cấu trúc if..else)</p>

                <pre><code class="language-java">
                        switch (choice) {
                            case 1:
                                System.out.println("Draw the triangle");
                                System.out.println("******");
                                System.out.println("*****");
                                System.out.println("****");
                                System.out.println("***");
                                System.out.println("**");
                                System.out.println("*");
                                break;
                            case 2:
                                System.out.println("Draw the square");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                break;
                            case 3:
                                System.out.println("Draw the rectangle");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                System.out.println("* * * * * *");
                                break;
                            case 0:
                                System.exit(0);
                            default:
                                System.out.println("No choice!");
                        }

                </code></pre>

                <p>Để menu lựa chọn lặp lại cho người dùng nhập. Đặt toàn bộ đoạn hiển thị menu và xử lý tình huống lựa chọn vào vòng lặp while.

                </p>
                <p>  Điều kiện để vòng lặp while lúc này thực thi được là choice != 0</p>
                <pre><code class="language-java">
                        while(choice != 0) {
                            System.out.println("Menu");
                            System.out.println("1. Draw the triangle");
                            System.out.println("2. Draw the square");
                            System.out.println("3. Draw the rectangle");
                            System.out.println("0. Exit");
                            System.out.println("Enter your choice: ");
                            choice = input.nextInt();
                            switch (choice) {
                                case 1:
                                    System.out.println("Draw the triangle");
                                    System.out.println("******");
                                    System.out.println("*****");
                                    System.out.println("****");
                                    System.out.println("***");
                                    System.out.println("**");
                                    System.out.println("*");
                                    break;
                                case 2:
                                    System.out.println("Draw the square");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    break;
                                case 3:
                                    System.out.println("Draw the rectangle");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    System.out.println("* * * * * *");
                                    break;
                                case 0:
                                    System.exit(0);
                                default:
                                    System.out.println("No choice!");
                            }
                        }
                </code></pre>

                <p>Đoạn code hoàn chỉnh của hàm main lúc này sẽ là:</p>
                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class Geometry {

                            public static void main(String[] args) {
                                int choice = -1;
                                Scanner input = new Scanner(System.in);
                                while(choice != 0) {
                                    System.out.println("Menu");
                                    System.out.println("1. Draw the triangle");
                                    System.out.println("2. Draw the square");
                                    System.out.println("3. Draw the rectangle");
                                    System.out.println("0. Exit");
                                    System.out.println("Enter your choice: ");
                                    choice = input.nextInt();
                                    switch (choice) {
                                        case 1:
                                            System.out.println("Draw the triangle");
                                            System.out.println("******");
                                            System.out.println("*****");
                                            System.out.println("****");
                                            System.out.println("***");
                                            System.out.println("**");
                                            System.out.println("*");
                                            break;
                                        case 2:
                                            System.out.println("Draw the square");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            break;
                                        case 3:
                                            System.out.println("Draw the rectangle");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            System.out.println("* * * * * *");
                                            break;
                                        case 0:
                                            System.exit(0);
                                        default:
                                            System.out.println("No choice!");
                                    }
                                }
                            }
                        }
                </code></pre>
                <p> Bước 3: Thực thi và chạy chương trình. Quan sát kết quả trả về với giá trị người dùng nhập vào là 1, 2, 3, 4, 0.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p45.png"
                     style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
