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
                <a href="/course/module4/session6/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">6.Spring data JPA (paging,sorting,search)</a>
                <h4>[Thực hành] Ứng dụng Quản lý khách hàng: Quản lý tỉnh </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập tạo dự án bằng Spring boot</p>
                <p class="p1">- Luyện tập việc sử dụng Spring data JPA</p>
                <p class="p1">- Sử dụng mỗi quan hệ giữa 2 Entity</p>
                <h5>Mô tả</h5>
                <p class="p1">- Sử dụng dự án của bài thực hành trước
                    JPA </p>

                <p class="p1"> - Bổ sung thêm các chức năng:</p>
                <p class="p1"> + Quản lý tỉnh thành của khách hàng</p>
                <p class="p1"> + Hiển thị khách hàng theo từng tỉnh thành</p>


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Clone dự án hoặc sử dụng bài thực hành customer_manager_spring_boot</p>
                <p class="p0">Bước 2- Cấu trúc dự án hoàn thiện:</p>

                <img src="${pageContext.request.contextPath}/course/module4/session6/img/p1/img.png"
                     style="width:40%;">

                <img src="${pageContext.request.contextPath}/course/module4/session6/img/p1/img_1.png.png"
                     style="width:40%;">

                <p class="p1">-- Lưu ý tại templates đã tạo ra các thư mục customer, province riêng và di chuyển các
                    view vào đúng vị trí của từng đối tượng</p>


                <p class="p0">Bước 3: Tạo các file để quản lý tỉnh thành</p>
                <p class="p1">- Quản lý tỉnh thành tương tự như quản lý khách hàng. Bao gồm:</p>
                <p class="p1"> + Entity Province</p>
                <p class="p1"> + Interface IProvinceRepository</p>
                <p class="p1"> + ProvinceService</p>
                <p class="p1"> + ProvinceController</p>
                <p class="p1"> + Và các view cho thực thể Province: list, create, update,...</p>
                <p class="p1">- Đồng thời cần bổ sung mối quan hệ liên kết giữa Customer và Province. Vậy nên lớp
                    Customer sẽ thay đổi như sau:</p>
                <p class="p0 p1">- Lớp Province:</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.model;
                    import jakarta.persistence.*;

                    @Entity
                    @Table(name = "province")
                    public class Province {
                        @Id
                        @GeneratedValue(strategy = GenerationType.IDENTITY)
                        private Long id;

                        private String name;

                        public Province() {
                        }

                        public Long getId() {
                            return id;
                        }

                        public void setId(Long id) {
                            this.id = id;
                        }

                        public String getName() {
                            return name;
                        }

                        public void setName(String name) {
                            this.name = name;
                        }
                    }

                </code></pre>
                <p class="p1">- Lớp Customer bổ sung thêm thuộc tính Province :sử dụng <b>@ManyToOne</b> tạo mối quan hệ
                </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.model;
                    import jakarta.persistence.*;

                    @Entity
                    @Table(name = "customer")
                    public class Customer {

                        @Id
                        @GeneratedValue(strategy = GenerationType.IDENTITY)
                        private int id;
                        private String name;
                        private String email;

                        @ManyToOne
                        @JoinColumn(name = "province_id")
                        private Province province;

                        public Customer() {
                        }
                        public Customer(int id, String name, String email) {
                            this.id = id;
                            this.name = name;
                            this.email = email;;
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

                        public Province getProvince() {
                            return province;
                        }

                        public void setProvince(Province province) {
                            this.province = province;
                        }
                    }
                </code></pre>


                <p class="p0 p1">- Interface IProvinceRepository:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.repository;

                    import com.webcoder.customer_manager_spring_boot.model.Province;
                    import org.springframework.data.repository.CrudRepository;

                    public interface IProvinceRepository extends CrudRepository< Province,Long> {

                    }
                </code></pre>


                <p class="p1 p0">- Interface IProvinceService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.service;

                    import com.webcoder.customer_manager_spring_boot.model.Province;

                    import java.util.List;

                    public interface IProvinceService {
                        List< Province> findAll();
                        Province findById(Long id);
                        Province save(Province province);
                        Province update(Province province);
                        void delete(Long id);
                    }
                </code></pre>


                <p class="p0 p1">- Lớp ProvinceService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.service;

                    import com.webcoder.customer_manager_spring_boot.model.Province;
                    import com.webcoder.customer_manager_spring_boot.repository.IProvinceRepository;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Service;

                    import java.util.List;

                    @Service
                    public class ProvinceService  implements IProvinceService{
                        @Autowired
                        private IProvinceRepository provinceRepository;
                        @Override
                        public List< Province> findAll() {
                            return (List< Province>) provinceRepository.findAll();
                        }

                        @Override
                        public Province findById(Long id) {
                            return provinceRepository.findById(id).get();
                        }

                        @Override
                        public Province save(Province province) {
                            return provinceRepository.save(province);
                        }

                        @Override
                        public Province update(Province province) {
                            return provinceRepository.save(province);
                        }

                        @Override
                        public void delete(Long id) {
                          provinceRepository.deleteById(id);
                        }
                    }
                </code></pre>

                 <p class="p0 p1">- Interface ICustomerRepository:</p>
                 <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                        package com.webcoder.customer_manager_spring_boot.repository;

                        import com.webcoder.customer_manager_spring_boot.model.Customer;
                        import com.webcoder.customer_manager_spring_boot.model.Province;
                        import org.springframework.data.jpa.repository.JpaRepository;

                        import java.util.List;

                        public interface ICustomerRepository extends JpaRepository< Customer,Integer> {
                         List< Customer> findAllByProvince(Province province);
                        }
                 </code></pre>

                <p class="p0 p1">- Interface ICustomerService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.service;

                    import com.webcoder.customer_manager_spring_boot.model.Customer;
                    import com.webcoder.customer_manager_spring_boot.model.Province;

                    import java.util.List;

                    public interface ICustomerService {
                        List< Customer> findAll();
                        List< Customer> findAllByProvince(Province province);

                        void save(Customer customer);

                        Customer findById(int id);

                        void update(Customer customer);

                        void remove(int id);
                    }
                 </code></pre>
                <p class="p0 p1">- Lớp CustomerService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.service;

                    import com.webcoder.customer_manager_spring_boot.model.Customer;
                    import com.webcoder.customer_manager_spring_boot.model.Province;
                    import com.webcoder.customer_manager_spring_boot.repository.ICustomerRepository;
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
                        public List< Customer> findAllByProvince(Province province) {
                            return customerRepository.findAllByProvince(province);
                        }
                        @Override
                        public void save(Customer customer) {
                          customerRepository.save(customer);
                        }
                        @Override
                        public Customer findById(int id) {
                            return customerRepository.findById(id).get();
                        }
                        @Override
                        public void update(Customer customer) {
                         customerRepository.save(customer);
                        }
                        @Override
                        public void remove(int id) {
                         customerRepository.deleteById(id);
                        }
                    }
                 </code></pre>
                <p class="p0">Bước 4: Hoàn thiện các controller</p>

                <p class="p0 p1">- Lớp ProvinceController:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.controller;

                    import com.webcoder.customer_manager_spring_boot.model.Customer;
                    import com.webcoder.customer_manager_spring_boot.model.Province;
                    import com.webcoder.customer_manager_spring_boot.service.ICustomerService;
                    import com.webcoder.customer_manager_spring_boot.service.IProvinceService;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.web.bind.annotation.*;
                    import org.springframework.web.servlet.ModelAndView;
                    import org.springframework.web.servlet.mvc.support.RedirectAttributes;

                    import java.util.List;
                    import java.util.Optional;

                    @Controller
                    @RequestMapping("/provinces")
                    public class ProvinceController {
                        @Autowired
                        private IProvinceService provinceService;

                        @Autowired
                        private ICustomerService customerService;

                        @GetMapping
                        public ModelAndView listProvince() {
                            ModelAndView modelAndView = new ModelAndView("/province/list");
                            Iterable< Province> provinces = provinceService.findAll();
                            modelAndView.addObject("provinces", provinces);
                            return modelAndView;
                        }

                        @GetMapping("/create")
                        public ModelAndView createForm() {
                            ModelAndView modelAndView = new ModelAndView("/province/create");
                            modelAndView.addObject("province", new Province());
                            return modelAndView;
                        }

                        @PostMapping("/create")
                        public String create(@ModelAttribute("province") Province province,
                                             RedirectAttributes redirectAttributes) {
                            provinceService.save(province);
                            redirectAttributes.addFlashAttribute("message", "Create new province successfully");
                            return "redirect:/provinces";
                        }

                        @GetMapping("/update/{id}")
                        public ModelAndView updateForm(@PathVariable Long id) {
                            Province province = provinceService.findById(id);
                            if (province!=null) {
                                ModelAndView modelAndView = new ModelAndView("/province/update");
                                modelAndView.addObject("province", province);
                                return modelAndView;
                            } else {
                                return new ModelAndView("/error_404");
                            }
                        }

                        @PostMapping("/update/{id}")
                        public String update(@ModelAttribute("province") Province province,
                                             RedirectAttributes redirect) {
                            provinceService.save(province);
                            redirect.addFlashAttribute("message", "Update province successfully");
                            return "redirect:/provinces";
                        }

                        @GetMapping("/view-province/{id}")
                        public ModelAndView viewProvince(@PathVariable("id") Long id){
                            Province province = provinceService.findById(id);
                            if(province==null){
                                return new ModelAndView("/error_404");
                            }
                            List< Customer> customers = customerService.findAllByProvince(province);
                            ModelAndView modelAndView = new ModelAndView("/customer/list");
                            modelAndView.addObject("customers", customers);
                            return modelAndView;
                        }
                    }
                </code></pre>

                <p class="p0 p1">- Lớp CustomerController:</p>
                <p class="p2"> + Trong lớp CustomerController bổ sung phần code hỗ trợ lấy danh sách tỉnh trong các
                    request tới controller như sau:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @ModelAttribute("provinces")
                    public Iterable< Province> listProvinces() {
                        return provinceService.findAll();
                    }
                </code></pre>
                <p class="p2"> + Bổ sung thêm method tìm kiếm khách hàng theo tỉnh thành :</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/province")
                    public String showCustomerByProvince(@ModelAttribute Province province, Model model) {
                        List< Customer> customerList = customerService.findAllByProvince(province);
                        model.addAttribute("customers", customerList);
                        return "/customer/list";
                    }

                </code></pre>
                <p class="p1">- Thực hiện DI IProvinceService và code đầy đủ như bên dưới:</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.customer_manager_spring_boot.controller;

                    import com.webcoder.customer_manager_spring_boot.model.Customer;
                    import com.webcoder.customer_manager_spring_boot.model.Province;
                    import com.webcoder.customer_manager_spring_boot.service.ICustomerService;
                    import com.webcoder.customer_manager_spring_boot.service.IProvinceService;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.ui.Model;
                    import org.springframework.web.bind.annotation.*;
                    import org.springframework.web.servlet.mvc.support.RedirectAttributes;

                    import java.util.List;

                    @Controller
                    @RequestMapping("/customers")
                    public class CustomerController {
                        @Autowired
                        private  ICustomerService customerService;

                        @Autowired
                        private IProvinceService provinceService;

                        @ModelAttribute("provinces")
                        public Iterable< Province> listProvinces() {
                            return provinceService.findAll();
                        }


                        @GetMapping("")
                        public String index(Model model) {

                            List< Customer> customerList = customerService.findAll();
                            model.addAttribute("customers", customerList);
                            return "/customer/list";
                        }

                        @GetMapping("/create")
                        public String create(Model model) {
                            model.addAttribute("customer", new Customer());
                            return "/customer/create";
                        }

                        @PostMapping("/save")
                        public String save(Customer customer) {
                            customerService.save(customer);
                            return "redirect:/customers";
                        }

                        @GetMapping("/{id}/edit")
                        public String update(@PathVariable int id, Model model) {
                            model.addAttribute("customer", customerService.findById(id));
                            return "/customer/update";
                        }

                        @PostMapping("/update")
                        public String update(Customer customer) {
                            customerService.update(customer);
                            return "redirect:/customers";
                        }

                        @GetMapping("/{id}/delete")
                        public String delete(@PathVariable int id, Model model) {
                            model.addAttribute("customer", customerService.findById(id));
                            return "/customer/delete";
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
                            return "/customer/view";
                        }

                        @GetMapping("/province")
                        public String listCustomerByProvince(@ModelAttribute Province province, Model model) {
                            List< Customer> customerList = customerService.findAllByProvince(province);
                            model.addAttribute("customers", customerList);
                            return "/customer/list";
                        }

                    }
                </code></pre>
                <p class="p0">Bước 6: Hoàn thiện các view của dự án</p>
                <p class="p0">6.1. View province</p>

                <p class="p1">- View list.html:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                &lt;!DOCTYPE html&gt;
                &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                    &lt;title&gt;List Province&lt;/title&gt;
                &lt;/head&gt;
                &lt;body&gt;
                &lt;h3&gt;Provinces&lt;/h3&gt;
                &lt;p&gt;
                    &lt;a th:href=&quot;@{/provinces/create}&quot;&gt;
                       Add new province
                    &lt;/a&gt;
                &lt;/p&gt;
                &lt;p&gt;
                    &lt;a th:href=&quot;@{/customers}&quot;&gt;
                       Customers
                    &lt;/a&gt;
                &lt;/p&gt;
                &lt;div class=&quot;notify&quot;&gt;
                    &lt;div th:if=&quot;${message}&quot;&gt;
                       &lt;span th:text=&quot;${message}&quot;&gt;&lt;/span&gt;
                    &lt;/div&gt;
                &lt;/div&gt;

                &lt;table id = &quot;customers&quot;&gt;
                    &lt;thead&gt;
                    &lt;tr&gt;
                       &lt;th&gt;STT&lt;/th&gt;
                       &lt;th&gt;Name&lt;/th&gt;
                       &lt;th&gt;Update&lt;/th&gt;
                    &lt;/tr&gt;
                    &lt;/thead&gt;
                    &lt;tbody&gt;
                    &lt;tr th:each=&quot;p, pStatus : ${provinces}&quot;&gt;
                       &lt;td th:text=&quot;${pStatus.count}&quot;&gt;&lt;/td&gt;
                       &lt;td&gt;&lt;a th:href=&quot;@{/provinces/view-province/{id}(id=${p.getId()})}&quot;th:text=&quot;${p.getName()}&quot;&gt;&lt;/a&gt;&lt;/td&gt;
                       &lt;td&gt;&lt;a th:href=&quot;@{/provinces/update/{id}(id=${p.getId()})}&quot;&gt;update&lt;/a&gt;&lt;/td&gt;
                    &lt;/tr&gt;
                 &lt;/tbody&gt;
                &lt;/table&gt;
                &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                &lt;/body&gt;
                &lt;/html&gt;
                </code></pre>

                <p class="p1">- View create.html:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                        &lt;title&gt;Create Province&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;Add Province&lt;/h3&gt;
                    &lt;p&gt;
                        &lt;a th:href=&quot;@{/provinces}&quot;&gt;
                            Back to province list
                        &lt;/a&gt;
                    &lt;/p&gt;
                    &lt;div id=&quot;form&quot;&gt;
                        &lt;form th:action=&quot;@{/provinces/create}&quot; th:object=&quot;${province}&quot;
                              method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                           &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                           &lt;div&gt;
                              &lt;label for=&quot;name&quot;&gt;Name&lt;/label&gt;
                              &lt;input type=&quot;text&quot; id=&quot;name&quot; th:field=&quot;*{name}&quot;/&gt;
                           &lt;/div&gt;
                           &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p1">- View update.html:</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                 &lt;!DOCTYPE html&gt;
                 &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                 &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                     &lt;title&gt;Update Province&lt;/title&gt;
                 &lt;/head&gt;
                 &lt;body&gt;
                 &lt;h3&gt;Update Province&lt;/h3&gt;
                 &lt;p&gt;
                     &lt;a th:href=&quot;@{/provinces}&quot;&gt;
                        Back to province list
                     &lt;/a&gt;
                 &lt;/p&gt;
                 &lt;div id=&quot;form&quot;&gt;
                     &lt;form th:action=&quot;@{/provinces/update/{id}(id=${province.getId()})}&quot;
                          th:object=&quot;${province}&quot;method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                        &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                        &lt;div&gt;
                           &lt;label for=&quot;name&quot;&gt;Name&lt;/label&gt;
                           &lt;input type=&quot;text&quot; id=&quot;name&quot; th:field=&quot;*{name}&quot;/&gt;
                        &lt;/div&gt;
                        &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                     &lt;/form&gt;
                 &lt;/div&gt;
                 &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                 &lt;/body&gt;
                 &lt;/html&gt;
             </code></pre>
                <p class="p0">6.2. Chỉnh sửa lại View customer cho hợp lý:</p>
                <p class="p0 p1">- view list.html</p>
                <p class="p1">- bài trước index.html=> đổi lại list.html cho hợp lý hơn</p>
                <p class="p2">+ Thêm đường dẫn quả lý tỉnh thành</p>
                <p class="p2">+ Thêm form tìm kiếm khách hàng theo tỉnh thành</p>
                <p class="p2">+ Thay Address bằng Province</p>
    <pre class="py-0 my-0"><code class="language-html my-0 py-0">
       &lt;!DOCTYPE html&gt;
       &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
       &lt;head th:replace=&quot;/layout :: head&quot;&gt;
           &lt;title&gt;ListCustomer&lt;/title&gt;
       &lt;/head&gt;
       &lt;body&gt;
       &lt;p&gt;
           &lt;a th:href=&quot;@{/provinces}&quot;&gt;Provinces List&lt;/a&gt;
       &lt;/p&gt;
       &lt;h3&gt;Customers List&lt;/h3&gt;
       &lt;p&gt;
           &lt;a th:href=&quot;@{/customers/create}&quot;&gt;Add new customer&lt;/a&gt;
       &lt;/p&gt;
       &lt;form action=&quot;/customers/province&quot;&gt;
           &lt;select id=&quot;province&quot; name=&quot;province&quot;&gt;
               &lt;option th:each=&quot;p : ${provinces}&quot; th:value=&quot;${p.id}&quot;th:text=&quot;${p.name}&quot;&gt;&lt;/option&gt;
           &lt;/select&gt;
           &lt;button&gt;Search&lt;/button&gt;
       &lt;/form&gt;

       &lt;div class=&quot;notify&quot;&gt;
           &lt;div th:if=&quot;${success}&quot;&gt;
               &lt;span th:text=&quot;${success}&quot;&gt;&lt;/span&gt;
           &lt;/div&gt;
       &lt;/div&gt;

       &lt;table id = &quot;customers&quot;&gt;
           &lt;thead&gt;
           &lt;tr&gt;
               &lt;th&gt;Name&lt;/th&gt;
               &lt;th&gt;Email&lt;/th&gt;
               &lt;th&gt;Province&lt;/th&gt;
               &lt;th&gt;Edit&lt;/th&gt;
               &lt;th&gt;Delete&lt;/th&gt;
               &lt;th&gt;View&lt;/th&gt;
           &lt;/tr&gt;
           &lt;/thead&gt;
           &lt;tbody&gt;
           &lt;tr th:each=&quot;row,rowStat : ${customers}&quot;&gt;
               &lt;td th:text=&quot;${row.getName()}&quot;&gt;&lt;/td&gt;
               &lt;td th:text=&quot;${row.getEmail()}&quot;&gt;&lt;/td&gt;
               &lt;td th:text=&quot;${row.getProvince().getName()}&quot;&gt;&lt;/td&gt;
               &lt;td&gt;&lt;a th:href=&quot;@{/customers/{id}/edit(id=${row.getId()})}&quot;&gt;edit&lt;/a&gt;&lt;/td&gt;
               &lt;td&gt;&lt;a th:href=&quot;@{/customers/{id}/delete(id=${row.getId()})}&quot;&gt;delete&lt;/a&gt;&lt;/td&gt;
               &lt;td&gt;&lt;a th:href=&quot;@{/customers/{id}/view(id=${row.getId()})}&quot;&gt;view&lt;/a&gt;&lt;/td&gt;
           &lt;/tr&gt;
           &lt;/tbody&gt;
       &lt;/table&gt;
       &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
       &lt;/body&gt;
       &lt;/html&gt;
    </code></pre>

                <p class="p1">- view create.html</p>
                <p class="p0">+ Thay đổi Address bằng Province, lưu ý danh sách lấy từ provinces bên controller</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                &lt;!DOCTYPE html&gt;
                &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                    &lt;title&gt;CreateCustomer&lt;/title&gt;
                &lt;/head&gt;
                &lt;body&gt;
                &lt;h3&gt;Add Customer&lt;/h3&gt;
                &lt;p&gt;
                    &lt;a th:href=&quot;@{/customers}&quot;&gt;
                        Back to customer list
                    &lt;/a&gt;
                &lt;/p&gt;
                &lt;div id=&quot;form&quot;&gt;
                    &lt;form th:action=&quot;@{/customers/save}&quot; th:object=&quot;${customer}&quot;
                          method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                &lt;!--        &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;--&gt;
                        &lt;div&gt;
                            &lt;label for=&quot;name&quot;&gt;Name&lt;/label&gt;
                            &lt;input type=&quot;text&quot; id=&quot;name&quot; th:field=&quot;*{name}&quot;/&gt;
                        &lt;/div&gt;
                        &lt;div&gt;
                            &lt;label for=&quot;email&quot;&gt;Email&lt;/label&gt;
                            &lt;input type=&quot;email&quot; id=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                        &lt;/div&gt;
                        &lt;div&gt;
                            &lt;label for=&quot;province&quot;&gt;Province&lt;/label&gt;
                            &lt;select id=&quot;province&quot; th:field=&quot;*{province}&quot;&gt;
                                &lt;option th:each=&quot;p : ${provinces}&quot; th:value=&quot;${p.id}&quot;
                                    th:text=&quot;${p.name}&quot;&gt;&lt;/option&gt;
                            &lt;/select&gt;

                        &lt;/div&gt;
                        &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                    &lt;/form&gt;
                &lt;/div&gt;
                &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                &lt;/body&gt;
                &lt;/html&gt;

                </code></pre>

                <p class="p0 p1">- view update.html tương tự create.html</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
            &lt;!DOCTYPE html&gt;
            &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
            &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                &lt;title&gt;UpdateCustomer&lt;/title&gt;
            &lt;/head&gt;
            &lt;body&gt;
            &lt;h3&gt;Edit Customer&lt;/h3&gt;
            &lt;p&gt;
                &lt;a th:href=&quot;@{/customers}&quot;&gt;
                    Back to customer list
                &lt;/a&gt;
            &lt;/p&gt;
            &lt;div id=&quot;form&quot;&gt;
                &lt;form action=&quot;#&quot; th:action=&quot;@{/customers/update}&quot; th:object=&quot;${customer}&quot;
                      method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                    &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                    &lt;div&gt;
                        &lt;label for=&quot;name&quot;&gt;Name&lt;/label&gt;
                        &lt;input type=&quot;text&quot; id=&quot;name&quot; th:field=&quot;*{name}&quot;/&gt;
                    &lt;/div&gt;
                    &lt;div&gt;
                        &lt;label for=&quot;email&quot;&gt;Email&lt;/label&gt;
                        &lt;input type=&quot;email&quot; id=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                    &lt;/div&gt;
                    &lt;div&gt;
                        &lt;label for=&quot;province&quot;&gt;Province&lt;/label&gt;
                        &lt;select id=&quot;province&quot; th:field=&quot;*{province}&quot;&gt;
                            &lt;option th:each=&quot;p : ${provinces}&quot; th:value=&quot;${p.id}&quot;
                                        th:text=&quot;${p.name}&quot;&gt;&lt;/option&gt;
                        &lt;/select&gt;

                    &lt;/div&gt;
                    &lt;input type=&quot;submit&quot; value=&quot;Edit&quot;/&gt;
                &lt;/form&gt;
            &lt;/div&gt;
            &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
            &lt;/body&gt;
            &lt;/html&gt;
                </code></pre>

                <p class="p1">- View view.html</p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                        &lt;title&gt;DetailCustomer&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;View Customer&lt;/h3&gt;
                    &lt;p&gt;
                        &lt;a th:href=&quot;@{/customers}&quot;&gt;
                            Back to customer list
                        &lt;/a&gt;
                    &lt;/p&gt;
                    &lt;div id=&quot;detail&quot;&gt;
                        &lt;div class=&quot;cus-detail&quot;&gt;
                            &lt;label&gt;Name:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.name}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                        &lt;div class=&quot;cus-detail&quot;&gt;
                            &lt;label&gt;Email:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.email}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                        &lt;div class=&quot;cus-detail&quot;&gt;
                            &lt;label&gt;Provice:&lt;/label&gt;
                            &lt;label th:text=&quot;${customer.getProvince().getName()}&quot;&gt;&lt;/label&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>
                <p class="p0 p1">- View delete.html </p>
                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
                    &lt;head th:replace=&quot;/layout :: head&quot;&gt;
                        &lt;title&gt;DeleteCustomer&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h3&gt;Remove Customer&lt;/h3&gt;
                    &lt;p&gt;
                        &lt;a th:href=&quot;@{/customers}&quot;&gt;
                            Back to customer list
                        &lt;/a&gt;
                    &lt;/p&gt;
                    &lt;div id=&quot;form&quot;&gt;
                        &lt;form action=&quot;#&quot; th:action=&quot;@{/customers/delete}&quot;
                                                                th:object=&quot;${customer}&quot;
                              method=&quot;POST&quot; novalidate=&quot;novalidate&quot;&gt;
                            &lt;input type=&quot;hidden&quot; th:field=&quot;*{id}&quot;/&gt;
                            &lt;div&gt;
                                &lt;label for=&quot;name&quot;&gt;Name&lt;/label&gt;
                                &lt;input type=&quot;text&quot; id=&quot;name&quot; th:field=&quot;*{name}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;div&gt;
                                &lt;label for=&quot;email&quot;&gt;Email&lt;/label&gt;
                                &lt;input type=&quot;email&quot; id=&quot;email&quot; th:field=&quot;*{email}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;div&gt;
                                &lt;label for=&quot;address&quot;&gt;Province&lt;/label&gt;
                                &lt;input type=&quot;text&quot; id=&quot;address&quot; th:field=&quot;*{province}&quot;/&gt;
                            &lt;/div&gt;
                            &lt;input type=&quot;submit&quot; value=&quot;Remove&quot;/&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;footer th:replace=&quot;/layout :: footer&quot;&gt;&lt;/footer&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 7: Chạy chương trình</p>
                <p class="p1">- Các bạn chạy chương trình rồi quan sát kết quả.</p>
                <p class="p1">- Lúc này dự án của chúng ta sẽ chạy trên cổng 8080: http://localhost:8080</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
