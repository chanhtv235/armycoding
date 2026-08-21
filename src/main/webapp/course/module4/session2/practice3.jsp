<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"></c:import>
<body>
<style>
    pre {
        background-color: #f1f1f1;
    !important; /* Màu nền của đoạn code */
        padding: 0;
    !important; /* Loại bỏ khoảng cách giữa nội dung và đường viền */
    }

    code {
        display: block;
    !important; /* Hiển thị như một khối */
        margin: 0;
    !important; /* Loại bỏ khoảng cách giữa đoạn code và các phần tử khác */
        padding: 10px;
    !important; /* Khoảng cách giữa nội dung và đường viền */
    }
</style>
<c:import url="../../../navbar.jsp"></c:import>
<div class="row main">
    <c:import url="../../../sidebar.jsp"></c:import>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="/course/module4/session1/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">2. Spring Controller</a>
                <h4>[Thực hành] Mở rộng ưng dụng quản lý danh sách khách hàng</h4>

                <h5>Mục tiêu</h5>
                <p class="p1">Luyện tập phát triển phần mềm web backend, sử dụng Spring MVC.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Từ ứng dụng quản lý danh sách khách hàng ở bài thực hành <a
                        href="/course?module=4&session=1&fileName=practice2">[Thực hành] Ứng dụng quản lý danh sách
                    khách hàng </a></p>
                <p class="p1">- Thực hiện thêm các chức năng:</p>
                <p class="p2">1. Thêm mới khách hàng</p>
                <p class="p2">2. Cập nhật thông tin khách hàng</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Clone dự án hoặc mở lại dự án của bài thực hành cũ của phần trước:</p>

                <p class="p0">Bước 2: Cài đặt thêm các method mới cho interface ICustomerService và ICustomerRepositoy </p>
                <p class="p1">- Thêm mới : boolean save(Customer customer)</p>
                <p class="p1">- Cập nhật : boolean update(Customer customer)</p>
                <p class="p1">- Sau đó triển khai tại các class CustomerService và CustomerRepositoy </p>
                <p class="p2">+ Tại class CustomerRepositoy </p>


                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                import com.example.customermanagerment.model.Customer;
                import org.springframework.stereotype.Repository;
                import java.util.ArrayList;
                import java.util.List;

                @Repository
                public class CustomerRepository implements ICustomerRepository{
                    // tạo database giả lập
                    private static List< Customer> customerList = new ArrayList<>();
                    static {
                        customerList.add(new Customer(1,"Nguyễn Văn A","anv@gmail.com","Cẩm Lệ"));
                        customerList.add(new Customer(2,"Nguyễn Văn B","bnv@gmail.com","Hải Châu"));
                        customerList.add(new Customer(3,"Nguyễn Văn C","cnv@gmail.com","Hoà Vang"));
                        customerList.add(new Customer(4,"Nguyễn Văn D","dnv@gmail.com","Thanh Khê"));
                        customerList.add(new Customer(5,"Nguyễn Văn E","env@gmail.com","Sơn Trà"));
                    }
                    @Override
                    public List< Customer> findAll() {
                        return customerList;
                    }
                    @Override
                    public boolean save(Customer customer) {
                        return customerList.add(customer);
                    }
                    @Override
                    public void update(Customer customer) {
                        for (int i = 0; i < customerList.size() ; i++) {
                            if (customerList.get(i).getId()==customer.getId()){
                                customerList.set(i,customer);
                                break;
                            }
                        }
                    }
                    @Override
                    public Customer findById(int id) {
                        for (Customer c:customerList) {
                            if (c.getId()==id){
                                return c;
                            }
                        }
                        return null;
                    }
                }
                </code></pre>
                <p class="p2">+ Tại class CustomerService </p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                import com.example.customermanagerment.model.Customer;
                import com.example.customermanagerment.repository.ICustomerRepository;
                import org.springframework.beans.factory.annotation.Autowired;
                import org.springframework.stereotype.Service;

                import java.util.List;
                // định nghĩa class là một Bean vớ @Service
                @Service

                public class CustomerService implements ICustomerService{
                   @Autowired
                   private ICustomerRepository customerRepository;
                    @Override
                    public List< Customer> findAll() {
                        return customerRepository.findAll();
                    }
                    @Override
                    public Customer findById(int id) {
                        return customerRepository.findById(id);
                    }
                    @Override
                    public boolean save(Customer customer) {
                        return customerRepository.save(customer);
                    }
                    @Override
                    public void update(Customer customer) {
                       customerRepository.update(customer);
                    }
                }
                </code></pre>

                <p class="p0">Bước 3: Tạo các method tại controller </p>
                <p class="p1">-Phương thức : showFormCreate()</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // hiển thị form thêm mới
                    @GetMapping("/customers/create")
                    public String showFormCreate(){
                        return "create";
                    }
                </code></pre>
                <p class="p1">-Phương thức : save()</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    // Lưu thông tin thêm mới
                    @PostMapping("/customers/create")
                    public String save(@RequestParam("id")int id,
                                       @RequestParam("name") String name,
                                       @RequestParam("email") String email,
                                       @RequestParam("address") String address,
                                       RedirectAttributes redirectAttributes){
                        Customer customer = new Customer(id,name,email,address);
                        customerService.save(customer);
                        redirectAttributes.addFlashAttribute("mess","create success");
                        return "redirect:/customers";
                    }
                </code></pre>

                <p class="p1">Toàn bộ code ở Class Controller như bên dưới: </p>


                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                import com.example.customermanagerment.model.Customer;
                import com.example.customermanagerment.service.ICustomerService;
                import org.springframework.beans.factory.annotation.Autowired;
                import org.springframework.stereotype.Controller;
                import org.springframework.ui.ExtendedModelMap;
                import org.springframework.ui.Model;
                import org.springframework.ui.ModelMap;
                import org.springframework.web.bind.annotation.GetMapping;
                import org.springframework.web.bind.annotation.PostMapping;
                import org.springframework.web.bind.annotation.RequestParam;
                import org.springframework.web.servlet.mvc.support.RedirectAttributes;

                import java.util.List;

                @Controller
                public class CustomerController {
                    @Autowired
                    private ICustomerService customerService;
                    @GetMapping("/customers")
                    public String showList(Model model){
                        List< Customer> customerList = customerService.findAll();
                        model.addAttribute("customers", customerList);
                        return "list";
                    }

                    @GetMapping("/customers/detail")
                    public String showList(@RequestParam int id, Model model){
                        Customer customer = customerService.findById(id);
                        model.addAttribute("customer", customer);
                        return "detail";
                    }

                    @GetMapping("/customers/create")
                    public String showFormCreate(){
                        return "create";
                    }

                    @PostMapping("/customers/create")
                    public String save(@RequestParam("id")int id,
                                       @RequestParam("name") String name,
                                       @RequestParam("email") String email,
                                       @RequestParam("address") String address,
                                       RedirectAttributes redirectAttributes){
                        Customer customer = new Customer(id,name,email,address);
                        customerService.save(customer);
                        redirectAttributes.addFlashAttribute("mess","create success");
                        return "redirect:/customers";
                    }

                }
                </code></pre>

                <p class="p0">Bước 4: Tạo mới file create.jsp</p>
                <pre class="py-0 my-0"><code class="language-xml my-0 py-0">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Title&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;div&gt;
                        &lt;h3&gt;Add new customer&lt;/h3&gt;
                        &lt;form action=&quot;/customers/create&quot; method=&quot;post&quot;&gt;
                            &lt;label&gt;
                                Id:
                                &lt;input name=&quot;id&quot;&gt;
                            &lt;/label&gt;&lt;br&gt;
                            &lt;label&gt;
                                Name:
                                &lt;input name=&quot;name&quot;&gt;
                            &lt;/label&gt;&lt;br&gt;
                            &lt;label&gt;
                                Email:
                                &lt;input name=&quot;email&quot;&gt;
                            &lt;/label&gt;&lt;br&gt;
                            &lt;label&gt;
                                Address:
                                &lt;input name=&quot;address&quot;&gt;
                            &lt;/label&gt;&lt;br&gt;
                            &lt;button&gt;Save&lt;/button&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p1">Thêm mới đoạn code sau vào trang list.jsp</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    &lt;%--Đường dẫn để đi tới chức năng thêm mới--%&gt;
                    &lt;a href=&quot;/customers/create&quot;&gt;Add new customer&lt;/a&gt;
                    &lt;%--Hiển thị thông tin sau khi thêm mới--%&gt;
                    &lt;h5 style=&quot;color: red&quot;&gt;${mess}&lt;/h5&gt;
                </code></pre>

                <p class="p1"> - Chạy chương trình và xem kết quả: </p>
                <p class="p2">+Truy cập trang list:<a>http://localhost:8080/customers</a></p>
                <p class="p2">+Truy cập vào đương dẫn :<a>Add new customer</a></p>
                <p class="p2">+Nhập dữ liệu và submit</p>
                <p class="p0">Bước 4: Thực hiện chức năng update </p>
                <p class="p1">- Hướng dẫn</p>
                <p class="p2">+ Thêm code cho CustomerRepository và CustomerService</p>
                <p class="p2">+ Viết code thêm cho class Controller</p>
                <p class="p3">=>Khi showFormUpdate thì cần trả về một đối tượng Customer được gọi từ Service (gọi method findBy(id))</p>
                <p class="p3">=>Method update tương tự như method save của chức năng thêm mới</p>
                <p class="p2">+ Tạo file update.jsp tương tư như file create.jsp</p>
                <p class="p3">=> lưu ý thêm giá trị tại các thẻ input để hiển thị thông tin ban đầu </p>

            </div>
        </div>
    </div>
</div>
</body>
</html>
