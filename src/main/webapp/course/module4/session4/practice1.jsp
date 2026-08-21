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
                <a href="/course/module4/session4/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">4. ORM</a>
                <h4>[Thực hành] Ứng dụng quản lý danh sách khách hàng (sử dụng Hibernate) </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Nắm bắt được về khái niện ORM, Hibernate.</p>
                <p class="p1"> - Biết cách thêm và sử dụng thư viện trong Spring MVC.</p>

                <h5>Mô tả</h5>

                <p class="p1">- Tạo và hoàn thiện một dự án Spring MVC dùng để quản lý danh sách khách hàng</p>
                <p class="p1"> - Bổ sung thư viện hibernate-core để thực hiện ánh xạ model trong dự án tới database.</p>


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Clone dự án hoặc mở lại dự án bài thực hành thymeleaf</p>
                <img src="${pageContext.request.contextPath}/course/module4/session4/img/p1/img.png"
                     style="width:30%;">

                <p class="p0">Bước 2: Bổ sung thư viện trong file build.gradle và mô tả thực thể (entity) </p>
                <p class="p1">- Bổ sung thư viện hibernate-core</p>
                <p class="p1">- Bổ sung thư viện driver- mysql để kết nối mysql</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // .........
                    // https://mvnrepository.com/artifact/org.hibernate/hibernate-core
                    implementation group: 'org.hibernate', name: 'hibernate-core', version: '5.6.10.Final'
                    // https://mvnrepository.com/artifact/mysql/mysql-connector-java
                    implementation group: 'mysql', name: 'mysql-connector-java', version: '8.0.30'

                </code></pre>

                <p class="p1">- Dựa trên nguyên lý của ORM, ta có:</p>
                <p class="p2"> + Tabel - Entity / POJO class.</p>
                <p class="p2"> + Column - Properties.</p>
                <p class="p2"> + Record - Object / Instance.</p>
                <p class="p1">- Với Hibernate, việc mô tả một Entity thực hiện trên một class, bởi các Annotation cho
                    class và properties của class đó.</p>
                <p class="p2"> + Đánh dấu class Customer là một entity bằng annotation <b>@Entity</b>.</p>
                <p class="p2"> + <b>@Table </b>: chỉ định table tương ứng với entity trong database, đồng thời hỗ trợ
                    đổi tên
                    bảng khi tạo bảng.</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.model;

                    import javax.persistence.*;

                    @Entity
                    @Table(name = "customer")
                    public class Customer {

                        @Id
                        @GeneratedValue(strategy = GenerationType.IDENTITY)
                        private int id;
                        private String name;
                        private String email;
                        private String address;
                        public Customer() {
                        }
                        public Customer(int id, String name, String email, String address) {
                            this.id = id;
                            this.name = name;
                            this.email = email;
                            this.address = address;
                        }

                        public int getId() {
                            return id;
                        }

                        public void setId(int id) {
                            this.id = id;
                        }

                        public String getName() {
                            return name;
                        }

                        public void setName(String name) {
                            this.name = name;
                        }

                        public String getEmail() {
                            return email;
                        }

                        public void setEmail(String email) {
                            this.email = email;
                        }

                        public String getAddress() {
                            return address;
                        }

                        public void setAddress(String address) {
                            this.address = address;
                        }
                    }

                </code></pre>
                <p class="p1">- Trong một bảng luôn có một khóa chính là Primary key. Tương ứng trên entity, sử dụng
                    annotation <b>@Id</b> để đánh dấu cho properties tương ứng là khóa chính cho table được tạo bởi
                    entity.</p>
                <p class="p1">- <b>@GenerateValue:</b> quy định giá trị của khóa chính sẽ tự tăng trong database
                    (auto_increment).</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                @Id
                @GeneratedValue(strategy = GenerationType.IDENTITY)
                private int id;
                </code></pre>

                <p class="p1">- Các cấu hình này được khai báo trong file <b>hibernate.conf.xml</b> để trong thư mục <b>resource</b>:
                </p>
                <p class="p1">- Lưu ý: nếu thư mục resource không có thì có thể tự tạo, vị trí lưu xem cấu trúc dự án ở
                    bước 1</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
        &quot;-//Hibernate/Hibernate Configuration DTD 3.0//EN&quot;
        &quot;http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd&quot;&gt;
&lt;hibernate-configuration&gt;
    &lt;session-factory&gt;
        &lt;property name=&quot;hibernate.connection.driver_class&quot;&gt;com.mysql.cj.jdbc.Driver&lt;/property&gt;
        &lt;property name=&quot;hibernate.connection.url&quot;&gt;jdbc:mysql://localhost:3306/wc_customer_management?
                                                                        createDatabaseIfNotExist=true&lt;/property&gt;
        &lt;property name=&quot;hibernate.connection.username&quot;&gt;root&lt;/property&gt;
        &lt;property name=&quot;hibernate.connection.password&quot;&gt;123456&lt;/property&gt;
        &lt;property name=&quot;hibernate.dialect&quot;&gt;org.hibernate.dialect.MySQL8Dialect&lt;/property&gt;
        &lt;property name=&quot;show_sql&quot;&gt;true&lt;/property&gt;
        &lt;property name=&quot;hbm2ddl.auto&quot;&gt;update&lt;/property&gt;
        &lt;mapping class=&quot;com.webcoder.model.Customer&quot;/&gt;
    &lt;/session-factory&gt;
&lt;/hibernate-configuration&gt;
                </code></pre>

                <p class="p1">- Lưu ý:</p>
                <p class="p2">•<b>"createDatabaseIfNotExist=true"</b>: tự động tạo Database nếu chưa tạo</p>
                <p class="p2">•<b>"com.webcoder.model.Customer"</b>: Khai báo class Customer là một Entity </p>
                <p class="p2">•<b>"show_sql"</b> cho phép các câu SQL mà Hibernate sử dụng sẽ được log ra logstream của
                    hệ thống để lập trình viên dễ dàng biết được câu lệnh nào đang được gọi đến database</p>
                <p class="p2">• <b>"hbm2ddl.auto"</b> gợi ý rằng khi database không có table, hay các table trong
                    database cũ hơn so với mô tả tại entity class, hibernate sẽ tiến hành tự động update cấu trúc các
                    table này. Chú ý: Lập trình viên cần cân nhắc kĩ trước khi sử dụng tính năng này.</p>
                <p class="p0">Bước 5: Kết nối tới database bằng hibernate</p>
                <p class="p1"> - Xoá phần danh sách customer giả lập trong CustomerRepository</p>
                <p class="p1">- Bổ sung đoạn mã để khởi tạo SessionFactory vào trong CustomerRepository khi khởi chạy dự
                    án. Kiểm tra database để thấy bảng Customer đã được khởi tạo.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    private static SessionFactory sessionFactory;

                    static {
                        try {
                           sessionFactory = new Configuration()
                                            .configure("hibernate.conf.xml")
                                            .buildSessionFactory();
                           sessionFactory.close();
                        } catch (HibernateException e) {
                           e.printStackTrace();
                        }
                    }

                </code></pre>


                <p class="p0">Bước 7: Tạo EntityManager</p>
                <p class="p1">- Bổ sung đoạn mã để khởi tạo EntityManager để sử dụng hỗ trợ truy vấn CSDL bằng Entity
                    sau này. Loại bỏ đoạn mã đóng Session.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    private static SessionFactory sessionFactory;
                    private static EntityManager entityManager;

                    static {
                       try {
                          sessionFactory = new Configuration()
                                           .configure("hibernate.conf.xml")
                                           .buildSessionFactory();
                          entityManager = sessionFactory.createEntityManager();
                       } catch (HibernateException e) {
                          e.printStackTrace();
                       }
                    }

                </code></pre>


                <p class="p0">Bước 8: Bổ sung phần thân các phương thức trong CustomerRepository</p>
                <p class="p1">- Phương thức findAll():</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Override
                    public List< Customer> findAll() {
                        String queryStr = "SELECT c FROM Customer AS c";
                        TypedQuery< Customer> query = entityManager.createQuery(queryStr, Customer.class);
                        return query.getResultList();
                    }
                </code></pre>


                <p class="p1">- Phương thức findById():</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Override
                    public Customer findById(int id) {
                        String queryStr = "SELECT c FROM Customer AS c WHERE c.id = :id";
                        TypedQuery< Customer> query = entityManager.createQuery(queryStr, Customer.class);
                        query.setParameter("id", id);
                        return query.getSingleResult();
                    }
                </code></pre>

                <p class="p0">Bước 9: Triển khai phương thức save()</p>
                <p class="p1">- Phương thức save() hỗ trợ thêm mới hoặc cập nhật một bản ghi. Nghĩa là thay đổi dữ liệu
                    nên bắt buộc cần sử dụng đến Transaction:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Override
                    public void save(Customer customer) {
                        Transaction transaction = null;
                        Customer origin;
                        if (customer.getId() == 0) {
                          // thêm mới
                           origin = new Customer();
                        } else {
                          // chỉnh sửa
                           origin = findById(customer.getId());
                        }
                        try (Session session = sessionFactory.openSession()) {
                           transaction = session.beginTransaction();
                           origin.setName(customer.getName());
                           origin.setEmail(customer.getEmail());
                           origin.setAddress(customer.getAddress());
                           session.saveOrUpdate(origin);
                           transaction.commit();
                        } catch (Exception e) {
                           e.printStackTrace();
                           if (transaction != null) {
                              transaction.rollback();
                           }
                        }
                    }
                </code></pre>

                <p class="p0">Bước 10: Chạy chương trình và thử nghiệm các phương thức</p>
                <p class="p0">- Lưu ý: do phần ID tự tăng trong Database nên trên view ta bỏ trường id và xoá phần tạo
                    random Id controller cho hợp lý</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
