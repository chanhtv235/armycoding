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
                <h4>[Thực hành] Sắp xếp với Comparable và Comparator</h4>

                <h5>Mục tiêu</h5>
                <p>Biết cách sử dụng Comparable và Comparator</p>

                <h5>Mô tả</h5>

                <p>Tạo một lớp Student chứa thông tin về tên, tuổi, địa chỉ.</p>
                <p> Thực hiện sắp xếp các đối tượng student theo tên và tuổi</p>
                <h5>Hướng dẫn</h5>

                <p><b>Bước 1:</b> Tạo lớp lớp Student thực thi giao diện Comparable</p>

                <pre><code class="language-java">
                        public class Student implements Comparable < Student> {

                            private String name;
                            private Integer age;
                            private String address;

                            public Student(String name, Integer age, String address) {
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

                            public Integer getAge() {
                                return age;
                            }

                            public void setAge(Integer age) {
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
                                return "Student{" +
                                        "name='" + name + '\'' +
                                        '}';
                            }

                            @Override
                            public int compareTo(Student student) {
                                return this.getName().compareTo(student.getName());
                            }
                        }
                </code></pre>

                <p><b>Bước 2:</b> Tạo lớp AgeComparator thực thi giao diện Comparator</p>

                <pre><code class="language-java">
                        public class AgeComparator implements Comparator< Student> {
                            @Override
                            public int compare(Student o1, Student o2) {
                                if(o1.getAge() > o2.getAge()){
                                    return 1;
                                }else if(o1.getAge() == o2.getAge()){
                                    return 0;
                                }else{
                                    return -1;
                                }
                            }
                        }
                </code></pre>
                <p><b>Bước 3:</b> Tạo hàm Main để kiểm tra kết quả so sánh</p>
                <pre><code class="language-java">
                        public static void main(String[] args) {
                           Student student = new Student("Kien", 30, "HT");
                           Student student1 = new Student("Nam", 26, "HN");
                           Student student2 = new Student("Anh", 38, "HT" );
                           Student student3 = new Student("Tung", 38, "HT" );

                           List< Student> lists = new ArrayList< Student>();
                           lists.add(student);
                           lists.add(student1);
                           lists.add(student2);
                           lists.add(student3);
                           Collections.sort(lists);
                           for(Student st : lists){
                               System.out.println(st.toString());
                           }

                           AgeComparator ageComparator = new AgeComparator();
                           Collections.sort(lists,ageComparator);
                           System.out.println("So sanh theo tuoi:");
                           for(Student st : lists){
                               System.out.println(st.toString());
                           }
                        }
                </code></pre>

            </div>
        </div>
    </div>
</div>


</body>
</html>
