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
                <a href="/course/module2/session5/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">5.Static, access modifier</a>
                <h4>[Thực hành] Static Method </h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập sử dụng Static Method</p>

                <h5>Mô tả</h5>
                <p>Trong Java, một phương thức tĩnh là một phương thức thuộc về một lớp chứ không phải là một thể hiện của một lớp. Chương trình sau đây sẽ sử dụng phương thức tĩnh để thay đổi giá trị thuộc tính của lớp.</p>

                <h5>Hướng dẫn</h5>

                <p> Bước 1: Tạo dự án</p>
                 <p>Khởi động Intellij, trong màn hình tiếp theo chọn "New Project".</p>
                <p> Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk.</p>

                <p>Bước 2: Xây dựng lớp Student</p>

                <p>Cấu trúc dự án sau khi tạo lớp Student như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-p11.png" style="width: 30%;">
                <p>Xây dựng phương thức tĩnh change():</p>


                <pre><code class="language-java">
                        public class Student {
                            private int rollno;
                            private String name;
                            private static String college = "BBDIT";

                            //constructor to initialize the variable
                            Student(int r, String n) {
                                rollno = r;
                                name = n;
                            }

                            //static method to change the value of static variable
                            static void change() {
                                college = "CODEGYM";
                            }

                            //method to display values
                            void display() {
                                System.out.println(rollno + " " + name + " " + college);
                            }
                        }
                </code></pre>

                <p>Trong lớp Main sẽ gọi đến phương thức static change():</p>
                <pre><code class="language-java">
                        public class Main {
                            public static void main(String args[]) {
                                Student.change(); //calling change method

                                //creating objects
                                Student s1 = new Student(111, "Hoang");
                                Student s2 = new Student(222, "Khanh");
                                Student s3 = new Student(333, "Nam");

                                //calling display method
                                s1.display();
                                s2.display();
                                s3.display();
                            }
                        }

                </code></pre>

                <p> Bước 3: Chạy và quan sát kết quả:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session5/img/img-p12.png" style="width: 30%;">

            </div>
        </div>
    </div>
</div>


</body>
</html>
