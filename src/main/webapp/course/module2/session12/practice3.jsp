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
                <a href="/course/module2/session12/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Exception trong java</a>
                <h4>[Thực hành] Crawl danh sách bài hát</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">-Luyện tập sử dụng Regular Expression.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Viết một ứng dụng cho phép xử lý mã HTML và lọc thông tin.</p>

                <p class="p1">- Ứng dụng nhận vào URL của một trang web chứa danh sách các bài hát, phân tích mã HTML và
                    hiển thị
                    danh sách các bài hát có trong trang web đó.</p>

                <p class="p1">- Sử dụng trang https://www.nhaccuatui.com/bai-hat/nhac-tre-moi.html để làm mẫu</p>
                <h5>Hướng dẫn</h5>
                <p class="p0">Bước 1: Tạo class CrawlSongExample</p>

                <p class="p0"> Bước 2: Tạo phương thức main() trong lớp CrawlSongExample</p>
                <pre class="language-java"><code>
                    public static void main(String[] args) {
                        try {
                            // Code here
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                 </code></pre>
                <p class="p0">Lưu ý: Tất cả các lệnh được đặt vào khối try/catch</p>
                <p class="p0">Bước 3: Xây dựng mẫu account hợp lệ</p>
                <pre class="language-java"><code>
                    URL url = new URL("https://www.nhaccuatui.com/bai-hat/nhac-tre-moi.html");
                </code></pre>

                <p class="p0">Bước 4: Mở stream và đưa nó vào InputStreamReader</p>
                <pre class="language-java"><code>
                    // open the stream and put it into BufferedReader
                    Scanner scanner = new Scanner(new InputStreamReader(url.openStream()));
                    scanner.useDelimiter("\\Z");
                    String content = scanner.next();
                    // close scanner
                    scanner.close();
                </code></pre>

                <p class="p0">Bước 5: Xóa tất cả các new line trong content lấy được</p>
                <pre class="language-java"><code>
                    // remove all new line
                    content = content.replaceAll("\\n+", "");
                </code></pre>

                <p class="p0">Bước 6: Lọc nội dung content lấy được trong tag a chứa class name_song và in ra danh sách
                    tên bài hát lấy được theo điều kiện lọc</p>
                <pre class="language-java"><code>
                    // regex
                    Pattern p = Pattern.compile("name_song\">(.*?)</a>");
                    Matcher m = p.matcher(content);
                    while (m.find()) {
                       System.out.println(m.group(1));
                    }
                </code></pre>
                <p class="p0">* Tổng hợp các phần code trên, ta có lớp CrawlSongExample như sau:</p>
                <pre class="language-java"><code>
                    import java.io.IOException;
                    import java.io.InputStreamReader;
                    import java.net.URL;
                    import java.util.Scanner;
                    import java.util.regex.Matcher;
                    import java.util.regex.Pattern;

                    public class CrawlSongExample {

                        public static void main(String[] args) {
                            try {
                                URL url = new URL("https://www.nhaccuatui.com/bai-hat/nhac-tre-moi.html");
                                // open the stream and put it into BufferedReader
                                Scanner scanner = new Scanner(new InputStreamReader(url.openStream()));
                                scanner.useDelimiter("\\Z");
                                String content = scanner.next();
                                // close scanner
                                scanner.close();
                                // remove all new line
                                content = content.replaceAll("\\n+", "");
                                // regex
                                Pattern p = Pattern.compile("name_song\">(.*?)</a>");
                                Matcher m = p.matcher(content);
                                while (m.find()) {
                                    System.out.println(m.group(1));
                                }
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                </code></pre>

                <p class="p0">Bước 7: Chạy chương trình, quan sát kết quả hiển thị danh sách bài hát có thể như sau:</p>

                <pre>
                        Tối Nay Em Muốn Sao
                        Tình Yêu Của Anh (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 5)
                        Như Ngày Nào
                        Nụ Hôn Đánh Rơi (Tháng Năm Rực Rỡ OST)
                        Rực Rỡ Tháng Năm (Tháng Năm Rực Rỡ OST)
                        Cô Gái m52
                        Tất Cả Đều Thua Em
                        Together We Fly
                        Người Về Trong Kỉ Niệm
                        Tâm Sự Tuổi 30 (Ông Ngoại Tuổi 30 OST)
                        Yêu (Tháng Năm Rực Rỡ OST)
                        Người Anh Em
                        Em Đã Từng
                        Hôm Nay Tôi Buồn
                        Hương À (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 3)
                        Em Sắp Kết Hôn
                        Vui Thôi Đừng Vui Quá (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 5)
                        Sao Tôi Vào Đây (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 5)
                        Chúng Ta Chẳng Giống Nhau
                        Mẹ
                        Là Anh Đó (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 2)
                        Bùa Mê (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 5)
                        Vì Yêu Là Nhớ (Ông Ngoại Tuổi 30 Ost)
                        Vỡ (Siêu Sao Siêu Ngố OST)
                        Gọi Tên Em Trong Đêm Cover
                        Tối Nay Một Mình
                        Nói Với Em Rằng...
                        Em Sẽ Hối Hận Cover
                        Đời Dạy Tôi (Ông Ngoại Tuổi 30 OST)
                        Mình Là Người Tình
                        Yêu Bạn Được Không (Friendzone) (Sing My Song - Bài Hát Hay Nhất 2018 - Tập 1)
                        Niệm Khúc Cuối (Tháng Năm Rực Rỡ OST)
                        Có Nên Yêu Một Lần Nữa
                        Cùng Anh Đi Xa
                        Nếu Yêu Em
                        Chia Tay Vì Quá Hiểu
                        Em Gái Mưa (Acoustic Cover)
                        Yêu Một Người Bận Rộn
                        Phía Sau Một Cô Gái (Acoustic Cover)
                        Yêu Thương Ngày Đó (Yêu Em Bất Chấp OST)
                        Cô Gái m52
                        Tất Cả Đều Thua Em
                        Nụ Hôn Đánh Rơi (Tháng Năm Rực Rỡ OST)
                        Together We Fly
                        Buồn Của Anh
                        Như Ngày Nào
                        Rực Rỡ Tháng Năm (Tháng Năm Rực Rỡ OST)
                        Hôm Nay Tôi Buồn
                        Người Về Trong Kỉ Niệm
                        Mình Cưới Nhau Đi
                        Done
                </pre>
            </div>
        </div>
    </div>
</div>

</body>
</html>
