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
                   class="mb-2 btn btn-sm btn-outline-warning"> 8. Java collection framework</a>

                <h4>[Bài đọc] Collection framework trong java</h4>

                <h5>Collection vs Collections</h5>
                <p>"Collection" và "Collections" trong java là hai khái niệm khác nhau.</p>

                <p>Collections trong java là một khuôn khổ cung cấp một kiến trúc để lưu trữ và thao tác tới nhóm các
                    đối
                    tượng. Tất cả các hoạt động mà bạn thực hiện trên một dữ liệu như tìm kiếm, phân loại, chèn, xóa,...
                    có
                    thể được thực hiện bởi Java Collections.</p>

                <p>Collection trong java là một root interface trong hệ thống cấp bậc Collection. Java Collection cung
                    cấp
                    nhiều interface (Set, List, Queue, Deque vv) và các lớp (ArrayList, Vector, LinkedList,
                    PriorityQueue,
                    HashSet, LinkedHashSet, TreeSet vv).</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-r11.png"
                     style="width: 70%;">
                <h5>Hệ thống cấp bậc Collection trong java</h5>
                <p>Gói java.util chứa tất cả các lớp và interface của Collection.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-r12.png"
                     style="width: 70%;">

                <h5>Dưới đây là mô tả những interface chính của Collection</h5>
                <p><b>1. Set:</b> là một collection không thể chứa 2 giá trị trùng lặp. Set được sử dụng để biểu diễn
                    các bộ, chẳng
                    hạn như bộ tú lu khơ, thời khóa biểu của học sinh, các tiến trình đang chạy trên máy tính...</p>
                <p><b>2. List:</b> là một collection có thứ tự (đôi khi còn được gọi là một chuỗi). List có thể chứa các
                    phần tử
                    trùng lặp. Thường có quyền kiểm soát chính xác vị trí các phần tử được chèn vào và có thể truy cập
                    chúng
                    bằng chỉ số (vị trí của chúng).</p>
                <p><b>3. Queue (hàng đợi):</b> là một collection được sử dụng để chứa nhiều phần tử trước khi xử lý. Bên
                    cạnh các
                    thao tác cơ bản của collection, Queue cung cấp các thao tác bổ sung như chèn, lấy ra và kiểm tra.
                    Queue
                    có thể được sử dụng như là FIFO (first-in, first-out - vào trước, ra trước)</p>
                <p><b>4. Deque:</b> là một collection được sử dụng để chứa nhiều phần tử trước khi xử lý. Ngoài các thao
                    tác cơ bản
                    của collection, một Deque cung cấp các thao tác bổ sung như chèn, lấy ra và kiểm tra. Deques có thể
                    được
                    sử dụng như là FIFO (first-in, first-out - vào trước, ra trước) và LIFO (last-in, first-out - vào
                    sau,
                    ra trước). Trong một Deque, tất cả các phần tử mới có thể được chèn vào, lấy ra và lấy ra ở cả hai
                    đầu.</p>
                <p><b>5. Map:</b> là một đối tượng ánh xạ mỗi key tương úng với một giá trị. Map không thể chứa giá trị
                    trùng lặp.</p>
                <p>-Mỗi key có thể ánh xạ đến nhiều nhất một giá trị.</p>
                <p>-Dưới đây là mô tả 2 interface được sắp xếp của Set mà Map</p>
                <p>+SortedSet: là một Set chứa các phần tử theo thứ tự tăng dần.</p>
                <p>+SortedMap: là một Map chứa các phần tử được sắp xếp theo thứ tự tăng dần của key của chúng. Các
                    SortedMap được sử dụng cho các collection theo thứ tự tự nhiên của cặp key/value, chẳng hạn như từ
                    điển
                    và danh bạ điện thoại.</p>
                <h5>Các phương thức của interface Collection trong java</h5>
                <p>Có nhiều phương thức được khai báo trong interface Collection như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-r13.png"
                     style="width: 75%;">
                <h6>Ví dụ về collection trong java</h6>
                <pre>
                    <code class="language-java">
                        import java.util.ArrayList;
                        import java.util.HashMap;
                        import java.util.HashSet;
                        import java.util.LinkedList;
                        import java.util.List;
                        import java.util.Map;
                        import java.util.Set;

                        public class CollectionExample1 {
                            public static void main(String[] args) {
                                List< String> arrayList = new ArrayList< String>();
                                arrayList.add("PHP");
                                arrayList.add("Python");
                                arrayList.add("Java");
                                arrayList.add("C++");
                                System.out.println("Các phần tử của ArrayList");
                                System.out.print("\t" + arrayList + "\n");

                                List< String> linkedList = new LinkedList< String>();
                                linkedList.add("PHP");
                                linkedList.add("Python");
                                linkedList.add("Java");
                                linkedList.add("C++");
                                System.out.println("Các phần tử của LinkedList");
                                System.out.print("\t" + linkedList + "\n");

                                // new TreeSet() sẽ sắp xếp các phần tử
                                Set< String> hashSet = new HashSet< String>();
                                hashSet.add("PHP");
                                hashSet.add("Python");
                                hashSet.add("Java");
                                hashSet.add("Java");
                                hashSet.add("C++");
                                System.out.println("Các phần tử của Set");
                                System.out.print("\t" + hashSet + "\n");

                                // new TreeMap() sẽ sắp xếp các phần tử dự vào key của chúng
                                Map< String, String> hashMap = new HashMap< String, String>();
                                hashMap.put("Windows", "2000");
                                hashMap.put("Windows", "XP");
                                hashMap.put("Language2", "Java");
                                hashMap.put("Language1", ".Net");
                                System.out.println("Các phần tử của Map");
                                System.out.print("\t" + hashMap);
                            }
                        }
                    </code>
                </pre>
                <p>Output</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-r14.png"
                     style="width: 70%;">
                <h5>Non-generic Collection và Generic Collection</h5>
                <p>Collection trong java là non-generic trước JDK 1.5. Từ JDK 1.5 là generic.</p>

                <p>Generic Collection trong java cho phép chỉ có một kiểu đối tượng trong collection. Đây là một kiểu an
                    toàn vì không cần phải ép kiểu tại runtime.</p>

                <p>Ví dụ về non-generic collection - kiểu cũ</p>

                <pre><code class="language-java">
                    ArrayList list = new ArrayList();
                </code></pre>
                <p>Ví dụ về generic collection - kiểu mới</p>
                <pre><code class="language-java">
                    ArrayList< String> list = new ArrayList< String>();
                </code></pre>
                <p>Trong generic collection, chúng ta phải chỉ định kiểu dữ liệu được đặt trong <...>. Từ JDK 1.5, khi
                    sử dụng ArrayList bắt buộc phải chỉ định kiểu dữ liệu cho nó. Nếu bạn cố gắng thêm một đối tượng có
                    kiểu khác vào, chương trình sẽ báo lỗi compile-time.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session8/img/img-r15.png"
                     style="width: 70%;">
                <h5>Duyệt các phần tử của collection</h5>
                <p>Có 2 cách để duyệt các phần tử của collection trong java.</p>
                <p>- Sử dụng Iterator interface.</p>
                <p>- Sử dụng vòng lặp for-each.</p>
                <pre><code class="language-java">
                        import java.util.ArrayList;
                        import java.util.Iterator;

                        public class ArrayListExample1 {
                            public static void main(String args[]) {
                                // Creating arraylist
                                ArrayList< String> list = new ArrayList< String>();
                                // Add objects to arraylist
                                list.add("Java");
                                list.add("C++");
                                list.add("PHP");
                                list.add("Java");
                                // Show list through Iterator
                                Iterator< String> itr = list.iterator();
                                while (itr.hasNext()) {
                                    System.out.print(itr.next() + ", ");
                                }
                                // Show list through for-each
                                System.out.println();
                                for (String obj : list) {
                                    System.out.print(obj + ", ");
                                }
                                // Show list through index
                                System.out.println();
                                int size = list.size();
                                for (int i = 0; i < size; i++) {
                                    System.out.print(list.get(i) + ", ");
                                }
                            }
                        }
                </code></pre>
                <p>Output</p>
                <pre><code class="language-text">
                        Java, C++, PHP, Java,
                        Java, C++, PHP, Java,
                        Java, C++, PHP, Java,
                </code></pre>
                <p>Ví dụ 2: HashSetExample1.java</p>
                <pre><code class="language-java">
                    import java.util.HashSet;
                    import java.util.Iterator;
                    import java.util.Set;

                    public class HashSetExample1 {
                        public static void main(String[] args) {
                            // Creating hashset
                            Set< String> set = new HashSet< String>();
                            // Add objects to hashset
                            set.add("Java");
                            set.add("C++");
                            set.add("PHP");
                            set.add("Java");
                            // Show set through Iterator
                            Iterator< String> itr = set.iterator();
                            while (itr.hasNext()) {
                                System.out.print(itr.next() + ", ");
                            }
                            // Show set through for-each
                            System.out.println();
                            for (String obj : set) {
                                System.out.print(obj + ", ");
                            }
                        }
                    }
                </code></pre>
                <p>Output</p>
                <code class="language-text" style="padding: 2%"><pre>
                        Java, C++, PHP,
                        Java, C++, PHP,
                </pre></code>
            </div>
        </div>
    </div>

</body>
</html>
