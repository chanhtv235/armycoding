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
                <a href="/course/module4/session8/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">8. Session và cookie</a>
                <h4>[Thực hành] Thêm sản phẩm vào giỏ hàng </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Luyện tập sử dụng session vào dự án thực tế.</p>
                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta sẽ phát triển một tính năng cho phép người dùng có thể thêm một
                    sản phẩm, thay đổi số lượng sản phẩm trong giỏ hàng của mình.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án Spring MVC và đặt tên shopping_cart</p>
                <p class="p1">-Chọn thư viện như trên hình bên dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p2/img.png"
                     style="width:60%;">
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p2/img_1.png"
                     style="width:60%;">
                <p class="p1">-Cấu trúc dự án như bên dưới</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p2/img_2.png"
                     style="width:30%;">

                <p class="p0">Bước 2: Xây dựng package model</p>
                <p class="p0 p1">- Lớp Product:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.model;

                    import jakarta.persistence.*;

                    @Entity
                    @Table(name = "product")
                    public class Product {
                        @Id
                        @GeneratedValue(strategy = GenerationType.IDENTITY)
                        private Long id;
                        private String name;
                        private double price;
                        private String description;

                        public Product() {
                        }
                        public Product(String name, double price, String description) {
                            this.name = name;
                            this.price = price;
                            this.description = description;
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

                        public double getPrice() {
                            return price;
                        }

                        public void setPrice(double price) {
                            this.price = price;
                        }

                        public String getDescription() {
                            return description;
                        }

                        public void setDescription(String description) {
                            this.description = description;
                        }
                    }
                </code></pre>

                <p class="p0 p1">- Lớp Cart</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.model;

                    import java.util.HashMap;
                    import java.util.Map;

                    public class Cart {
                        private Map< Product, Integer> products = new HashMap<>();

                        public Cart() {
                        }

                        public Cart(Map< Product, Integer> products) {
                            this.products = products;
                        }

                        public Map< Product, Integer> getProducts() {
                            return products;
                        }

                        private boolean checkItemInCart(Product product) {
                            for (Map.Entry< Product, Integer> entry : products.entrySet()) {
                                if (entry.getKey().getId().equals(product.getId())) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        private Map.Entry< Product, Integer> selectItemInCart(Product product) {
                            for (Map.Entry< Product, Integer> entry : products.entrySet()) {
                                if (entry.getKey().getId().equals(product.getId())) {
                                    return entry;
                                }
                            }
                            return null;
                        }

                        public void addProduct(Product product) {
                            if (!checkItemInCart(product)) {
                                products.put(product, 1);
                            } else {
                                Map.Entry< Product, Integer> itemEntry = selectItemInCart(product);
                                Integer newQuantity = itemEntry.getValue() + 1;
                                products.replace(itemEntry.getKey(), newQuantity);
                            }
                        }

                        public Integer countProductQuantity() {
                            Integer productQuantity = 0;
                            for (Map.Entry< Product, Integer> entry : products.entrySet()) {
                                productQuantity += entry.getValue();
                            }
                            return productQuantity;
                        }

                        public Integer countItemQuantity() {
                            return products.size();
                        }

                        public Float countTotalPayment() {
                            float payment = 0;
                            for (Map.Entry< Product, Integer> entry : products.entrySet()) {
                                payment += entry.getKey().getPrice() * (float) entry.getValue();
                            }
                            return payment;
                        }
                    }
                </code></pre>
                <p class="p1">- Trong đó:</p>
                <p class="p2">•	Phương thức <b> checkItemInCart():</b> kiểm tra xem sản phẩm đã có trong giỏ hàng hay chưa.</p>
                <p class="p2">•	Phương thức <b> addProduct():</b> sử dụng để thêm sản phẩm vào giỏ hàng.</p>
                <p class="p2">•	Phương thức <b> countProductQuantity():</b> sử dụng để đếm số lượng sản phẩm trong giỏ hàng.</p>
                <p class="p2">•	Phương thức <b> countItemQuantity():</b> sử dụng để đếm tổng số lượng sản phẩm hiện có trong giỏ hàng.</p>
                <p class="p2">•	Phương thức <b> countTotalPayment():</b> sử dụng để tính tổng tiền cần thanh toán của giỏ hàng.</p>

                <p class="p0">Bước 3: Xây dựng interface IProductRepository</p>

                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.repository;

                    import com.webcoder.shopping_cart.model.Product;
                    import org.springframework.data.jpa.repository.JpaRepository;
                    import org.springframework.stereotype.Repository;

                    @Repository
                    public interface IProductRepository extends JpaRepository< Product, Long> {
                    }
                </code></pre>

                <p class="p0">Bước 4: Xây dựng package service</p>
                <p class="p0 p1">- Interface IProductService</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.service;

                    import com.webcoder.shopping_cart.model.Product;
                    import java.util.Optional;

                    public interface IProductService {
                        Iterable< Product> findAll();

                        Optional< Product> findById(Long id);
                    }

                </code></pre>

                <p class="p0 p1">- Lớp ProductService</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.service;

                    import com.webcoder.shopping_cart.model.Product;
                    import com.webcoder.shopping_cart.repository.IProductRepository;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Service;

                    import java.util.Optional;

                    @Service
                    public class ProductService implements IProductService{
                        @Autowired
                        private IProductRepository productRepository;

                        @Override
                        public Iterable< Product> findAll() {
                            return productRepository.findAll();
                        }

                        @Override
                        public Optional< Product> findById(Long id) {
                            return productRepository.findById(id);
                        }
                    }

                </code></pre>

                <p class="p0">Bước 5: Xây dưng package controller</p>
                <p class="p0 p1">- Lớp ProductController: để hiển thị và điều hướng ở trang shop</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.controlller;

                    import com.webcoder.shopping_cart.model.Cart;
                    import com.webcoder.shopping_cart.model.Product;
                    import com.webcoder.shopping_cart.service.IProductService;
                    import org.springframework.beans.factory.annotation.Autowired;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.web.bind.annotation.*;
                    import org.springframework.web.servlet.ModelAndView;

                    import java.util.Optional;

                    @Controller
                    @SessionAttributes("cart")
                    public class ProductController {
                        @Autowired
                        private IProductService productService;

                        @ModelAttribute("cart")
                        public Cart setupCart() {
                            return new Cart();
                        }

                        @GetMapping("/shop")
                        public ModelAndView showShop() {
                            ModelAndView modelAndView = new ModelAndView("/shop");
                            modelAndView.addObject("products", productService.findAll());
                            return modelAndView;
                        }

                        @GetMapping("/add/{id}")
                        public String addToCart(@PathVariable Long id,
                                                @ModelAttribute Cart cart,
                                                @RequestParam("action") String action) {
                            Optional< Product> productOptional = productService.findById(id);
                            if (!productOptional.isPresent()) {
                                return "/error_404";
                            }
                            if (action.equals("show")) {
                                cart.addProduct(productOptional.get());
                                return "redirect:/shopping-cart";
                            }
                            cart.addProduct(productOptional.get());
                            return "redirect:/shop";
                        }
                    }
                </code></pre>

                <p class="p0 p1">- Lớp ShoppingController: để hiển thị và điều hướng ở trang cart</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    package com.webcoder.shopping_cart.controlller;

                    import com.webcoder.shopping_cart.model.Cart;
                    import org.springframework.stereotype.Controller;
                    import org.springframework.web.bind.annotation.GetMapping;
                    import org.springframework.web.bind.annotation.ModelAttribute;
                    import org.springframework.web.bind.annotation.SessionAttribute;
                    import org.springframework.web.servlet.ModelAndView;

                    @Controller
                    public class ShoppingController {
                        @ModelAttribute("cart")
                        public Cart setupCart(){
                            return new Cart();
                        }

                        @GetMapping("/shopping-cart")
                        public ModelAndView showCart (@SessionAttribute("cart") Cart cart){
                            ModelAndView modelAndView = new ModelAndView("/cart");
                            modelAndView.addObject("cart",cart);
                            return modelAndView;
                        }
                    }
                </code></pre>

                <p class="p0">Bước 6: Xây dựng các giao diện của dự án</p>
                <p class="p0 p1">- shop.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;
    &lt;a href=&quot;/shopping-cart&quot;&gt;Your cart&lt;/a&gt;
&lt;/p&gt;
&lt;table border=&quot;1&quot;&gt;
    &lt;tr&gt;
       &lt;td&gt;Name&lt;/td&gt;
       &lt;td&gt;Price&lt;/td&gt;
       &lt;td&gt;Add To Cart&lt;/td&gt;
    &lt;/tr&gt;
    &lt;th:block th:each=&quot;product:${products}&quot;&gt;
    &lt;tr&gt;
       &lt;td th:text=&quot;${product.name}&quot;&gt;&lt;/td&gt;
       &lt;td th:text=&quot;${product.price}&quot;&gt;&lt;/td&gt;
       &lt;td&gt;&lt;a th:href=&quot;@{/add/__${product.id}__(action='list')}&quot;&gt;Add To Cart&lt;/a&gt;&lt;/td&gt;
    &lt;/tr&gt;
    &lt;/th:block&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;

                </code></pre>
                <p class="p0 p1">- cart.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th=&quot;http://www.thymeleaf.org&quot; lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;
    &lt;a href=&quot;/shop&quot;&gt;Shop&lt;/a&gt;
&lt;/p&gt;
&lt;h1&gt;Your Cart&lt;/h1&gt;
&lt;form th:action=&quot;@{/shop}&quot; th:object=&quot;${cart}&quot; method=&quot;post&quot;&gt;
    &lt;h3&gt;Total Items: &lt;span th:text=&quot;${cart.countItemQuantity()}&quot;&gt;&lt;/span&gt;&lt;/h3&gt;
    &lt;h3&gt;Total Products: &lt;span th:text=&quot;${cart.countProductQuantity()}&quot;&gt;&lt;/span&gt;&lt;/h3&gt;
    &lt;table border=&quot;1&quot;&gt;
       &lt;tr&gt;
          &lt;th&gt;Item&lt;/th&gt;
          &lt;th&gt;Quantity&lt;/th&gt;
          &lt;th&gt;Price&lt;/th&gt;
       &lt;/tr&gt;
       &lt;tr th:each=&quot;product: ${cart.products}&quot;&gt;
          &lt;td th:text=&quot;${product.getKey().name}&quot;&gt;&lt;/td&gt;
          &lt;td&gt;
             &lt;a id=&quot;decrease_button&quot; th:text=&quot;${'-'}&quot;&gt;&lt;/a&gt;
             &lt;span th:text=&quot;${product.getValue()}&quot;&gt;&lt;/span&gt;
             &lt;a id=&quot;increase_button&quot; th:href=&quot;@{/add/__${product.getKey().id}__(action='show')}&quot;
                th:text=&quot;${'+'}&quot;&gt;&lt;/a&gt;
          &lt;/td&gt;
          &lt;td th:text=&quot;${product.getKey().price}&quot;&gt;&lt;/td&gt;
       &lt;/tr&gt;
       &lt;tr&gt;
          &lt;td&gt;Total&lt;/td&gt;
          &lt;td&gt;&lt;/td&gt;
          &lt;td th:text=&quot;${cart.countTotalPayment()}&quot;&gt;&lt;/td&gt;
       &lt;/tr&gt;
    &lt;/table&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

                </code></pre>

                <p class="p0 p1">-error_404.html</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    &lt;!DOCTYPE html&gt;
                    &lt;html lang=&quot;en&quot;&gt;
                    &lt;head&gt;
                        &lt;meta charset=&quot;UTF-8&quot;&gt;
                        &lt;title&gt;Title&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;NOT FOUND&lt;/h1&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>

                <p class="p0">Bước 7: Chạy ứng dụng và thử nghiệm tính năng</p>
                <p class="p1">- Shop:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session8/img/p2/img_3.png"
                     style="width:30%;">

                <p class="p0 p1">- Bạn hãy thử bổ sung xử lý giảm số lượng sản phẩm trong giỏ hàng?</p>


            </div>
        </div>
    </div>
</div>
</body>
</html>
