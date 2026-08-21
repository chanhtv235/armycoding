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
                <h4>[Thực hành] Quản lý khách hàng: Phân trang và tìm kiếm </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập triển khai phân trang (pagination) trong Spring Data JPA.</p>
                <h5>Mô tả</h5>

                <p class="p1"> - Bổ sung thêm các chức năng:</p>
                <p class="p2"> •Phân trang danh sách khách hàng</p>
                <p class="p2"> •Tìm kiếm khách hàng theo tên khách hàng</p>


                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Sử dụng dự án ở thực hành trước</p>
                <p class="p0">Bước 2: Cập nhật phương thức findAll() của interface ICustomerService</p>
                <p class="p1">-- Chuyển data type return của findAll() từ Iterable< Customer> thành Page < Customer>:
                </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    Page< Customer> findAll(Pageable pageable);
                </code></pre>

                <p class="p1">- Đối tượng Pageable: là một đối tượng có chứa 3 thuộc tính cơ bản:</p>
                <p class="p2">• page: chỉ định số trang hiện tại</p>
                <p class="p2">• size: số lượng phần tử trong trang</p>
                <p class="p2">• sort: sắp xếp trang</p>
                <p class="p1">- Pageable sẽ được tự động ánh xạ tư request. Lưu ý: import đúng lớp Pageable từ thư viện
                    org.springframework.data.domain.Pageable.</p>
                <p class="p1"> - Page<> là đối tượng chứa danh sách các thực thể và thuộc tính của trang. Page<> được
                    trả về trong response.</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @Override
                    public Page< Customer> findAll(Pageable pageable) {
                        return iCustomerRepository.findAll(pageable);
                    }
                </code></pre>

                <p class="p0">Bước 3: Cập nhật CustomerController</p>
                <p class="p1">- Phương thức listCustomer() bổ sung tham số Pageable, được mapping tự động từ URL.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/customers")
                    public ModelAndView listCustomers(Pageable pageable){
                        Page< Customer> customers = customerService.findAll(pageable);
                        ModelAndView modelAndView = new ModelAndView("/customer/list");
                        modelAndView.addObject("customers", customers);
                        return modelAndView;
                    }
                </code></pre>
                <p class="p0">Bước 4: Cập nhật lại view list.html</p>
                <p class="p1">-Bổ sung nút phân trang vào bên dưới table</p>

                <pre class="py-0 my-0"><code class="language-html my-0 py-0">
&lt;a class=&quot;btn btn-primary&quot; th:if=&quot;${cusomters.hasPrevious()}&quot;
    th:href=&quot;@{/customers/page(page=${customers.number - 1})}&quot;&gt;Previous&lt;/a&gt;
    &lt;span th:text=&quot;${customers.number + 1}&quot;&gt;&lt;/span&gt; | &lt;span th:text=&quot;${customers.totalPages}&quot;&gt;&lt;/span&gt;
&lt;a class=&quot;btn btn-primary&quot; th:if=&quot;${customers.hasNext()}&quot;
    th:href=&quot;@{/customers/page(page=${customer.number + 1})}&quot;&gt;Next&lt;/a&gt;

                </code></pre>
                <p class="p1">- Chạy ứng dụng và sử dụng thử tính năng.</p>
                <p class="p0">Bước 5: Thêm chức năng tìm kiếm</p>
                <p class="p1">- Thêm phương thức findAllByNameContaining() vào interface ICustomerRepository.</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                Page< Customer> findAllByFirstNameContaining(Pageable pageable, String name);
                </code></pre>

                <p class="p1">- Cập nhật lại ICustomerService và CustomerService. </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    Page< Customer> findAllByName(Pageable pageable, String name);

                    @Override
                    public Page< Customer> findAllByName(Pageable pageable, String name) {
                        return iCustomerRepository.findAllByFirstNameContaining(pageable, name);
                    }
                </code></pre>

                <p class="p1">- Cập nhật thêm code phía dưới vào trên đầu của file list.html. </p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                &lt;div style=&quot;margin-bottom: 10px; margin-left: 110px&quot;&gt;
                    &lt;form th:action=&quot;@{/students/search}&quot; method=&quot;post&quot;&gt;
                       &lt;label&gt;&lt;input type=&quot;text&quot; name=&quot;search&quot;&gt;&lt;/label&gt;
                       &lt;button type=&quot;submit&quot; class=&quot;btn btn-primary&quot;&gt;Search&lt;/button&gt;
                    &lt;/form&gt;
                &lt;/div&gt;
                </code></pre>

                <p class="p1"> - Cập nhật lại CustomerController.</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    @GetMapping("/customers")
                    public ModelAndView listCustomers(@RequestParam("search") Optional< String> search,
                                                        Pageable pageable){
                        Page< Customer> customers;
                        if(search.isPresent()){
                           customers = customerService.findAllByNameContaining(search.get(), pageable);
                        } else {
                           customers = customerService.findAll(pageable);
                        }
                        ModelAndView modelAndView = new ModelAndView("/customer/list");
                        modelAndView.addObject("customers", customers);
                        return modelAndView;
                    }
                </code></pre>

                <p class="p0">Bước 5: Chạy chương trình</p>
                <p class="p1">- Các bạn chạy chương trình rồi quan sát kết quả.</p>
                <p class="p1">- Lúc này dự án của chúng ta sẽ chạy trên cổng 8080: http://localhost:8080</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
