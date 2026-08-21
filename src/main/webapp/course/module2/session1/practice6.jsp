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
                <h4>[Thực hành] Kiểm tra năm nhuận</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng cấu trúc điều kiện if.</p>

                <h5>Mô tả</h5>

                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng nhằm kiểm tra xem một năm có phải là năm nhuận hay không.</p>
                <p> Ứng dụng cho phép người dùng nhập vào một năm, sau đó sẽ đưa ra thông báo là năm đó là năm nhuận hay không phải là năm nhuận.</p>
                <p>Năm nhuận là một năm đặc biệt, được cộng thêm một ngày để giữ cho lịch được đồng bộ với lịch thiên văn.</p>
                <p>Cách xác định năm nhuận: Những năm chia hết cho 4 là năm nhuận, ngoại trừ những năm chia hết cho 100 mà không chia hết cho 400.</p>
                <p>Từ đó, có thể rút gọn thành các quy tắc xác định năm nhuận:</p>
                <p>•	Những năm chia hết cho 4 mà không chia hết cho 100 là năm nhuận</p>
                <p>•	Những năm chia hết cho 100 mà không chia hết cho 400 thì KHÔNG PHẢI là năm nhuận</p>
                <p>•	Những năm chia hết đồng thời cho 100 và 400 là năm nhuận</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b> Tạo mới dự án</p>
                <p>Để tạo một dự án mới trong IntelliJ, chọn "New Project".</p>
                <img src="img/img-p61.png" style="width: 70%;">

                <p>Điền tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, và jdk.</p>
                <img src="img/img-p62.png" style="width: 50%;">

                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="img/img-p63.png" style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp LeapYearCalculator</p>
                <p>Chuột phải vào "src", chọn "New", chọn "Java Class".</p>
                <img src="img/img-p64.png" style="width: 70%;">

                <p>Đặt tên lớp là "LeapYearCalculator"</p>
                <img src="img/img-p65.png" style="width: 40%;">
                <p>Nhập dữ liệu từ bàn phím</p>

                <pre><code class="language-java">
                        Scanner scanner = new Scanner(System.in);
                        int year;
                        System.out.println("Enter a year: ");
                        year = scanner.nextInt();
                </code></pre>

                <p>Phân loại và hiển thị kết quả</p>
                <pre><code class="language-java">
                        if(year % 4 == 0){
                            if(year % 100 == 0){
                                if(year % 400 == 0){
                                    System.out.printf("%d is a leap year", year);
                                } else {
                                    System.out.printf("%d is NOT a leap year", year);
                                }
                            } else {
                                System.out.printf("%d is a leap year", year);
                            }
                        } else {
                                System.out.printf("%d is NOT a leap year", year);
                        }

                </code></pre>
                <p>Đoạn code hoàn thiện của hàm main sẽ như sau:</p>

                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class LeapYearCalculator {
                            public static void main(String[] args) {
                                Scanner scanner = new Scanner(System.in);
                                int year;
                                System.out.println("Enter a year: ");
                                year = scanner.nextInt();
                                if(year % 4 == 0){
                                    if(year % 100 == 0){
                                        if(year % 400 == 0){
                                            System.out.printf("%d is a leap year", year);
                                        } else {
                                            System.out.printf("%d is NOT a leap year", year);
                                        }
                                    } else {
                                        System.out.printf("%d is a leap year", year);
                                    }
                                } else {
                                    System.out.printf("%d is NOT a leap year", year);
                                }
                            }
                </code></pre>

                <p><b>Bước 3:</b> Chạy và quan sát kết quả.</p>
                Nhập vào các năm sau để kiểm tra:
                •	12: năm nhuận
                •	13: năm không nhuận
                •	1000: năm không nhuận
                •	2000: năm nhuận

                <img src="img/img-p66.png" style="width: 70%;">
                <p>Lưu ý: Với các điều kiện như trên, chúng ta có thể chỉnh sửa để mã nguồn tốt hơn như sau:</p>

                <pre><code class="language-java">
                        boolean isLeapYear = false;

                        if(year % 4 == 0){
                            if(year % 100 == 0){
                                if(year % 400 == 0){
                                    isLeapYear = true;
                                }
                            } else {
                                isLeapYear = true;
                            }
                        }

                        if(isLeapYear){
                            System.out.printf("%d is a leap year", year);
                        } else {
                            System.out.printf("%d is NOT a leap year", year);
                        }

                </code></pre>


                <p>Đảm bảo clean code:</p>
                <p>Trong đoạn mã trên, các điều kiện bên trong các câu lệnh if sẽ là khó hiểu, bởi vì bản thân các biểu thức không trực tiếp thể hiện được ý nghĩa của nó. Chúng ta có thể sử dụng kỹ thuật tách biến để các câu lệnh này dễ hiểu hơn. Ví dụ:</p>


                <pre><code class="language-java">
                       boolean isLeapYear = false;

                        boolean isDivisibleBy4 = year % 4 == 0;
                        if(isDivisibleBy4){
                            boolean isDivisibleBy100 = year % 100 == 0;
                            if(isDivisibleBy100){
                                boolean isDivisibleBy400 = year % 400 == 0;
                                if(isDivisibleBy400){
                                    isLeapYear = true;
                                }
                            } else {
                                isLeapYear = true;
                            }
                        }

                        if(isLeapYear){
                            System.out.printf("%d is a leap year", year);
                        } else {
                            System.out.printf("%d is NOT a leap year", year);
                        }

                </code></pre>

                <p>Đoạn code hàm main() hoàn chỉnh sau khi chỉnh sửa lại:</p>
                <pre><code class="language-java">
                    import java.util.Scanner;

                    public class LeapYearCalculator {

                        public static void main(String[] args) {
                            Scanner scanner = new Scanner(System.in);
                            int year;
                            System.out.println("Enter a year: ");
                            year = scanner.nextInt();
                            boolean isLeapYear = false;

                            boolean isDivisibleBy4 = year % 4 == 0;
                            if(isDivisibleBy4){
                                boolean isDivisibleBy100 = year % 100 == 0;
                                if(isDivisibleBy100){
                                    boolean isDivisibleBy400 = year % 400 == 0;
                                    if(isDivisibleBy400){
                                        isLeapYear = true;
                                    }
                                } else {
                                    isLeapYear = true;
                                }
                            }

                            if(isLeapYear){
                                System.out.printf("%d is a leap year", year);
                            } else {
                                System.out.printf("%d is NOT a leap year", year);
                            }
                        }
                    }

                </code></pre>


            </div>
        </div>
    </div>
</div>


</body>
</html>
