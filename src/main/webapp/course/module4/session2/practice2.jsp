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
                <a href="/course/module4/session2/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Spring Controller</a>
                <h4>[Thực hành] Ứng dụng xem giờ hiện tại của các thành phố sử dụng Gradle </h4>

                <h5>Mục tiêu</h5>
                <p class="p1"> - Luyện tập sử dụng Controller trong Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p2">- Trong phần này, chúng ta sẽ phát triển một ứng dụng cho phép hiển thị thời gian hiện tại
                    của các thành phố lớn trên thế giới.</p>
                <p class="p2">- Ứng dụng hiển thị một danh sách thành phố cho sẵn trong Combobox, cho phép người dùng
                    chọn lựa thành phố và sau đó hiển thị thời gian của thành phố được lựa chọn.</p>


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án SpringMVC với gradle và đặt tên dự án là spring-timezone-gradle</p>
                <p class="p1">- Tạo một dự án Spring MVC như các bài trước.</p>
                <p class="p1">- Cầu trúc dự án sau khi hoàn thiện:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p2/img.png"
                     style="width:30%;">

                <p class="p0">Bước 2: Tạo lớp TimeController để xử lý request của người dùng</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                import org.springframework.stereotype.Controller;
                import org.springframework.ui.ModelMap;
                import org.springframework.web.bind.annotation.GetMapping;
                import org.springframework.web.bind.annotation.RequestParam;

                @Controller
                public class TimeController {
                    @GetMapping("/world-clock")
                    public String getTimeByTimezone(ModelMap model,
                                                    @RequestParam(name = "city", required = false,
                                                                  defaultValue = "Asia/Ho_Chi_Minh") String city) {
                       return "index";
                    }
                }
            </code></pre>
                <p class="p1">-Trong đó:</p>
                <p class="p2">• @GetMapping("world-clock") ánh xạ request lên phương thức xử lý.</p>
                <p class="p2">• @RequestParam(name="city", required="false", defaultValue="Asia/Ho_Chi_Minh") khai báo
                    tham số của phương thức xử lý, ràng buộc với tham số từ request.</p>

                <p class="p0">Bước 3: Xử lý để lấy thời gian hiện tại của một thành phố trên thế giới</p>
                <p class="p1">- Xử lý để lấy timezone của thành phố hiện tại và thành phố cần xác định thời gian thông
                    qua abstract class TimeZone.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // Lấy ra thời gian hiện tại
                    Date date = new Date();
                    // Lấy ra time zone hiện tại
                    TimeZone local = TimeZone.getDefault();
                    // Lấy ra time zone của 1 thành phố cụ thể
                    TimeZone locale = TimeZone.getTimeZone(city);

                </code></pre>


                <p class="p1"> - Hàm getRawOffSet trả về lượng thời gian chênh lệch tính theo milisecond của TimeZone
                    với múi giờ chuẩn
                    UTC.</p>
                <p class="p1">- Sau đó đối trừ số thời gian chênh lệch của 2 TimeZone và cộng với thời gian vừa xác định
                    của TimeZone
                    hiện tại sẽ có được thời gian của TimeZone đang cần xác định.</p>


                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // Tính thời gian hiện tại của một thành phố cụ thể
                    long localeTime = date.getTime() + (locale.getRawOffset() - local.getRawOffset());
                    // Cài đặt lại thời gian cho biến date thành thời gian hiện tại của 1 thành phố cụ thể
                    date.setTime(localeTime);

                </code></pre>
                <p class="p0">Bước 4: Chuyển dữ liệu về view</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // Chuyển dữ liệu va gửi qua view
                    model.addAttribute("city", city);
                    model.addAttribute("date", date);
                    return "index";
                </code></pre>

                <p class="p1">- Class TimeController hoàn thiện như bên dưới: </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                import org.springframework.stereotype.Controller;
                import org.springframework.ui.ModelMap;
                import org.springframework.web.bind.annotation.GetMapping;
                import org.springframework.web.bind.annotation.RequestParam;
            
                import java.util.Date;
                import java.util.TimeZone;
            
                @Controller
                public class TimeController {
                    @GetMapping("/world-clock")
                    public String getTimeByTimezone(ModelMap model,
                                                    @RequestParam(name = "city", required = false,
                                                                  defaultValue = "Asia/Ho_Chi_Minh") String city) {
                        // Lấy ra thời gian hiện tại
                        Date date = new Date();
                        // Lấy ra time zone hiện tại
                        TimeZone local = TimeZone.getDefault();
                        // Lấy ra time zone của 1 thành phố cụ thể
                        TimeZone locale = TimeZone.getTimeZone(city);
                        // Tính thời gian hiện tại của một thành phố cụ thể
                        long localeTime = date.getTime() + (locale.getRawOffset() - local.getRawOffset());
                        // Cài đặt lại thời gian cho biến date thành thời gian hiện tại của 1 thành phố cụ thể
                        date.setTime(localeTime);
                        // Chuyển dữ liệu va gửi qua view
                        model.addAttribute("city", city);
                        model.addAttribute("date", date);
                        return "index";
                    }
                }
            </code></pre>

                <p class="p0">Bước 5: Sửa file index.jsp</p>
                <p class="p1">- Hàm onchange() để thực thi gọi request đến địa chỉ trong action của form khi có sự thay
                    đổi trong select.</p>


                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html; charset=UTF-8&quot; pageEncoding=&quot;UTF-8&quot; %&gt;
                    &lt;!DOCTYPE html&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                     &lt;title&gt;TimeZoneClock&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h2&gt;Current Local Times Around the World&lt;/h2&gt;
                    &lt;span&gt;Current time in ${city}: &lt;strong&gt;${date}&lt;/strong&gt;&lt;/span&gt;
                    &lt;form id=&quot;locale&quot; action=&quot;world-clock&quot; method=&quot;get&quot;&gt;
                        &lt;select name=&quot;city&quot; onchange=&quot;document.getElementById('locale').submit()&quot;&gt;
                           &lt;option value=&quot;Asia/Ho_Chi_Minh&quot; selected&gt;Select a city&lt;/option&gt;
                           &lt;option value=&quot;Asia/Ho_Chi_Minh&quot;&gt;Ho Chi Minh&lt;/option&gt;
                           &lt;option value=&quot;Singapore&quot;&gt;Singapore&lt;/option&gt;
                           &lt;option value=&quot;Asia/Hong_Kong&quot;&gt;Hong Kong&lt;/option&gt;
                           &lt;option value=&quot;Asia/Tokyo&quot;&gt;Tokyo&lt;/option&gt;
                           &lt;option value=&quot;Asia/Seoul&quot;&gt;Seoul&lt;/option&gt;
                           &lt;option value=&quot;Europe/London&quot;&gt;London&lt;/option&gt;
                           &lt;option value=&quot;Europe/Madrid&quot;&gt;Madrid&lt;/option&gt;
                           &lt;option value=&quot;America/New_York&quot;&gt;New York&lt;/option&gt;
                           &lt;option value=&quot;Australia/Sydney&quot;&gt;Sydney&lt;/option&gt;
                           &lt;option value=&quot;Argentina/Buenos_Aires&quot;&gt;Buenos Aires&lt;/option&gt;
                        &lt;/select&gt;
                    &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 6: Thực thi chương trình và quan sát kết quả</p>
                <img src="${pageContext.request.contextPath}/course/module4/session2/img/p2/img_1.png"
                     style="width:40%;">


            </div>
        </div>
    </div>
</div>
</body>
</html>
