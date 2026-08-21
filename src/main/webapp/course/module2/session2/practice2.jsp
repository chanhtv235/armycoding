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
                <h4>[Thực hành] Ứng dụng tính tiền lãi cho vay</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng vòng lặp for.</p>

                <h5>Mô tả</h5>
                <p>Trong phần này, chúng ta sẽ xây dựng một ứng dụng cho phép tính tiền cho vay lãi của một ngân
                    hàng.</p>
                <p>Ứng dụng cho phép nhập vào 3 tham số:</p>
                <p>1. Số lượng tiền cho vay</p>
                <p>2. Tỉ lệ lãi suất theo tháng</p>
                <p>3. Số tháng cho vay</p>
                <p>Ứng dụng sẽ hiển thị tổng số tiền có được khi hết thời hạn cho vay.</p>
                <b>Cách tính tiền lãi:</b>
                <p>Tiền gửi có kỳ hạn là loại tiền gửi tiết kiệm chỉ có thể rút ra sau một khoảng thời gian nhất định
                    người</p>
                gửi tiền đã cam kết với ngân hàng. Bên ngân hàng sẽ đưa ra nhiều mức kỳ hạn khác nhau để khách hàng có
                thể chọn lựa theo tuần, tháng, quý, năm.</p>
                <b>Công thức:</b>
                <p>Số_tiền_lãi = Số_tiền_gửi * tỉ_lệ_lãi_suất (% năm) / 12 * số_tháng_gửi</p>


                <h5>Hướng dẫn</h5>

                <p><b>Bước 1: </b> Tạo mới dự án</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p21.png"
                     style="width: 71%;">
                <p>Đặt tên dự án, vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk</p>

                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p22.png"
                     style="width: 71%;">
                <p>Cấu trúc dự án sau khi tạo mới như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p23.png"
                     style="width: 50%;">

                <p><b>Bước 2:</b> Tạo lớp Interest</p>
                <p>Cấu trúc dự án sau khi tạo lớp Interest như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p24.png"
                     style="width: 50%;">

                <p>Khai báo 3 biến để lưu thông tin về tiền gửi, tháng gửi, tỉ lệ lãi suất trong hàm main()</p>

                <pre><code class="language-java">
                        double money = 1.0;
                        int month = 1;
                        double interestRate = 1.0;
                </code></pre>
                <p>Tạo đối tượng input thuộc lớp Scanner để thực hiện nhập liệu dữ liệu cho 3 biến đã khai báo từ bàn
                    phím.</p>
                <pre><code class="language-java">
                        Scanner input = new Scanner(System.in);
                </code></pre>
                <p>Nhập số tiền gửi</p>
                <pre><code class="language-java">
                        System.out.println("Enter investment amount: ");
                        money = input.nextDouble();

                </code></pre>
                <p>Nhập số tháng gửi</p>
                <pre><code class="language-java">
                        System.out.println("Enter number of months: ");
                        month = input.nextInt();
                </code></pre>

                <p>Nhập lãi suất</p>
                <pre><code class="language-java">
                        System.out.println("Enter annual interest rate in percentage: ");
                        interestRate = input.nextDouble();
                </code></pre>
                <p>Tính lãi suất nhận được</p>
                <pre><code class="language-java">
                        double totalInterest = 0;
                        for(int i = 0; i < month; i++){
                            totalInterest += money * (interestRate/100)/12 * month;
                        }

                </code></pre>
                <p>In ra tiền lãi </p>
                <pre><code class="language-java">
                    System.out.println("Total of interest: " + totalInterest);
                </code></pre>
                <p> Bước 3: Thực thi chương trình và quan sát kết quả.</p>
                <p>- Sử dụng lãi suất theo ngân hàng để tính lãi suất tiền gửi trong 3 tháng, với số tiền 100 triệu
                    đồng, tỉ lệ lãi suất là 5.5% năm:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session2/img/img-p25.png"
                     style="width: 50%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
