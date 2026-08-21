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
                <a href="/course/module2/session7/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">7. Abstract class và interface</a>
                <h4>[Thực hành] Lớp Animal và interface Edible</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập thiết kế và triển khai mô hình lớp đối tượng sử dụng lớp trừu tượng và interface</p>

                <h5>Mô tả</h5>
                <p>Để dễ dàng gọi (sử dụng) phương thức makeSound() của các đối tượng mô phỏng động, tạo lớp trừu tượng
                    Animal</p>
                <p>Triển khai lớp Chicken và Tiger là lớp con của lớp Animal</p>
                <p>Để dễ dàng gọi (sử dụng) phương thức howToEat() của các đối tượng “ăn được”, tạo interface Edible.
                    Cho lớp Chicken triển khai interface Edible.</p>
                <p>Tạo lớp trừu tượng Fruit để mô phỏng các đối tượng “trái cây”, cũng là một Edible. Triển khai các lớp
                    con Orange và Apple.</p>
                <p>Giản đồ UML được thể hiện như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p11.png"
                     style="width: 50%;">

                <h5>Hướng dẫn</h5>

                <p> Bước 1: Tạo dự án</p>
                <p>Khởi động Intellij, trong màn hình tiếp theo chọn "New Project".</p>
                <p> Đặt tên dự án, chọn vị trí lưu trữ dự án trên ổ cứng, ngôn ngữ lập trình, jdk.</p>

                <p>Bước 2: : Xây dựng lớp Animal, Tiger, và Chicken</p>

                <p>Mã kiểm thử</p>
                <p>Ta viết một chương trình nhỏ để kiểm thử các lớp trên:</p>

                <pre><code class="language-java">
                        import animal.Animal;
                        import animal.Chicken;
                        import animal.Tiger;

                        public class AbstractAndInterfaceTests {
                            public static void main(String[] args) {
                                Animal[] animals = new Animal[2];
                                animals[0] = new Tiger();
                                animals[1] = new Chicken();
                                for (Animal animal : animals) {
                                    System.out.println(animal.makeSound());
                                }
                            }
                        }
                </code></pre>

                <p>Lớp Animal:</p>
                <pre><code class="language-java">
                        package animal;
                        public abstract class Animal {
                            public abstract String makeSound();
                        }
                </code></pre>

                <p>Lớp Tiger:</p>
                <pre><code class="language-java">
                        package animal;
                        public class Tiger extends Animal {
                            @Override
                            public String makeSound() {
                                return "Tiger: roarrrrr!";
                            }
                        }
                </code></pre>

                <p>Lớp Chicken:</p>
                <pre><code class="language-java">
                        package animal;
                        public class Chicken extends Animal {
                            @Override
                            public String makeSound() {
                                return "Chicken: cluck-cluck!";
                            }
                        }
                </code></pre>

                <p>Chạy chương trình kiểm thử và theo dõi kết quả</p>

                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p12.png"
                     style="width: 50%;">

                <p>Bước 2: Xây dựng Interface Edible:</p>
                <p>Mã kiểm thử</p>
                <p>Thay đổi chương trình kiểm thử để kiểm tra interface Edible và sự implement của lớp Chicken:
                </p>
                <pre><code class="language-java">
                        import animal.Animal;
                        import animal.Chicken;
                        import animal.Tiger;
                        import edible.Edible;

                        public class AbstractAndInterfaceTests {
                            public static void main(String[] args) {
                                Animal[] animals = new Animal[2];
                                animals[0] = new Tiger();
                                animals[1] = new Chicken();
                                for (Animal animal : animals) {
                                    System.out.println(animal.makeSound());

                                    if (animal instanceof Chicken) {
                                        Edible edibler = (Chicken) animal;
                                        System.out.println(edibler.howToEat());
                                    }
                                }
                            }
                        }
                </code></pre>

                <p>Interface Edible:</p>
                <pre><code class="language-java">
                        package edible;

                        public interface Edible {
                            String howToEat();
                        }
                </code></pre>

                <p>Implement Edible:</p>
                <pre><code class="language-java">
                        package animal;
                        import edible.Edible;

                        public class Chicken extends Animal implements Edible {
                            @Override
                            public String makeSound() {
                                return "Chicken: cluck-cluck!";
                            }

                            @Override
                            public String howToEat() {
                                return "could be fried";
                            }
                        }
                </code></pre>

                <p>Chạy thử chương trình kiểm thử và theo dõi kết quả.</p>

                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p13.png"
                     style="width: 50%;">

                <p>Bước 3: Xây dựng lớp Fruit, Apple và Orange.</p>
                <p> Mã kiểm thử</p>
                <p> Bổ sung hai khối mã sau vào phần mã kiểm thử:</p>
                <pre><code class="language-java">
                        import fruit.Fruit;
                        import fruit.Orange;
                        import fruit.Apple;

                        Fruit[] fruits = new Fruit[2];
                        fruits[0] = new Orange();
                        fruits[1] = new Apple();
                        for (Fruit fruit : fruits) {
                            System.out.println(fruit.howToEat());
                        }
                </code></pre>

                <p>Lớp Fruit</p>
                <pre><code class="language-java">
                        package fruit;

                        import edible.Edible;

                        public abstract class Fruit implements Edible { }
                </code></pre>
                <p>Lớp Apple</p>
                <pre><code class="language-java">
                        package fruit;

                        public class Apple extends Fruit {
                            @Override
                            public String howToEat() {
                                return "Apple could be slided";
                            }
                        }
                </code></pre>

                <p>Lớp Orange</p>
                <pre><code class="language-java">
                        package fruit;

                        public class Orange extends Fruit {
                            @Override
                            public String howToEat() {
                                return "Orange could be juiced";
                            }
                        }

                </code></pre>
                <p> Cấu trúc dự án như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p14.png"
                     style="width: 30%;">
                <p> Chạy chương trình kiểm thử và theo dõi kết quả.</p>
                <img src="${pageContext.request.contextPath}/course/module2/session7/img/img-p15.png"
                     style="width: 70%;">
            </div>
        </div>
    </div>
</div>


</body>
</html>
