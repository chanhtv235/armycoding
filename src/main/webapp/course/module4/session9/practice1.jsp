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
                <a href="/course/module4/session9/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">9.Webservice</a>
                <h4> [Thực hành] Quản lý khách hàng sử dụng RESTful </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập triển khai RESTful webservice trong một ứng dụng Spring boot</p>
                <h5>Mô tả</h5>

                <p class="p1">- Trong phần này, chúng ta sẽ phát triển một ứng dụng quản lý khách hàng, ứng dụng này chỉ
                    bao gồm phần back-end, cung cấp các API để thao tác với khách hàng:</p>
                <p class="p2">• Trả về danh sách khách hàng</p>
                <p class="p2">• Thêm khách hàng mới</p>
                <p class="p2">• Xoá khách hàng</p>
                <p class="p2">• Chỉnh sửa thông tin khách hàng</p>
                <p class="p2">• Sử dụng POSTMAN để kiểm tra hoạt động của các RESTful API.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: - Tạo mới dự án spring-customer-management-restful theo hình ảnh dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img.png"
                     style="width:60%;">
                <p class="p1">-Chọn thư viện như trên hình bên dưới</p>

                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_1.png"
                     style="width:60%;">
                <p class="p0">Bước 2:-Cấu trúc dự án như bên dưới</p>

                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_2.png"
                     style="width:30%;">
                <p class="p1">Cấu hình hibernate trong file application.properties</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    spring.application.name=spring_customer_management_restful
                    spring.datasource.url=jdbc:mysql://localhost:3306/wc_customer_manager_webservice?
                                        createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true&useSSL=false
                    spring.datasource.username=root
                    spring.datasource.password=123456
                    spring.jpa.hibernate.ddl-auto=update
                    spring.jpa.show-sql=true

                </code></pre>

                <p class="p0">Bước 3: Tạo lớp model Customer</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">

                    import jakarta.persistence.*;

                    @Entity
                    @Table(name = "customers")
                    public class Customer {
                        @Id
                        @GeneratedValue(strategy = GenerationType.IDENTITY)
                        private Long id;
                        private String firstName;
                        private String lastName;

                        public Customer(String firstName, String lastName) {
                            this.firstName = firstName;
                            this.lastName = lastName;
                        }

                        public Customer() {
                        }

                        public Long getId() {
                            return id;
                        }

                        public void setId(Long id) {
                            this.id = id;
                        }

                        public String getFirstName() {
                            return firstName;
                        }

                        public void setFirstName(String firstName) {
                            this.firstName = firstName;
                        }

                        public String getLastName() {
                            return lastName;
                        }

                        public void setLastName(String lastName) {
                            this.lastName = lastName;
                        }
                    }
                </code></pre>

                <p class="p0">Bước 4: Tạo repository: interface ICustomerRepository</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.spring_customer_management_restful.repository;

                    import com.webcoder.spring_customer_management_restful.model.Customer;
                    import org.springframework.data.jpa.repository.JpaRepository;
                    import org.springframework.data.repository.PagingAndSortingRepository;
                    import org.springframework.stereotype.Repository;

                    @Repository
                    public interface ICustomerRepository extends JpaRepository< Customer, Long> {

                    }
                </code></pre>

                <p class="p0">Bước 5: Tạo các service</p>
                <p class="p0 p1">- Tạo interface ICustomerService </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.spring_customer_management_restful.service;

                    import com.webcoder.spring_customer_management_restful.model.Customer;

                    import java.util.Optional;

                    public interface ICustomerService {
                        Iterable< Customer> findAll();

                        Optional< Customer> findById(Long id);

                        Customer save(Customer customer);

                        void remove(Long id);

                    }
                </code></pre>

                <p class="p0 p1">- Tạo lớp CustomerService triển khai các phương thức đã khai báo:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.spring_customer_management_restful.service;

                    import com.webcoder.spring_customer_management_restful.model.Customer;
                    import com.webcoder.spring_customer_management_restful.repository.ICustomerRepository;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Service;

                    import java.util.Optional;

                    @Service
                    public class CustomerService implements ICustomerService{

                        @Autowired
                        private ICustomerRepository customerRepository;

                        @Override
                        public Iterable< Customer> findAll() {
                            return customerRepository.findAll();
                        }

                        @Override
                        public Optional< Customer> findById(Long id) {
                            return customerRepository.findById(id);
                        }

                        @Override
                        public Customer save(Customer customer) {
                            return customerRepository.save(customer);
                        }

                        @Override
                        public void remove(Long id) {
                            customerRepository.deleteById(id);
                        }
                    }
                </code></pre>

                <p class="p0">Bước 5: Tạo CustomerController</p>
                <p class="p1">- Sau đây là controller dựa trên REST, thi hành REST API.</p>
                <p class="p2">• GET request "/api/customers/" trả về danh sách các khách hàng.</p>
                <p class="p2">• GET request "/api/customers/1" trả về khách hàng với ID 1.</p>
                <p class="p2">• POST request "/api/customers/" với một JSON object tạo một khách hàng mới.</p>
                <p class="p2">• PUT request "/api/customers/1" với một JSON object cập nhật khách hàng có ID 1.</p>
                <p class="p2">• DELETE request "/api/customers/1" xóa khách hàng có ID 1.</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.spring_customer_management_restful.controller;

                    import com.webcoder.spring_customer_management_restful.model.Customer;
                    import com.webcoder.spring_customer_management_restful.service.ICustomerService;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.http.HttpStatus;
                    import org.springframework.http.ResponseEntity;
                    import org.springframework.web.bind.annotation.*;

                    import java.util.List;
                    import java.util.Optional;

                    @RestController
                    @RequestMapping("/api/customers")
                    public class CustomerController {

                        @Autowired
                        private ICustomerService iCustomerService;

                        @GetMapping
                        public ResponseEntity< Iterable< Customer>> findAllCustomer() {
                            List< Customer> customers = (List< Customer>) iCustomerService.findAll();
                            if (customers.isEmpty()) {
                                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
                            }
                            return new ResponseEntity<>(customers, HttpStatus.OK);
                        }

                        @GetMapping("/{id}")
                        public ResponseEntity< Customer> findCustomerById(@PathVariable Long id) {
                            Optional< Customer> customerOptional = iCustomerService.findById(id);
                            if (!customerOptional.isPresent()) {
                                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                            }
                            return new ResponseEntity<>(customerOptional.get(), HttpStatus.OK);
                        }

                        @PostMapping
                        public ResponseEntity< Customer> saveCustomer(@RequestBody Customer customer) {
                            return new ResponseEntity<>(iCustomerService.save(customer), HttpStatus.CREATED);
                        }

                        @PutMapping("/{id}")
                        public ResponseEntity< Customer> updateCustomer(@PathVariable Long id,
                                                                        @RequestBody Customer customer) {
                            Optional< Customer> customerOptional = iCustomerService.findById(id);
                            if (!customerOptional.isPresent()) {
                                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                            }
                            customer.setId(customerOptional.get().getId());
                            return new ResponseEntity<>(iCustomerService.save(customer), HttpStatus.OK);
                        }

                        @DeleteMapping("/{id}")
                        public ResponseEntity< Customer> deleteCustomer(@PathVariable Long id) {
                            Optional< Customer> customerOptional = iCustomerService.findById(id);
                            if (!customerOptional.isPresent()) {
                                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                            }
                            iCustomerService.remove(id);
                            return new ResponseEntity<>(customerOptional.get(), HttpStatus.OK);
                        }
                    }

                </code></pre>


                <p class="p1">- Trong đó:</p>
                <p class="p2">• @RestController là kết hợp của @Controller và @ResponseBody</p>
                <p class="p2">• @RequestBody: Nếu tham số phương thức được chú thích bằng @RequestBody, Spring sẽ liên
                    kết phần thân yêu cầu HTTP đến với tham số đó.</p>
                <p class="p2">• ResponseEntity đại diện cho toàn bộ phản hồi HTTP</p>
                <p class="p2">• @PathVariable chỉ ra rằng tham số phương thức sẽ được liên kết với URI (id)</p>
                <p class="p0">Bước 6: Triển khai và test API: Chúng sử dụng POSTMAN để kiểm tra các API đã viết.</p>
                <p class="p1">- Hiển thị danh sách khách hàng: sử dụng API: <b>http://localhost:8080/api/customers</b> -> Nhấn
                    Send:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_3.png"
                     style="width:70%;">
                <p class="p1">- Hiển thị khách hàng theo ID: sử dụng API: <b>http://localhost:8080/api/customers/1</b> -> Nhấn Send:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_4.png"
                     style="width:70%;">
                <p class="p1">- Thêm mới khách hàng: sử dụng API: http://localhost:8080/api/customers với method POST ->  chọn tab body -> chọn raw -> chọn JSON (application/json)
                    -> viết thêm đối tượng customer dưới dạng JSON -> nhấn Send:
                </p>
                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_5.png"
                     style="width:70%;">
                <p class="p1">- Sửa thông tin khách hàng: sử dụng API: http://localhost:8080/api/customers/1 với method PUT ->  chọn tab body -> chọn raw -> chọn JSON (application/json)
                    -> viết thêm đối tượng customer dưới dạng JSON -> nhấn Send:
                </p>

                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_6.png"
                     style="width:70%;">
                <p class="p1">- Xóa khách hàng: sử dụng API: http://localhost:8080/api/customers/1 với method DELETE -> Nhấn Send:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session9/img/p1/img_7.png"
                     style="width:70%;">


            </div>
        </div>
    </div>
</div>
</body>
</html>
