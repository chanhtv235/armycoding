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
                <a href="/course/module2/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Exception trong java</a>
                <h4>[Thực hành] Sử dụng lớp ArrayIndexOutOfBoundsException</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng try-catch và các lớp Exception có sẵn.</p>

                <h5>Mô tả</h5>
                <p>Viết một chương trình cho phép tạo ra một mảng 100 số nguyên ngẫu nhiên. Cho phép người dùng nhập vào
                    chỉ số của một phần tử và hiển thị giá trị của phần tử đó.</p>
                <p>Sử dụng try-catch để hiển thị thông báo nếu người dùng nhập vào chỉ số không hợp lệ (index < 0 hoặc
                    index >= 100)</p>
                <h5>Hướng dẫn</h5>

                <p> Bước 1: Tạo lớp ArrayExample</p>
                <p>Tạo phương thức createRandom Trả về mảng số nguyễn ngẫu nhiên từ 0 đến 100.</p>
                <pre><code class="language-java">
                        public Integer[] createRandom() {
                            Random rd = new Random();
                            Integer[] arr = new Integer[100];
                            System.out.println("Danh sách phần tử của mảng: " );
                            for (int i = 0; i < 100; i++) {
                                arr[i] = rd.nextInt(100);
                                System.out.print(arr[i]+ " ");
                            }
                            return arr;
                        }

                </code></pre>

                <p>Bước 2: Tạo hàm main cho phép người dùng nhập vào chỉ số của một phần tử bất kỳ đồng thời tìm kiếm
                    giá trị phần tử theo chỉ số đó dựa trên mảng vừa tạo</p>
                <pre><code class="language-java">
                        public static void main(String[] args) {
                            ArrayExample arrExample = new ArrayExample();
                            Integer[] arr = arrExample.createRandom();

                            Scanner scaner = new Scanner(System.in);
                            System.out.println("\nVui lòng nhập chỉ số của một phần tử bất kỳ: ");
                            int x = scaner.nextInt();
                            try {
                                System.out.println("Giá trị của phần tử có chỉ số 5" + x + " là " + arr[x]);
                            } catch (IndexOutOfBoundsException e) {
                                System.err.println("Chỉ số vượt quá giới hạn của mảng");
                            }
                        }
                </code></pre>
                <p>Bước 3: Chạy chương trình và kiểm tra kết quả</p>
                <p>Danh sách mảng 100 phần tử in ra như sau:</p>
                <p>Danh sách phần tử của mảng:</p>
                <pre><code class="language-text">
                    14 36 56 30 11 69 43 81 11 92 27 61 26 82 12 92 68 86 91 61 12 13 9 22 44 17 52
                    29 18 19 51 3 70 22 34 49 28 35 8 83 46 40 12 66 11 57 20 0 3 93 60 35 99 77 36 40
                    6 51 73 32 90 20 81 66 78 82 7 51 72 24 29 22 57 14 94 43 65 76 48 83 88 11 78 78 73
                    40 80 50 83 26 28 56 22 15 73 94 93 38 95 40
                </code></pre>
                <p>Vui lòng nhập chỉ số của một phần tử bất kỳ:</p>
                <p>Khi bạn tiến hành nhập chỉ số mong muốn:</p>
                <pre><code class="language-text">
                    5
                    Output: Giá trị của phần tử có chỉ số 5 là 69
                    111
                    Output Exception: Chỉ số vượt quá giới hạn của mảng
                </code></pre>
            </div>
        </div>
    </div>
</div>


</body>
</html>
