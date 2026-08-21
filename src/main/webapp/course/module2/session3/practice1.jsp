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
                <h4>[Thực hành] Đảo ngược các phần tử của mảng </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thực hiện các thao tác cơ bản với mảng.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ xây dựng một ứng dụng cho phép đảo ngược thứ tự của các phần tử trong mảng.</p>
                <p>Ứng dụng cho phép nhập vào lần lượt các phần tử của một mảng (tối đa là 20 phần tử) và sau đó đảo ngược
                thứ tự của các phần tử.</p>
                <p>Để đảo ngược thứ tự phần tử trong mảng chúng ta sẽ hoán đổi giá trị của tất cả các phần tử đối xứng nhau
                trong mảng.</p>

                <h5>Hướng dẫn</h5>
                <p> <b>Bước 1:</b> Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p11.png" style="width: 71%;">
                <p>Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p12.png" style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p13.png" style="width: 40%;">

                <p><b>Bước 2:</b> Tạo lớp ReverseArray</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p14.png" style="width: 40%;">

                <p>Khai báo các biến, nhập và kiểm tra kích thước mảng</p>
                <pre><code class="language-javascript language-markup">
                    int size;
                    int[] array;
                    Scanner scanner = new Scanner(System.in);
                    do {
                        System.out.print("Enter a size:");
                        size = scanner.nextInt();
                        if (size > 20)
                            System.out.println("Size does not exceed 20");
                    } while (size > 20);
                </code></pre>
                <p>Nhập giá trị cho các phần tử của mảng</p>
                <pre><code class="language-javascript language-markup">
                    array = new int[size];
                    int i = 0;
                    while (i < array.length) {
                        System.out.print("Enter element " + (i + 1) + ": ");
                        array[i] = scanner.nextInt();
                        i++;
                    }
                </code></pre>
                <p>In ra mảng đã nhập</p>
                <pre><code class="language-javascript language-markup">
                    System.out.printf("%-20s%s", "Elements in array: ", "");
                    for (int j = 0; j < array.length; j++) {
                        System.out.print(array[j] + "\t");
                    }
                </code></pre>
                <p>Thực thi chương trình để đảm bảo mã nguồn hoạt động tốt.</p>
                <p> Tiếp theo, đảo ngược thứ tự các phần tử trong mảng</p>
                <p> Sử dụng biến trung gian để hoán đổi giá trị giữa 2 phần tử.</p>

                <pre><code class="language-javascript language-markup">
                    for (int j = 0; j < array.length / 2; j++) {
                        int temp = array[j];
                        array[j] = array[size - 1 - j];
                        array[size - 1 - j] = temp;
                    }
                </code></pre>
                <p>In ra mảng sau khi đã đảo ngược thứ tự các phần tử</p>
                <pre><code class="language-javascript language-markup">
                    System.out.printf("\n%-20s%s", "Reverse array: ", "");
                    for (int j = 0; j < array.length; j++) {
                        System.out.print(array[j] + "\t");
                    }
                </code></pre>

                <p>Mã nguồn đầy đủ của hàm main() sẽ như sau:</p>
                <pre><code class="language-javascript language-markup">
                        import java.util.Scanner;

                        public class ReverseArray {

                            public static void main(String[] args) {
                                int size;
                                int[] array;
                                Scanner scanner = new Scanner(System.in);
                                do {
                                    System.out.print("Enter a size:");
                                    size = scanner.nextInt();
                                    if (size > 20)
                                        System.out.println("Size does not exceed 20");
                                } while (size > 20);
                                array = new int[size];
                                int i = 0;
                                while (i < array.length) {
                                    System.out.print("Enter element " + (i + 1) + ": ");
                                    array[i] = scanner.nextInt();
                                    i++;
                                }
                                System.out.printf("%-20s%s", "Elements in array: ", "");
                                for (int j = 0; j < array.length; j++) {
                                    System.out.print(array[j] + "\t");
                                }
                                for (int j = 0; j < array.length / 2; j++) {
                                    int temp = array[j];
                                    array[j] = array[size - 1 - j];
                                    array[size - 1 - j] = temp;
                                }
                                System.out.printf("\n%-20s%s", "Reverse array: ", "");
                                for (int j = 0; j < array.length; j++) {
                                    System.out.print(array[j] + "\t");
                                }
                            }
                        }
                </code></pre>

                <p><b>Bước 3:</b>Kết quả hiển thị trong cửa sổ output như sau:</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p15.png" style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
