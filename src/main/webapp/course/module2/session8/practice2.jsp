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
                <h4>[Thực hành] Phân biệt giữa HashMap và HashSet</h4>

                <h5>Mục tiêu</h5>
               <p>Phân biệt cách dùng HashMap, HashSet</p>

                <h5>Mô tả</h5>

                <p>Phân biệt cách dùng HashMap, HashSet</p>
                <p>Tạo một lớp Student chứa thông tin về tên, tuổi, địa chỉ.</p>
                <p> Sử dụng HashMap và HashSet để lưu các đối tượng Student.</p>
                <p> Hiển thị tất cả thông tin sau khi đã lưu.</p>

                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo lớp lớp Student</p>

                <pre><code class="language-java">
                        public class Student {
                            private String name;
                            private int age;
                            private String address;

                            public Student() {
                            }

                            public Student(String name, int age, String address) {
                                super();
                                this.name = name;
                                this.age = age;
                                this.address = address;
                            }

                            public String getName() {
                                return name;
                            }

                            public void setName(String name) {
                                this.name = name;
                            }

                            public int getAge() {
                                return age;
                            }

                            public void setAge(int age) {
                                this.age = age;
                            }

                            public String getAddress() {
                                return address;
                            }

                            public void setAddress(String address) {
                                this.address = address;
                            }

                            @Override
                            public String toString() {
                                return "Student@name=" + name + ",age=" + age + ",address=" + address;
                            }
                        }

                </code></pre>

                <p><b>Bước 2:</b> Tạo class Main chứa hàm main để lưu danh sách sinh viên</p>
                <pre><code class="language-java">
                        import java.util.HashMap;
                        import java.util.HashSet;
                        import java.util.Map;
                        import java.util.Set;

                        public class Main {

                            public static void main(String[] args) {
                                Student student1 = new Student("Nam",20, "HN");
                                Student student2 = new Student("Hung",21, "HN");
                                Student student3 = new Student("Ha",22, "HN");
                           // write your code here
                                Map< Integer, Student> studentMap = new HashMap< Integer, Student>();
                                studentMap.put(1,student1);
                                studentMap.put(2,student2);
                                studentMap.put(3,student3);
                                studentMap.put(4,student1);

                                for(Map.Entry<Integer, Student> student : studentMap.entrySet()){
                                    System.out.println(student.toString());
                                }
                                System.out.println("...........Set");
                                Set< Student> students = new HashSet< Student>();
                                students.add(student1);
                                students.add(student2);
                                students.add(student3);
                                students.add(student1);

                                for(Student student : students){
                                    System.out.println(student.toString());
                                }
                            }
                        }
                </code></pre>

                <p><b>Bước 3:</b> So sánh kết quả</p>
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
