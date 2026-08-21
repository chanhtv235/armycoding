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
                <a href="/course/module4/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. JQuery và AJAX</a>
                <h4>[Thực hành] Quản lý điện thoại </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">- Có kiến thức về webservice trong Spring MVC.</p>
                <p class="p1"> - Có kiến thức và sử dụng được jQuery.</p>

                <h5>Mô tả</h5>
                <p class="p1">- Trong phần này, chúng ta sẽ phát triển một ứng dụng quản lý điện thoại, trong đó có các
                    chức năng sau:</p>
                <p class="p2">• Xem danh sách điện thoại.</p>
                <p class="p2">• Thêm một điện thoại mới.</p>
                <p class="p2">• Chỉnh sửa thông tin một điện thoại.</p>
                <p class="p2">• Xóa một điện thoại.</p>
                <p class="p1">- Các tính năng trên đều sử dụng AJAX để gọi đến api đã xây dựng.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án Spring MVC và đặt tên phone-management-ajax-web-service</p>

                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img.png"
                     style="width:50%;">

                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img_1.png"
                     style="width:50%;">
                <p class="p1">- Cấu trúc dự án Spring MVC khi hoàn thiện:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img_2.png"
                     style="width:30%;">
                <p class="p1">- Phần view sẽ sử dụng AJAX và được đặt trong một folder riêng:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img_3.png"
                     style="width:30%;">


                <p class="p0">Bước 2: Xây dựng model</p>
                <p class="p1">- Lớp Smartphone:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
package com.webcoder.phonemanagementajaxwebservice.model;

import jakarta.persistence.*;

@Entity
@Table(name="smartphone")
public class Smartphone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String producer;
    private String model;
    private double price;

    public Smartphone() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
                </code></pre>


                <p class="p0">Bước 3: Xây dựng repository</p>
                <p class="p1">- Interface ISmartphoneRepository:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
package com.webcoder.phonemanagementajaxwebservice.repository;

import com.webcoder.phonemanagementajaxwebservice.model.Smartphone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ISmartphoneRepository extends JpaRepository< Smartphone, Long> {
}
                </code></pre>


                <p class="p0">Bước 4: Xây dựng service</p>
                <p class="p1">- Interface ISmartphoneService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
package com.webcoder.phonemanagementajaxwebservice.service;

import com.webcoder.phonemanagementajaxwebservice.model.Smartphone;
import java.util.Optional;

public interface ISmartphoneService {
    Iterable< Smartphone> findAll();

    Optional< Smartphone> findById(Long id);

    Smartphone save(Smartphone smartPhone);

    void remove(Long id);
}

                </code></pre>

                <p class="p1">- Lớp SmartphoneService:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
package com.webcoder.phonemanagementajaxwebservice.service;

import com.webcoder.phonemanagementajaxwebservice.model.Smartphone;
import com.webcoder.phonemanagementajaxwebservice.repository.ISmartphoneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class SmartphoneService implements ISmartphoneService {
    @Autowired
    private ISmartphoneRepository iSmartphoneRepository;

    @Override
    public Iterable< Smartphone> findAll() {
        return iSmartphoneRepository.findAll();
    }

    @Override
    public Optional< Smartphone> findById(Long id) {
        return iSmartphoneRepository.findById(id);
    }

    @Override
    public Smartphone save(Smartphone smartPhone) {
        return iSmartphoneRepository.save(smartPhone);
    }

    @Override
    public void remove(Long id) {
        iSmartphoneRepository.deleteById(id);
    }
}
                </code></pre>


                <p class="p0">Bước 5: Xây dựng controller</p>
                <p class="p1">- Lớp SmartphoneController:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
package com.webcoder.phonemanagementajaxwebservice.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/smartphones")
public class SmartphoneController {
  @Autowired
  private ISmartphoneService smartphoneService;

}
                </code></pre>
                <p class="p1">- Trong đó @CrossOrigin("*") cho phép bỏ qua ràng buộc CORS (sẽ giới thiệu kỹ ở bài 14),
                    cho phép mọi URL đều có thể truy cập đến tài nguyên thông qua API.</p>

                <p class="p0">Bước 6: Xây dựng tính năng tạo mới sản phẩm</p>

                <p class=" p0 p1">- Bổ sung code trong controller:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
@PostMapping
public ResponseEntity< Smartphone> createSmartphone(@RequestBody Smartphone smartphone) {
    return new ResponseEntity<>(smartphoneService.save(smartphone), HttpStatus.CREATED);
}

                </code></pre>

                <p class="p0 p1">- Tạo file index.html và import jquery</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
&lt;!DOCTYPE html&gt;
&lt;html lang=&quot;en&quot;&gt;
&lt;head&gt;
    &lt;meta charset=&quot;UTF-8&quot;&gt;
    &lt;title&gt;Title&lt;/title&gt;
   &lt;!--    Nhúng jquery--&gt;
    &lt;script src=&quot;https://code.jquery.com/jquery-3.7.1.min.js&quot;
            integrity=&quot;sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=&quot; crossorigin=&quot;anonymous&quot;&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;form id=&quot;add-smartphone&quot;&gt;
    &lt;h1&gt;Form create&lt;/h1&gt;
    &lt;table&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;label for=&quot;producer&quot;&gt;Producer:&lt;/label&gt;&lt;/td&gt;
            &lt;td&gt;&lt;input type=&quot;text&quot; id=&quot;producer&quot; placeholder=&quot;producer&quot;&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;label for=&quot;model&quot;&gt;Model:&lt;/label&gt;&lt;/td&gt;
            &lt;td&gt;&lt;input type=&quot;text&quot; id=&quot;model&quot; placeholder=&quot;model&quot;&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;label for=&quot;price&quot;&gt;Price:&lt;/label&gt;&lt;/td&gt;
            &lt;td&gt;&lt;input type=&quot;text&quot; id=&quot;price&quot; placeholder=&quot;price&quot;&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;input type=&quot;submit&quot; value=&quot;Add&quot; onclick=&quot;addNewSmartPhone()&quot;&gt;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/table&gt;
&lt;/form&gt;
&lt;!--    Hiển thị danh sách--&gt;
&lt;div id=&quot;smartphoneList&quot;&gt;&lt;/div&gt;
&lt;script&gt;
    // code js
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
                </code></pre>

                <p class="p1">- Bổ sung xử lý ajax để tạo mới ở trong cặp thẻ script</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
function addNewSmartPhone() {
    //lấy dữ liệu từ form html
    let producer = $('#producer').val();
    let model = $('#model').val();
    let price = $('#price').val();
    let newSmartphone = {
       producer: producer,
       model: model,
       price: price
    };
    // gọi phương thức ajax
    $.ajax({
       headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
       },
       type: "POST",
       data: JSON.stringify(newSmartphone),
       //tên API
       url: "http://localhost:8080/api/smartphones",
       //xử lý khi thành công
       success: console.log("success")
    });
    //chặn sự kiện mặc định của thẻ
    event.preventDefault();
}
                </code></pre>


                <p class="p1">- Trong đó:</p>
                <p class="p2">• let producer = $('#producer').val() : dùng để lấy giá trị từ một ô input có id tương
                    ứng.</p>
                <p class="p2">• let newSmartPhone = {producer : producer, model : model , price : price} : dùng để tạo
                    ra đối tượng JSON và gán giá trị cho các thuộc tính tương ứng.</p>
                <p class="p2">• data: JSON.stringify(newSmartPhone) : chuyển object dạng JSON về thành dữ liệu text để
                    gửi theo request. Spring sẽ có cơ chế chuyển về thành Object phù hợp.</p>
                <p class="p2">• url: "" : chỉ định địa chỉ URL mà request sẽ gọi đến.</p>
                <p class="p2">• @RequestBody Smartphone smartPhone: gán các dữ liệu ở JSON vào đối tương tương ứng trong
                    Spring.</p>
                <p class="p1">- Chạy thử chương trình và tạo một sản phẩm:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img_4.png"
                     style="width:40%;">

                <p class="p0">Bước 7: Xây dựng tính năng hiển thị danh sách</p>
                <p class="p0 p1">- Bổ sung code trong controller:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
@GetMapping
public ResponseEntity< Iterable< Smartphone>> listSmartphones() {
    return new ResponseEntity<>(smartphoneService.findAll(), HttpStatus.OK);
}
                </code></pre>


                <p class="p0 p1">- Bổ sung code trong cặp thẻ < script>:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
function successHandler() {
    $.ajax({
       type: &quot;GET&quot;,
       //tên API
       url: &quot;http://localhost:8080/api/smartphones&quot;,
       //xử lý khi thành công
       success: function (data) {
          // hiển thị danh sách ở đây
          let content = ' &lt;table id=&quot;display-list&quot; border=&quot;1&quot;&gt;&lt;tr&gt;\n' +
                        ' &lt;th&gt;Producer&lt;/td&gt;\n' +
                        ' &lt;th&gt;Model&lt;/td&gt;\n' +
                        ' &lt;th&gt;Price&lt;/td&gt;\n' +
                        ' &lt;th&gt;Delete&lt;/td&gt;\n' +
                        ' &lt;/tr&gt;';
          for (let i = 0; i &lt; data.length; i++) {
             content += getSmartphone(data[i]);
          }
          content += &quot;&lt;/table&gt;&quot;
          document.getElementById('smartphoneList').innerHTML = content;
       }
    });
}

function getSmartphone(smartphone) {
        return `&lt;tr&gt;&lt;td &gt;${smartphone.producer}&lt;/td&gt;&lt;td &gt;${smartphone.model}&lt;/td&gt;&lt;td &gt;${smartphone.price}&lt;/td&gt;` +
            `&lt;td class=&quot;btn&quot;&gt;&lt;button class=&quot;deleteSmartphone&quot; onclick=&quot;deleteSmartphone(${smartphone.id})&quot;&gt;Delete&lt;/button&gt;&lt;/td&gt;&lt;/tr&gt;`;
    }
                </code></pre>

                <p class="p1">- - Chỉnh sửa code sau khi thêm mới thành công (success:) ở function addNewSmartPhone()<
                    script>:</p>
                <pre class="py-0 my-0"><code class="language-javascript my-0 py-0">
                    //xử lý khi thành công
                      success: function () {
                            console.log("success");
                            successHandler();
                     }
                </code></pre>

                <p class="p1">- Chạy chương trình và quan sát tính năng:</p>
                <img src="${pageContext.request.contextPath}/course/module4/session10/img/p2/img_5.png"
                     style="width:40%;">


                <p class="p0">Bước 8: Xây dựng tính năng xóa sản phẩm</p>
                <p class="p0 p1">- Bổ sung code trong controller:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
@DeleteMapping("/{id}")
public ResponseEntity< Smartphone> deleteSmartphone(@PathVariable Long id) {
    Optional< Smartphone> smartphoneOptional = smartphoneService.findById(id);
    if (!smartphoneOptional.isPresent()) {
       return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    smartphoneService.remove(id);
    return new ResponseEntity<>(smartphoneOptional.get(), HttpStatus.NO_CONTENT);
}
                </code></pre>

                <p class="p1">- - Bổ sung code trong file html tại thẻ script:</p>
                <pre class="py-0 my-0"><code class="language-java my-0 py-0">
                    function deleteSmartphone(id) {
                        $.ajax({
                        type: "DELETE",
                        //tên API
                        url: `http://localhost:8080/api/smartphones/${id}`,
                        //xử lý khi thành công
                        success: successHandler
                     });
                    }
                </code></pre>
                <p class="p1">- Chạy chương trình và thử các tính năng đã hoàn thành.
                </p>
                <p class="p1"> - Bạn hãy thử so sách cách xử lý, tốc độ và cách hiển thị khi dùng Thymeleaf và AJAX sau
                    khi thực hiện bài thực hành trên?
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
