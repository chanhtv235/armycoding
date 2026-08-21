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
                <h4>[Thực hành] Chương trình chuyển đổi nhiệt độ </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng phương thức.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép chuyển đổi nhiệt độ từ độ C sang độ F và
                    ngược lại. Ứng dụng gồm một menu cho phép người dùng lựa chọn việc chuyển đổi nhiệt độ như sau: </p>
                <pre> Menu
                        1. Fahrenheit to Celsius
                        2. Celsius to Fahrenheit
                        0. Exit
                    </pre>
                <p>Công thức chuyển đổi:</p>
                <p>celsius = (5.0 / 9) * (fahrenheit - 32)</p>
                <p>Trong đó:</p>
                <p>• Celsius là độ C</p>
                <p>• Fahrenheit là độ F</p>
                <p>Việc chuyển đổi nhiệt độ được sử dụng thông qua các phương thức với nguyên mẫu như sau:</p>
                <p>• Phương thức chuyển từ độ C sang độ F: public static double celsiusToFahrenheit(double celsius)</p>
                <p>• Phương thức chuyển từ độ F sang độ C: public static double fahrenheitToCelsius(double
                    fahrenheit)</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b> Tạo mới dự án</p>
                <p>Đầu tiên chúng ta sẽ khởi động ứng dụng IntelIJ sau đó chọn New Project</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p51.png"
                     style="width: 71%;">
                <p>Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p52.png"
                     style="width: 70%;">
                <p>Cấu trúc dự án sau khi được tạo sẽ như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p53.png"
                     style="width: 40%;">

                <p><b>Bước 2:</b> Tạo lớp ConvertTemperature</p>

                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p54.png"
                     style="width: 40%;">

                <p>Xây dựng phương thức chuyển đổi từ độ C sang độ F</p>
                <pre><code class="language-javascript language-markup">
                   public static double celsiusToFahrenheit(double celsius) {
                        double fahrenheit = (9.0 / 5) * celsius + 32;
                        return fahrenheit;
                    }

                </code></pre>
                <p>Xây dựng phương thức chuyển đổi từ độ F sang độ C</p>
                <pre><code class="language-javascript language-markup">
                    public static double fahrenheitToCelsius(double fahrenheit) {
                        double celsius = (5.0 / 9) * (fahrenheit - 32);
                        return celsius;
                    }
                </code></pre>
                <p>Tạo phương thức main() để thực thi ứng dụng</p>
                <p>Sử dụng vòng lặp do/while và cấu trúc lựa chọn switch/case để hiển in ra menu lựa chọn cho người
                    dùng.</p>
                <p></p>

                <pre><code class="language-java">
                        public static void main(String[] args) {
                            Scanner input = new Scanner(System.in);
                            double fahrenheit;
                            double celsius;
                            int choice;

                            do {
                                System.out.println("Menu.");
                                System.out.println("1. Fahrenheit to Celsius");
                                System.out.println("2. Celsius to Fahrenheit");
                                System.out.println("0. Exit");
                                System.out.println("Enter your choice: ");
                                choice = input.nextInt();

                                switch (choice) {
                                    case 1:
                                        break;
                                    case 2:
                                        break;
                                    case 0:
                                        System.exit(0);
                                }
                            } while (choice != 0);
                        }
                </code></pre>

                <p>Thực thi chương trình, cho phép người dùng lựa chọn 1, 2, 0 để kiểm tra xem menu có hoạt động
                    không.</p>
                <p>Gọi phương thức chuyển từ độ F sang độ C khi người dùng lựa chọn 1</p>
                <pre><code class="language-java">
                   case 1: {
                        System.out.println("Enter fahrenheit: ");
                        fahrenheit = input.nextDouble();
                        System.out.println("Fahrenheit to Celsius: " +
                                            fahrenheitToCelsius(fahrenheit));
                        break;
                    }
                </code></pre>

                <p>Gọi phương thức chuyển từ độ C sang độ F khi người dùng lựa chọn 2</p>

                <pre><code class="language-java">
                    case 2:{
                        System.out.println("Enter Celsius: ");
                        celsius = input.nextDouble();
                        System.out.println("Celsius to Fahrenheit: " + celsiusToFahrenheit(celsius));
                        break;
                    }
                </code></pre>
                <p>Đoạn code hoàn chỉnh như sau:</p>

                <pre><code class="language-java">
                        import java.util.Scanner;

                        public class ConvertTemperature {

                            public static void main(String[] args) {
                                Scanner input = new Scanner(System.in);
                                double fahrenheit;
                                double celsius;
                                int choice;

                                do {
                                    System.out.println("Menu.");
                                    System.out.println("1. Fahrenheit to Celsius");
                                    System.out.println("2. Celsius to Fahrenheit");
                                    System.out.println("0. Exit");
                                    System.out.println("Enter your choice: ");
                                    choice = input.nextInt();

                                    switch (choice) {
                                        case 1: {
                                            System.out.println("Enter fahrenheit: ");
                                            fahrenheit = input.nextDouble();
                                            System.out.println("Fahrenheit to Celsius: "
                                                                + fahrenheitToCelsius(fahrenheit));
                                            break;
                                        }
                                        case 2:{
                                            System.out.println("Enter Celsius: ");
                                            celsius = input.nextDouble();
                                            System.out.println("Celsius to Fahrenheit: "
                                                        + celsiusToFahrenheit(celsius));
                                            break;
                                        }
                                        case 0:
                                            System.exit(0);
                                    }
                                } while (choice != 0);
                            }

                            public static double celsiusToFahrenheit(double celsius) {
                                double fahrenheit = (9.0 / 5) * celsius + 32;
                                return fahrenheit;
                            }

                            public static double fahrenheitToCelsius(double fahrenheit) {
                                double celsius = (5.0 / 9) * (fahrenheit - 32);
                                return celsius;
                            }
                        }
                </code></pre>

                <p><b>Bước 3:</b>Thực thi chương trình và quan sát kết quả.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session3/img/img-p55.png"
                     style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
