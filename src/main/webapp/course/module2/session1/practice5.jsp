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
                <a href="/course/module2/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">1. Tổng quan về java</a>
                <h4>[Thực hành] Tính số ngày trong tháng </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập cấu trúc rẽ nhánh dựa trên câu lệnh switch..case.</p>

                <h5>Mô tả</h5>
                <p>Viết một chương trình tính số ngày trong tháng của một tháng cho trước. Trong một năm, tháng 2 có thể
                    có 28 hoặc 29 ngày, các tháng 1, 3, 5, 7, 8, 10, 12 có 31 ngày, các tháng còn lại có 30 ngày.</p>
                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="img/img-p51.png" style="width: 70%;">

                <p>Điền tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, và jdk.</p>
                <img src="img/img-p52.png" style="width: 50%;">

                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="img/img-p53.png" style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp DayOfMonth</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="img/img-p54.png" style="width: 70%;">

                <p>Đặt tên class là "DayOfMonth"</p>
                <img src="img/img-p55.png" style="width: 40%;">
                <p>Chương trình cần nhập vào tháng muốn tính ngày:</p>

                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class DayOfMonth {
                            public static void main(String[] args) {
                                Scanner scanner = new Scanner(System.in);

                                System.out.print("Which month that you want to count days? ");
                                int month = scanner.nextInt();
                            }
                        }
                </code></pre>
                <p>Tính số ngày của tháng 2</p>
                <p>Nếu tháng được nhập là tháng 2, việc tính số ngày của tháng sẽ được triển khai rất nhanh:</p>
                <pre><code class="language-java">
                        switch (month) {
                            case 2:
                                System.out.print("The month '2' has 28 or 29 days!");
                                break;
                        }

                </code></pre>
                <p> Tính số ngày của các tháng có 31 ngày:</p>
                <p>Bổ sung trường hợp tháng 1:</p>
                <pre><code class="language-java">
                       switch (month) {
                            case 2:
                                System.out.print("The month '2' has 28 or 29 days!");
                                break;
                            case 1:
                                System.out.print("The month '" + month + "' has 31 days!");
                                break;
                        }
                </code></pre>

                <p>Bổ sung trường hợp tháng 3:</p>
                <pre><code class="language-java">
                        switch (month) {
                            case 2:
                                System.out.print("The month '2' has 28 or 29 days!");
                                break;
                            case 1:
                                System.out.print("The month '" + month + "' has 31 days!");
                                break;
                            case 3:
                                System.out.print("The month '" + month + "' has 31 days!");
                                break;
                        }

                </code></pre>

                <p>Ở đây bắt đầu xuất hiện mã lặp.</p>
                <p>Với cấu trúc switch, nếu sau mỗi case không có từ khoá break, các case sau đó vẫn được xem xét thực
                    thi, điều này giúp ta thực thi cùng một khối lệnh cho nhiều case.</p>
                <p> Bổ sung các case còn lại của trường hợp tháng có 31 ngày:</p>

                <pre><code class="language-java">
                        switch (month) {
                            case 2:
                                System.out.print("The month '2' has 28 or 29 days!");
                                break;
                            case 1:
                            case 3:
                            case 5:
                            case 7:
                            case 8:
                            case 10:
                            case 12:
                                System.out.print("The month '" + month + "' has 31 days!");
                                break;
                        }

                </code></pre>
                <p>Thử chạy chương trình và kiểm tra kết quả, nhập vào các giá trị 2 và 3:</p>
                <img src="img/img-p56.png" style="width: 70%;">
                <p>Tính số ngày của các tháng có 30 ngày</p>

                <p> Tương tự như bước trước:</p>


                <pre><code class="language-java">
                    switch (month) {
                        case 2:
                            System.out.print("The month '2' has 28 or 29 days!");
                            break;
                        case 1:
                        case 3:
                        case 5:
                        case 7:
                        case 8:
                        case 10:
                        case 12:
                            System.out.print("The month '" + month + "' has 31 days!");
                            break;
                        case 4:
                        case 6:
                        case 9:
                        case 11:
                            System.out.print("The month '" + month + "' has 30 days!");
                            break;
                        default:
                            System.out.print("Invalid input!");
                            break
                    }
                </code></pre>
                <p>Thực thi chương trình và kiểm tra kết quả, nhập vào giá trị 9:</p>

                <img src="img/img-p57.png" style="width: 70%;">

                <p>Khử mã lặp</p>

                <p>Chương trình tiếp tục xuất hiện mã lặp, chúng ta cần khử nợ kỹ thuật này trước khi bài toán được coi là hoàn thành.</p>

                <pre><code class="language-java">
                        String daysInMonth;
                        switch (month) {
                            case 2:
                                daysInMonth = "28 or 29";
                                break;
                            case 1:
                            case 3:
                            case 5:
                            case 7:
                            case 8:
                            case 10:
                            case 12:
                                daysInMonth = "31";
                                break;
                            case 4:
                            case 6:
                            case 9:
                            case 11:
                                daysInMonth = "30";
                                break;
                            default:
                                daysInMonth = "";
                        }

                        if (!daysInMonth.equals("")){
                            System.out.printf("The month '%d' has %s days!", month, daysInMonth);
                        }else{
                            System.out.print("Invalid input!");
                        }
                </code></pre>

                <p><b>Bước 3:</b> Chạy chương trình, quan sát cửa sổ output:</p>


            </div>
        </div>
    </div>
</div>


</body>
</html>
