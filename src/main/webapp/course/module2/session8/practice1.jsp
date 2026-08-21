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
                <a href="/course/module2/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8. Java Collection framework</a>
                <h4>[Thực hành] Sử dụng HashMap, LinkedHashMap, TreeMap để lưu danh sách sinh viên theo độ tuổi</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng HashMap, LinkedHashMap, TreeMap</p>

                <h5>Mô tả</h5>

                <p>Tạo HashMap, LinkedHashMap, TreeMap để lưu danh sách sinh viên theo độ tuổi. Chương trình đầu tiên
                    tạo ra một HashMap lưu tên sinh viên như là khoá (key) và tuổi của mỗi sinh viên đó. Chương trình
                    sau đó tạo ra một TreeMap hiển thị toàn bộ key theo thứ tự giảm/tăng. Cuối cùng, chương trình tạo ra
                    một LinkedHashMap để lưu danh sách tương tự như HashMap và hiển thị dữ liệu.</p>

                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo lớp TestMap chứa phương thức main</p>

                <pre><code class="language-java">
                        public class TestMap {
                             public static void main(String[] args) {

                                 /** code here */
                             }
                         }

                </code></pre>

                <p><b>Bước 2:</b> Tạo HashMap trong main để lưu danh sách sinh viên</p>
                <pre><code class="language-java">
                         Map< String, Integer> hashMap = new HashMap<>();
                         hashMap.put("Smith", 30);
                         hashMap.put("Anderson", 31);
                         hashMap.put("Lewis", 29);
                         hashMap.put("Cook", 29);
                         System.out.println("Display entries in HashMap");
                         System.out.println(hashMap + "\n");
                </code></pre>

                <p>Chạy chương trình. Quan sát kết quả.</p>
                <p><b>Bước 3:</b> Tạo TreeMap trong main để lưu key theo thứ tự giảm dần</p>
                <pre><code class="language-java">
                         Map< String, Integer> treeMap = new TreeMap<>(hashMap);
                         System.out.println("Display entries in ascending order of key");
                         System.out.println(treeMap);
                </code></pre>

                <p><b>Bước 4:</b> Tạo LinkedHashMap trong main lưu danh sách sinh viên và hiển thị dữ liệu</p>
                <pre><code class="language-java">
                         Map< String, Integer> linkedHashMap = new LinkedHashMap<>(16, 0.75f, true);
                         linkedHashMap.put("Smith", 30);
                         linkedHashMap.put("Anderson", 31);
                         linkedHashMap.put("Lewis", 29);
                         linkedHashMap.put("Cook", 29);
                         System.out.println("\nThe age for " + "Lewis is " + linkedHashMap.get("Lewis"));

                </code></pre>
                <p><b>Bước 5:</b> Chạy chương trình quan sát kết quả trả về.</p>

            </div>
        </div>
    </div>
</div>


</body>
</html>
