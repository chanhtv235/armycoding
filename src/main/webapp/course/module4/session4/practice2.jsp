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
                <h4>[Thực hành] Ứng dụng quản lý danh sách khách hàng (sử dụng JPA)</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập việc sử dụng Spring JPA với Hibernate.</p>
                <h5>Mô tả</h5>
                <p class="p1"> - Chúng ta sẽ xây dựng một ứng dụng quản lý khách hàng, sử dụng Spring JPA và
                    Hibernate.</p>
                <p class="p1"> - Ứng dụng bao gồm các chức năng:</p>
                <p class="p1"> • Hiển thị danh sách khách hàng</p>
                <p class="p1"> • Thêm mới khách hàng</p>
                <p class="p1"> • Sửa thông tin khách hàng</p>
                <p class="p1"> • Xóa khách hàng khỏi danh sách</p>
                <p class="p1"> • Hiển thị thông tin chi tiết của khách hàng</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tao dự án và đặt tên customer-management-jpa</p>
                <p class="p1">-Xem hướng dẫn bài trước</p>

                <img src="${pageContext.request.contextPath}/course/module4/session4/img/p2/img.png"
                     style="width:30%;">

                <p class="p0">Bước 2: Bổ sung các thư viện vào file build.gradle.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                dependencies {
                   compileOnly('javax.servlet:javax.servlet-api:4.0.1')
                  // https://mvnrepository.com/artifact/org.springframework/spring-webmvc
                  implementation group: 'org.springframework', name: 'spring-webmvc', version: '5.3.23'

                  // https://mvnrepository.com/artifact/org.thymeleaf/thymeleaf-spring5
                  implementation group: 'org.thymeleaf', name: 'thymeleaf-spring5', version: '3.1.1.RELEASE'
                  // https://mvnrepository.com/artifact/nz.net.ultraq.thymeleaf/thymeleaf-layout-dialect
                  implementation group: 'nz.net.ultraq.thymeleaf', name: 'thymeleaf-layout-dialect', version: '3.1.0'

                  // https://mvnrepository.com/artifact/mysql/mysql-connector-java
                  implementation group: 'mysql', name: 'mysql-connector-java', version: '8.0.30'
                  // https://mvnrepository.com/artifact/org.hibernate/hibernate-core
                  implementation group: 'org.hibernate', name: 'hibernate-core', version: '5.6.10.Final'
                  implementation group: 'org.springframework.data', name: 'spring-data-jpa', version: '2.7.0'
                }
                </code></pre>


                <p class="p0">Bước 3: Bổ sung các file cài đặt</p>
                <p class="p1">- File AppInit:</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                package com.webcoder.customer_management_jpa.configuration;

                import org.springframework.beans.BeansException;
                import org.springframework.beans.factory.annotation.Qualifier;
                import org.springframework.context.ApplicationContext;
                import org.springframework.context.ApplicationContextAware;
                import org.springframework.context.annotation.Bean;
                import org.springframework.context.annotation.ComponentScan;
                import org.springframework.context.annotation.Configuration;
                import org.springframework.jdbc.datasource.DriverManagerDataSource;
                import org.springframework.orm.jpa.JpaTransactionManager;
                import org.springframework.orm.jpa.JpaVendorAdapter;
                import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
                import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
                import org.springframework.transaction.PlatformTransactionManager;
                import org.springframework.transaction.annotation.EnableTransactionManagement;
                import org.springframework.web.servlet.config.annotation.EnableWebMvc;
                import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
                import org.thymeleaf.spring5.SpringTemplateEngine;
                import org.thymeleaf.spring5.templateresolver.SpringResourceTemplateResolver;
                import org.thymeleaf.spring5.view.ThymeleafViewResolver;
                import org.thymeleaf.templatemode.TemplateMode;

                import javax.persistence.EntityManager;
                import javax.persistence.EntityManagerFactory;
                import javax.sql.DataSource;
                import java.util.Properties;

                @Configuration
                @EnableWebMvc
                @EnableTransactionManagement
                @ComponentScan("com.webcoder")
                public class AppConfiguration implements WebMvcConfigurer, ApplicationContextAware {

                    private ApplicationContext applicationContext;

                    @Override
                    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
                        this.applicationContext = applicationContext;
                    }

                    //Thymeleaf
                    @Bean
                    public SpringResourceTemplateResolver templateResolver() {
                        SpringResourceTemplateResolver templateResolver = new SpringResourceTemplateResolver();
                        templateResolver.setApplicationContext(applicationContext);
                        templateResolver.setPrefix("/WEB-INF/views");
                        templateResolver.setSuffix(".html");
                        templateResolver.setTemplateMode(TemplateMode.HTML);
                        templateResolver.setCharacterEncoding("UTF-8");
                        return templateResolver;
                    }

                    @Bean
                    public SpringTemplateEngine templateEngine() {
                        SpringTemplateEngine templateEngine = new SpringTemplateEngine();
                        templateEngine.setTemplateResolver(templateResolver());
                        return templateEngine;
                    }

                    @Bean
                    public ThymeleafViewResolver viewResolver() {
                        ThymeleafViewResolver viewResolver = new ThymeleafViewResolver();
                        viewResolver.setTemplateEngine(templateEngine());
                        viewResolver.setCharacterEncoding("UTF-8");
                        return viewResolver;
                    }

                    //JPA
                    @Bean
                    @Qualifier(value = "entityManager")
                    public EntityManager entityManager(EntityManagerFactory entityManagerFactory) {
                        return entityManagerFactory.createEntityManager();
                    }

                    @Bean
                    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
                        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
                        em.setDataSource(dataSource());
                        em.setPackagesToScan("com.webcoder.customer_management_jpa.model");

                        JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
                        em.setJpaVendorAdapter(vendorAdapter);
                        em.setJpaProperties(additionalProperties());
                        return em;
                    }

                    @Bean
                    public DataSource dataSource() {
                        DriverManagerDataSource dataSource = new DriverManagerDataSource();
                        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
                        dataSource.setUrl("jdbc:mysql://localhost:3306/wc_customer_manager_jpa?
                                                                                    createDatabaseIfNotExist=TRUE");
                        dataSource.setUsername("root");
                        dataSource.setPassword("codegym");
                        return dataSource;
                    }

                    @Bean
                    public PlatformTransactionManager transactionManager(EntityManagerFactory emf) {
                        JpaTransactionManager transactionManager = new JpaTransactionManager();
                        transactionManager.setEntityManagerFactory(emf);
                        return transactionManager;
                    }

                    public Properties additionalProperties() {
                        Properties properties = new Properties();
                        properties.setProperty("hibernate.hbm2ddl.auto", "update");
                        properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
                        return properties;
                    }
                }

                </code></pre>

                <p class="p0">Bước 4: Tạo lớp customer trong thư mục model</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_management_jpa.model;

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

                <p class="p0">Bước 5: Tạo repository</p>
                <p class="p1">-- Interface ICustomerRepository </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_management_jpa.repository;

                    import com.webcoder.customer_management_jpa.model.Customer;
                    import java.util.List;

                    public interface ICustomerRepository {
                        List< Customer> findAll();

                        void save(Customer customer);

                        Customer findById(int id);

                        void remove(int id);
                    }
                </code></pre>


                <p class="p1">-Lớp CustomerRepository: triển khai chi tiết các phương thức.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                package com.webcoder.customer_management_jpa.repository;

                import com.webcoder.customer_management_jpa.model.Customer;
                import org.springframework.stereotype.Repository;

                import javax.persistence.EntityManager;
                import javax.persistence.NoResultException;
                import javax.persistence.PersistenceContext;
                import javax.persistence.TypedQuery;
                import javax.transaction.Transactional;
                import java.util.List;


                @Repository
                @Transactional
                public class CustomerRepository implements ICustomerRepository {
                    @PersistenceContext
                    private EntityManager entityManager;
                    @Override
                    public List< Customer> findAll() {
                        TypedQuery< Customer> query =
                                        entityManager.createQuery("select c from Customer c", Customer.class);
                        return query.getResultList();

                    }

                    // method này dùng cho cả thêm mới và chỉnh sửa
                    @Override
                    public void save(Customer customer) {
                        if (customer.getId() != 0) {
                            entityManager.merge(customer);
                        } else {
                            entityManager.persist(customer);
                        }
                    }

                    @Override
                    public Customer findById(int id) {
                        TypedQuery< Customer> query =
                            entityManager.createQuery("select c from Customer c where c.id=:id", Customer.class);
                        query.setParameter("id", id);
                        try {
                            return query.getSingleResult();
                        } catch (NoResultException e) {
                            return null;
                        }
                    }

                    @Override
                    public void remove(int id) {
                        Customer customer = findById(id);
                        if (customer != null) {
                            entityManager.remove(customer);
                        }
                    }
                }
                </code></pre>

                <p class="p0">Bước 6: Tạo service</p>
                <p class="p1">-Interface IcustomerService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_management_jpa.service;

                    import com.webcoder.customer_management_jpa.model.Customer;
                    import java.util.List;

                    public interface ICustomerService {
                        List< Customer> findAll();

                        void save(Customer customer);

                        Customer findById(int id);

                        void update(Customer customer);

                        void remove(int id);
                    }
                </code></pre>

                <p class="p1">- Lớp CustomerService: triển khai các phương thức của phần service</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_management_jpa.service;

                    import com.webcoder.customer_management_jpa.model.Customer;
                    import com.webcoder.customer_management_jpa.repository.ICustomerRepository;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Service;

                    import java.util.List;

                    @Service
                    public class CustomerService implements ICustomerService{
                        @Autowired
                        private ICustomerRepository customerRepository;
                        @Override
                        public List< Customer> findAll() {
                            return customerRepository.findAll();
                        }
                        @Override
                        public void save(Customer customer) {
                          customerRepository.save(customer);
                        }
                        @Override
                        public Customer findById(int id) {
                            return customerRepository.findById(id);
                        }
                        @Override
                        public void update(Customer customer) {
                         customerRepository.save(customer);
                        }
                        @Override
                        public void remove(int id) {
                         customerRepository.remove(id);
                        }
                    }
                </code></pre>

                <p class="p0">Bước 7: Tạo controller</p>
                <p class="p1">- Lớp CustomerController chứa các phương thức để điều hướng và xử lý request.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_management_jpa.controller;

                    import com.webcoder.customer_management_jpa.model.Customer;
                    import com.webcoder.customer_management_jpa.service.ICustomerService;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.ui.Model;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.PathVariable;
                    import org.springframework.web.bind.annotation.PostMapping;
                    import org.springframework.web.bind.annotation.RequestMapping;
                    import org.springframework.web.servlet.mvc.support.RedirectAttributes;

                    import java.util.List;

                    @Controller
                    @RequestMapping("/customers")
                    public class CustomerController {
                        @Autowired
                        private  ICustomerService customerService;

                        @GetMapping("")
                        public String index(Model model) {

                            List< Customer> customerList = customerService.findAll();
                            model.addAttribute("customers", customerList);
                            return "/index";
                        }

                        @GetMapping("/create")
                        public String create(Model model) {
                            model.addAttribute("customer", new Customer());
                            return "/create";
                        }

                        @PostMapping("/save")
                        public String save(Customer customer) {
                            customerService.save(customer);
                            return "redirect:/customers";
                        }

                        @GetMapping("/{id}/edit")
                        public String update(@PathVariable int id, Model model) {
                            model.addAttribute("customer", customerService.findById(id));
                            return "/update";
                        }

                        @PostMapping("/update")
                        public String update(Customer customer) {
                            customerService.update(customer);
                            return "redirect:/customers";
                        }

                        @GetMapping("/{id}/delete")
                        public String delete(@PathVariable int id, Model model) {
                            model.addAttribute("customer", customerService.findById(id));
                            return "/delete";
                        }

                        @PostMapping("/delete")
                        public String delete(Customer customer, RedirectAttributes redirect) {
                            customerService.remove(customer.getId());
                            redirect.addFlashAttribute("success", "Removed customer successfully!");
                            return "redirect:/customers";
                        }

                        @GetMapping("/{id}/view")
                        public String view(@PathVariable int id, Model model) {
                            model.addAttribute("customer", customerService.findById(id));
                            return "/view";
                        }
                    }

                </code></pre>

                <p class="p0">Bước 8: Xây dựng trang layout</p>
                <p class="p1">- Ta thấy các file index.html, create.html, edit.html, delete.html, view.html đều có phần
                    chung là head (thẻ head) và footer (thẻ footer) nên chúng ta sẽ giữ 3 phần chung này gộp vào 1 file
                    layout.html đặt trong thư mục views. Và đánh dấu mỗi phần sử dụng thuộc tính th:fragment.</p>
                <p class="p1">- File layout.html cũng chứa các khai báo về Style Sheet cho tất cả các trang con.</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
                    &lt;head th:fragment=&quot;head&quot;&gt;
                        &lt;meta charset=&quot;utf-8&quot; /&gt;
                        &lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot; /&gt;
                        &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot; /&gt;

                        &lt;title&gt;Spring Customer&lt;/title&gt;

                        &lt;style type=&quot;text/css&quot;&gt;
                            h3{background-color: blue; color: white; padding: 10px 0 10px 20px;}
                            footer{margin: 10px 0;}

                            #customers {
                                font-family: &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif;
                                border-collapse: collapse;
                                width: 100%;
                            }

                            #customers td, #customers th {
                                border: 1px solid #ddd;
                                padding: 8px;
                            }

                            #customers tr:nth-child(even){background-color: #f2f2f2;}

                            #customers tr:hover {background-color: #ddd;}

                            #customers th {
                                padding-top: 12px;
                                padding-bottom: 12px;
                                text-align: left;
                                background-color: #4CAF50;
                                color: white;
                            }

                            input[type=text],input[type=email]{
                                width: 100%;
                                padding: 12px 0px;
                                margin: 8px 0;
                                display: inline-block;
                                border: 1px solid #ccc;
                                border-radius: 4px;
                                box-sizing: border-box;
                            }

                            input[type=submit] {
                                width: 300px;
                                background-color: #4CAF50;
                                color: white;
                                padding: 14px 20px;
                                margin: 8px 0;
                                border: none;
                                border-radius: 4px;
                                cursor: pointer;
                                text-align: center;
                            }

                            input[type=submit]:hover {
                                background-color: #45a049;
                            }

                            #form {
                                width: 500px;
                                border-radius: 5px;
                                background-color: #f2f2f2;
                                padding: 20px;
                            }

                            .notify span{font-size: 15px; color: blue;}
                        &lt;/style&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;footer th:fragment=&quot;footer&quot;&gt;
                        &copy; 43-Web-coder
                    &lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p1">- Lúc này ở các trang index.html, create.html, edit.html, delete.html, view.html, chúng ta
                    sẽ thay thế các phần head và footer như sau:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">• layout sẽ tham chiếu tới file layout.html</p>
                <p class="p2">• head và footer sau dấu :: là các fragment selector, chính là giá trị của thuộc tính
                    th:fragment của các thẻ head, footer trong trang layout.html.</p>
                <p class="p0">-Bước 9: Hiển thị danh sách khách hàng</p>
                <p class="p0">-9.1. Controller</p>
                <p class="p1">-Trước tiên chúng ta sẽ tạo CustomerController trong thư mục controller:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    @Controller
                    @RequestMapping("/customer")
                    public class CustomerController {
                        private final ICustomerService customerService = new CustomerService();

                        @GetMapping("")
                        public String index(Model model) {

                            List< Customer> customerList = customerService.findAll();
                            model.addAttribute("customers", customerList);
                            return "/index";
                        }
                    }
                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">• Annotation @Controller giúp Spring xác định lớp hiện tại là một Controller.</p>
                <p class="p2">• Annotation @GetMapping xác định phương thức Index sẽ đón nhận các request có HTTP
                    method là GET và URI pattern là "/"</p>
                <p class="p2">• Phương thức Index được truyền vào một tham số có kiểu dữ liệu là Model. Model có nhiệm
                    vụ là truyền dữ liệu từ Controller tới View. Ở đây, chúng ta sẽ lấy ra danh sách các khách hàng
                    thông qua customerService.findAll(). Sau đó gắn danh sách này vào Model thông qua phương thức
                    addAttribute(). customers chính là tên biến đại diện cho danh sách mà ta sẽ dùng ở View sau này.</p>
                <p class="p2">• Phương thức Index sẽ trả về một String, từ String này mà Spring MVC sẽ suy ra View nào
                    sẽ nhận dữ liệu từ Controller (return "index"), vậy View sẽ nhận dữ liệu ở đây là index.html</p>
                <p class="p0">9.2. View</p>
                <p class="p1">- Chúng ta tạo view index.html như sau:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
     &lt;!DOCTYPE html&gt;
     &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
     &lt;head th:replace=&quot;/layout :: head&quot;&gt;
     &lt;/head&gt;
     &lt;body&gt;
     &lt;h3&gt;Customers&lt;/h3&gt;
     &lt;p&gt;
         &lt;a th:href=&quot;@{/customer/create}&quot;&gt;
             Add new customer
         &lt;/a&gt;
     &lt;/p&gt;

     &lt;table id = &quot;customers&quot;&gt;
         &lt;thead&gt;
         &lt;tr&gt;
             &lt;th&gt;Name&lt;/th&gt;
             &lt;th&gt;Email&lt;/th&gt;
             &lt;th&gt;Address&lt;/th&gt;
             &lt;th&gt;Edit&lt;/th&gt;
             &lt;th&gt;Delete&lt;/th&gt;
             &lt;th&gt;View&lt;/th&gt;
         &lt;/tr&gt;
         &lt;/thead&gt;
         &lt;tbody&gt;
         &lt;tr th:each=&quot;row,rowStat : ${customers}&quot;&gt;
             &lt;td th:text=&quot;${row.getName()}&quot;&gt;&lt;/td&gt;
             &lt;td th:text=&quot;${row.getEmail()}&quot;&gt;&lt;/td&gt;
             &lt;td th:text=&quot;${row.getAddress()}&quot;&gt;&lt;/td&gt;
             &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/edit(id=${row.getId()})}&quot;&gt;edit&lt;/a&gt;&lt;/td&gt;
             &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/delete(id=${row.getId()})}&quot;&gt;delete&lt;/a&gt;&lt;/td&gt;
             &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/view(id=${row.getId()})}&quot;&gt;view&lt;/a&gt;&lt;/td&gt;
         &lt;/tr&gt;
         &lt;/tbody&gt;
     &lt;/table&gt;
     &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
     &lt;/body&gt;
     &lt;/html&gt;
     </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p1">- Khai báo namespace thymeleaf thông qua thuộc tính th:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
                </code></pre>

                <p class="p0">- Gắn phần head và footer đã được khai báo trong file layout.html:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;&lt;/head
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                </code></pre>

                <p class="p1">- Thuộc tính th:href khai báo đường link trong thẻ a.</p>
                <p class="p1">- Thuộc tính th:if sử dụng để kiểm tra điều kiện.</p>
                <p class="p1">- Thuộc tính th:each tương ứng với câu lệnh for each.</p>
                <p class="p1">- Thuộc tính th:text dùng để đổ dữ liệu dưới dạng text vào thẻ HTML.</p>
                <p class="p1">- ${customers} là danh sách khách hàng sẽ được lặp, chính là model customers được
                    controller truyền lên view.</p>
                <p class="p1">- row đại diện cho một khách hàng tại một bước lặp cụ thể.</p>
                <p class="p1">- rowStat là một biến trạng thái, giúp chúng ta theo dõi vòng lặp.</p>
                <p class="p1">- \${} là biểu thức đánh giá các biến , biểu thức hay model.</p>
                <p class="p0">9.3. Cấu hình Artifact: Web Application: Exploded </p>
                <p class="p0">9.4. Cấu hình Tomcat</p>
                <p class="p0">9.5. Chạy ứng dụng.</p>
                <p class="p1">- Ứng dụng sau khi chạy sẽ hiển thị như sau:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session3/img/p1/img_1.png"
                     style="width:70%;">

                <p class="p0">Bước 10: Thêm mới khách hàng</p>
                <p class="p0">10.1. Hiển thị form thêm mới khách hàng</p>
                <p class="p1">- Chú ý: Đoạn mã sau đây trên trang index.html sẽ điều hướng đến trang create.html:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;a th:href=&quot;@{/customer}&quot;&gt;
                        Back to customer list
                    &lt;/a&gt;
                </code></pre>
                <p class="p1">- Trong class CustomerController, ta viết thêm phương thức create để hiển thị trang
                    create.html:</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/create")
                    public String create(Model model) {
                        model.addAttribute("customer", new Customer());
                        return "/create";
                    }
                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">• Giá trị trong @GetMapping tương ứng đường link của button "Add new customer".</p>
                <p class="p2">• Chúng ta sẽ truyền sang view create.html một model Customer có tên là customer. Mỗi
                    thuộc tính của customer sẽ tương ứng với một input trong form.</p>
                <p class="p1">- Trang create.html sẽ có dạng như sau:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;&lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;Add Customer&lt;/h3&gt;
                    &lt;p&gt;
                        &lt;a th:href=&quot;@{/customer}&quot;&gt;
                            Back to customer list
                        &lt;/a&gt;
                    &lt;/p&gt;
                    &lt;div id=&quot;form&quot;&gt;
                        &lt;form th:action=&quot;@{/customer/save}&quot; th:object=&quot;${customer}&quot;
                              method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                            &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                            &lt;div&gt;
                                &lt;label&gt;Name&lt;/label&gt;
                                &lt;input type=&quot;text&quot; th:field=&quot;*{name}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;div&gt;
                                &lt;label&gt;Email&lt;/label&gt;
                                &lt;input type=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;div&gt;
                                &lt;label&gt;Address&lt;/label&gt;
                                &lt;input type=&quot;text&quot; th:field=&quot;*{address}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">+ th:action chỉ ra đường dẫn sẽ xử lý submit form, ${customer} ở th:object chính là biến
                    customer.</p>
                <p class="p1">- Như đã nói ở trên, mỗi thuộc tính của customer sẽ tương ứng với một input trong form,
                    nên chúng ta sẽ thêm thuộc tính th:field="*{fieldname}" vào các input. Do khi submit form chúng ta
                    cần phải chỉ ra entity nào sẽ được gửi lên cho nên chúng ta phải thêm đoạn code ở dưới để chỉ ra ID
                    của entity. </p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                </code></pre>

                <p class="p1">- Trong controller, ta sẽ tạo phương thức save() để lưu một customer, như sau:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @PostMapping("/save")
                    public String save(Customer customer) {
                        customer.setId((int) (Math.random() * 10000));
                        customerService.save(customer);
                        return "redirect:/customer";
                    }
                </code></pre>
                <p class="p1">- Trong đó:</p>
                <p class="p2">• Do request gửi lên có HTTP method là POST, nên ta sẽ sử dụng @PostMapping.</p>
                <p class="p2">• Đối tượng customer được truyền vào save() chính là đối tượng customer chúng ta đã truyền
                    từ phương thức create() sang view create.html. Đối tượng này sẽ lưu thông tin của người dùng nhập
                    vào.</p>
                <p class="p2">• customer.setId() sẽ tạo Id ngẫu nhiên cho đối tượng customer.</p>
                <p class="p2">• Sau khi lưu customer, chúng ta sẽ redirect về trang danh sách khách hàng. Chuỗi đằng sau
                    "redirect:" là đường dẫn của trang mà mình muốn redirect. Đồng thời, chúng ta cũng sẽ gửi một Flash
                    message về trang danh sách khách hàng để thông báo lưu thành công, bằng cách sử dụng
                    redirect.addFlashAttribute(messageName, messageContent).</p>
                <p class="p1">- Bạn chú ý tại file index.html, đoạn mã sau để hiển thị thông báo:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;div class=&quot;notify&quot;&gt;
                        &lt;div th:if=&quot;${success}&quot;&gt;
                            &lt;span th:text=&quot;${success}&quot;&gt;&lt;/span&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                </code></pre>

                <p class="p0">Bước 11: Sửa thông tin khách hàng</p>
                <p class="p0">11.1. Hiển thị form sửa thông tin khách hàng:</p>
                <p class="p1">- Đoạn mã sau đây trên trang index.html sẽ điều hướng đến trang edit.html</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
             &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/edit(id=${row.getId()})}&quot;&gt;edit&lt;/a&gt;&lt;/td&gt;
                </code></pre>

                <p class="p1">-Trong class CustomerController, ta viết thêm phương thức edit để hiển thị trang
                    edit.html:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    @GetMapping("/{id}/edit")
                    public String edit(@PathVariable int id, Model model) {
                        model.addAttribute("customer", customerService.findById(id));
                        return "/edit";
                    }
                </code></pre>

                <p class="p1">- Trong đó:</p>
                <p class="p2">• Tham số @PathVariable int id lấy id của customer từ đường dẫn rồi gán vào biến id.</p>
                <p class="p2">• hàm customerService.findById(id) sẽ lấy customer theo id rồi truyền sang view
                    edit.html</p>
                <p class="p1">- Trang edit.html sẽ có dạng như sau:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
             &lt;!DOCTYPE html&gt;
             &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
             &lt;head th:replace=&quot;/layout :: head&quot;&gt;&lt;/head&gt;
             &lt;body&gt;
             &lt;h3&gt;Edit Customer&lt;/h3&gt;
             &lt;p&gt;
                 &lt;a th:href=&quot;@{/customer}&quot;&gt;
                     Back to customer list
                 &lt;/a&gt;
             &lt;/p&gt;
             &lt;div id=&quot;form&quot;&gt;
             &lt;form action=&quot;#&quot; th:action=&quot;@{/customer/update}&quot; th:object=&quot;${customer}&quot;
                       method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                     &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                     &lt;div&gt;
                         &lt;label&gt;Name&lt;/label&gt;
                         &lt;input type=&quot;text&quot; th:field=&quot;*{name}&quot;/&gt;
                     &lt;/div&gt;
                     &lt;div&gt;
                         &lt;label&gt;Email&lt;/label&gt;
                         &lt;input type=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                     &lt;/div&gt;
                     &lt;div&gt;
                         &lt;label&gt;Address&lt;/label&gt;
                         &lt;input type=&quot;text&quot; th:field=&quot;*{address}&quot;/&gt;
                     &lt;/div&gt;
                     &lt;input type=&quot;submit&quot; value=&quot;Edit&quot;/&gt;
                 &lt;/form&gt;
             &lt;/div&gt;
             &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
             &lt;/body&gt;
             &lt;/html&gt;
         </code></pre>

                <p class="p1">- Trong controller, ta sẽ tạo phương thức update() để lưu một sửa đổi, như sau:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @PostMapping("/update")
                    public String update(Customer customer) {
                        customerService.update(customer.getId(), customer);
                        return "redirect:/customer";
                    }
                </code></pre>

                <p class="p0">Bước 12: Xóa khách hàng</p>
                <p class="p0">12.1. Hiển thị form xóa khách hàng:</p>
                <p class="p1">- Đoạn mã sau đây trên trang index.html sẽ điều hướng đến trang delete.html:</p>

                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
          &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/delete(id=${row.getId()})}&quot;&gt;delete&lt;/a&gt;&lt;/td&gt;
          </code></pre>

                <p class="p1">- Trong class CustomerController, ta viết thêm phương thức GET delete() để hiển thị trang
                    delete.html:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/{id}/delete")
                    public String delete(@PathVariable int id, Model model) {
                        model.addAttribute("customer", customerService.findById(id));
                        return "/delete";
                    }
                </code></pre>

                <p class="p1">- Trang delete.html sẽ có dạng như sau:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
         &lt;!DOCTYPE html&gt;
         &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
         &lt;head th:replace=&quot;/layout :: head&quot;&gt;&lt;/head&gt;
         &lt;body&gt;
         &lt;h3&gt;Remove Customer&lt;/h3&gt;
         &lt;p&gt;
             &lt;a th:href=&quot;@{/customer}&quot;&gt;
                 Back to customer list
             &lt;/a&gt;
         &lt;/p&gt;
         &lt;div id=&quot;form&quot;&gt;
             &lt;form action=&quot;#&quot; th:action=&quot;@{/customer/delete}&quot; th:object=&quot;${customer}&quot;
                   method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                 &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                 &lt;div&gt;
                     &lt;label&gt;Name&lt;/label&gt;
                     &lt;input type=&quot;text&quot; th:field=&quot;*{name}&quot;/&gt;
                 &lt;/div&gt;
                 &lt;div&gt;
                     &lt;label&gt;Email&lt;/label&gt;
                     &lt;input type=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                 &lt;/div&gt;
                 &lt;div&gt;
                     &lt;label&gt;Address&lt;/label&gt;
                     &lt;input type=&quot;text&quot; th:field=&quot;*{address}&quot;/&gt;
                 &lt;/div&gt;
                 &lt;input type=&quot;submit&quot; value=&quot;Remove&quot;/&gt;
             &lt;/form&gt;
         &lt;/div&gt;
         &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
         &lt;/body&gt;
         &lt;/html&gt;
         </code></pre>

                <p class="p1">- Trong controller, ta sẽ tạo phương thức POST delete() để xóa khách hàng, như sau:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                @PostMapping("/delete")
                public String delete(Customer customer, RedirectAttributes redirect) {
                    customerService.remove(customer.getId());
                    redirect.addFlashAttribute("success", "Removed customer successfully!");
                    return "redirect:/customer";
                }
            </code></pre>

                <p class="p0">Bước 13: View chi tiết khách hàng</p>
                <p class="p1">- Đoạn mã sau đây trên trang index.html sẽ điều hướng đến trang view.html:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
             &lt;td&gt;&lt;a th:href=&quot;@{/customer/{id}/view(id=${row.getId()})}&quot;&gt;view&lt;/a&gt;&lt;/td&gt;
             </code></pre>

                <p class="p1">- Trong class CustomerController, ta viết thêm phương thức GET view() để hiển thị trang
                    view.html:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/{id}/view")
                    public String view(@PathVariable int id, Model model) {
                        model.addAttribute("customer", customerService.findById(id));
                        return "/view";
                    }
                </code></pre>

                <p class="p1">- Trang view.html sẽ có dạng như sau:</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot;&gt;
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;&lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;View Customer&lt;/h3&gt;
                    &lt;p&gt;
                        &lt;a th:href=&quot;@{/customer}&quot;&gt;
                            Back to customer list
                        &lt;/a&gt;
                    &lt;/p&gt;
                    &lt;div id=&quot;detail&quot;&gt;
                        &lt;div class=&quot;cusdetail&quot;&gt;
                            &lt;label&gt;Name:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.name}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                        &lt;div class=&quot;cusdetail&quot;&gt;
                            &lt;label&gt;Email:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.email}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                        &lt;div class=&quot;cusdetail&quot;&gt;
                            &lt;label&gt;Address:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.address}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 14: Chạy chương trình</p>
                <p class="p1">- Các bạn chạy chương trình rồi quan sát kết quả.</p>
                <p class="p1">- Lúc này dự án của chúng ta sẽ chạy trên cổng 8080: http://localhost:8080</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
