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
                <a href="/course/module3/session11/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">11. Mô hình MVC</a>
                <h4>[Thực hành] Ứng dụng quản lý khách hàng </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Luyện tập phát triển các ứng dụng quản lý sử dụng kiến trúc MVC.</p>

                <h5>Mô tả</h5>
                <p class="p2"> - Trong phần này, chúng ta sẽ phát triển một ứng dụng quản lý khách hàng. Ứng dụng có các
                    chức năng chính sau: </p>
                <p class="p2"> • Hiển thị danh sách khách hàng </p>
                <p class="p2"> • Thêm một khách hàng mới </p>
                <p class="p2"> • Sửa đổi thông tin của khách hàng </p>
                <p class="p2"> • Xoá một khách hàng </p>
                <p class="p2"> • Xem thông tin chi tiết của khách hàng </p>
                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1: Tạo dự án mới với tên customer-management.</p>

                <p class="p0">Bước 2: Add thêm thư viện JSTL vào dự án.</p>

                <img src="${pageContext.request.contextPath}/course/module3/session11/img/p1/img_0.png"
                     style="width:70%;">
                <p class="p0">Bước 3: Tạo ra các package theo mô hình MVC.</p>

                <img src="${pageContext.request.contextPath}/course/module3/session11/img/p1/img_1.png"
                     style="width:70%;">

                <p class="p0">Bước 4: Tạo class Customer trong package model.</p>
                <pre><code class="language-java">
                    public class Customer {
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
                <p class="p2"> Bước 5: Tạo interface CustomerService. </p>
                <p class="p1"> - Ta tạo ra interface để tuân thủ nguyên tắc Dependency trong SOLID. Phụ thuộc vào trừu
                    tượng. </p>
                <p class="p1"> - Interface CustomerService là interface định nghĩa các phương thức ở tầng Service để
                    thao tác với đối tượng Customer. </p>
                <p class="p1"> - Interface CustomerService bao gồm các phương thức: </p>
                <p class="p2"> • findAll(): Trả về danh sách tất cả khách hàng </p>
                <p class="p2"> • save(): Lưu một khách hàng </p>
                <p class="p2"> • findById(): Tìm một khách hàng theo Id </p>
                <p class="p2"> • update(): Cập nhật thông tin của một khách hàng </p>
                <p class="p2"> • remove(): Xoá một khách hàng khỏi danh sách </p>


                <pre><code class="language-java">
                    public interface CustomerService {
                        List< Customer> findAll();

                        void save(Customer customer);

                        Customer findById(int id);

                        void update(int id, Customer customer);

                        void remove(int id);
                    }

                </code></pre>

                <p class="p0"> Bước 6: Tạo lớp CustomerServiceImpl là một lớp triển khai đầy đủ các phương thức của
                    interface CustomerService </p>
                <p class="p1"> - Trong trường hợp này, chúng ta giả lập lớp CustomerServiceImpl làm đối tượng cung cấp
                    dữ liệu. Danh sách khách hàng sẽ được lưu vào trong một đối tượng Map. Trong một ứng dụng thực tế,
                    danh sách khách hàng sẽ được lưu vào cơ sở dữ liệu. Chúng ta sẽ phát triển tính năng lưu trữ vào
                    CSDL ở trong các phần sau. </p>

                <pre><code class="language-java">
                    public class CustomerServiceImpl implements CustomerService{

                        private static Map&lt;Integer, Customer&gt; customers;

                        static {
                            customers = new HashMap&lt;&gt;();
                            customers.put(1, new Customer(1, &quot;John&quot;, &quot;john@codegym.vn&quot;, &quot;Hanoi&quot;));
                            customers.put(2, new Customer(2, &quot;Bill&quot;, &quot;bill@codegym.vn&quot;, &quot;Danang&quot;));
                            customers.put(3, new Customer(3, &quot;Alex&quot;, &quot;alex@codegym.vn&quot;, &quot;Saigon&quot;));
                            customers.put(4, new Customer(4, &quot;Adam&quot;, &quot;adam@codegym.vn&quot;, &quot;Beijin&quot;));
                            customers.put(5, new Customer(5, &quot;Sophia&quot;, &quot;sophia@codegym.vn&quot;, &quot;Miami&quot;));
                            customers.put(6, new Customer(6, &quot;Rose&quot;, &quot;rose@codegym.vn&quot;, &quot;Newyork&quot;));
                        }

                        @Override
                        public List&lt;Customer&gt; findAll() {
                            return new ArrayList&lt;&gt;(customers.values());
                        }

                        @Override
                        public void save(Customer customer) {
                            customers.put(customer.getId(), customer);
                        }

                        @Override
                        public Customer findById(int id) {
                            return customers.get(id);
                        }

                        @Override
                        public void update(int id, Customer customer) {
                            customers.put(id, customer);
                        }

                        @Override
                        public void remove(int id) {
                            customers.remove(id);
                        }
                    }

                </code></pre>

                <p class="p0"> Bước 7: Tạo CustomerServlet để xử lý các request. </p>
                <p class="p1"> - Lớp CustomerServlet có một đối tượng CustomerServiceImpl dùng để truy xuất đến dữ
                    liệu. </p>
                <p class="p1"> - Đường dẫn của servlet là : /customers </p>
                <pre><code class="language-java">
                    @WebServlet(name = &quot;CustomerServlet&quot;, urlPatterns = &quot;/customers&quot;)
                    public class CustomerServlet extends HttpServlet {
                          private final CustomerService customerService = new CustomerServiceImpl();

                          @Override
                         protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                                                    throws ServletException, IOException {
                               // L&#x1ea5;y Parameters (D&#x1eef; li&#x1ec7;u request g&#x1eed;i &#x0111;i) c&oacute; name l&agrave; &quot;action&quot;.
                               String action = request.getParameter(&quot;action&quot;);

                               // N&#x1ebf;u d&#x1eef; li&#x1ec7;u request g&#x1eed;i &#x0111;i kh&ocirc;ng c&oacute; &quot;action&quot; th&igrave; s&#x1ebd; tr&#x1ea3; v&#x1ec1; null.
                               if (action == null) {
                                    action = &quot;&quot;;
                               }
                                switch (action) {
                                       case &quot;create&quot;:
                                              createCustomer(request, response);
                                               break;
                                       case &quot;edit&quot;:
                                              updateCustomer(request, response);
                                               break;
                                       case &quot;delete&quot;:
                                              deleteCustomer(request, response);
                                               break;
                                       default:
                                               break;
                                      }
                          }

                           // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c x&oacute;a customer d&#x1ef1;a theo id.
                          private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
                                   int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                                   Customer customer = this.customerService.findById(id);
                                   RequestDispatcher dispatcher;
                                   if (customer == null) {
                                          dispatcher = request.getRequestDispatcher(&quot;error-404.jsp&quot;);
                                  } else {
                                          this.customerService.remove(id);
                                          try {
                                                 response.sendRedirect(&quot;/customers&quot;);
                                         } catch (IOException e) {
                                                 e.printStackTrace();
                                         }
                                 }
                         }


                          // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c s&#x1eed;a customer.
                         private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
                                 int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                                 String name = request.getParameter(&quot;name&quot;);
                                 String email = request.getParameter(&quot;email&quot;);
                                 String address = request.getParameter(&quot;address&quot;);
                                 Customer customer = this.customerService.findById(id);
                                 RequestDispatcher dispatcher;
                                 if (customer == null) {
                                       dispatcher = request.getRequestDispatcher(&quot;error-404.jsp&quot;);
                                } else {
                                       customer.setName(name);
                                       customer.setEmail(email);
                                       customer.setAddress(address);
                                       this.customerService.update(id, customer);
                                      request.setAttribute(&quot;customer&quot;, customer);
                                      request.setAttribute(&quot;message&quot;, &quot;Customer information was updated&quot;);
                                       dispatcher = request.getRequestDispatcher(&quot;customer/edit.jsp&quot;);
                                }
                                 try {
                                       dispatcher.forward(request, response);
                                } catch (ServletException e) {
                                      e.printStackTrace();
                                } catch (IOException e) {
                                      e.printStackTrace();
                                }
                         }


                           // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c th&ecirc;m customer.
                          private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
                                 String name = request.getParameter(&quot;name&quot;);
                                 String email = request.getParameter(&quot;email&quot;);
                                 String address = request.getParameter(&quot;address&quot;);
                                 int id = (int) (Math.random() * 10000);

                                 Customer customer = new Customer(id, name, email, address);
                                 this.customerService.save(customer);
                                 RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;customer/create.jsp&quot;);
                                request.setAttribute(&quot;message&quot;, &quot;New customer was created&quot;);
                                 try {
                                       dispatcher.forward(request, response);
                                } catch (ServletException e) {
                                      e.printStackTrace();
                                } catch (IOException e) {
                                      e.printStackTrace();
                                }
                          }



                           @Override
                          protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                                                            throws ServletException, IOException {
                                  String action = request.getParameter(&quot;action&quot;);
                                  if (action == null) {
                                         action = &quot;&quot;;
                                  }
                                   switch (action) {
                                         case &quot;create&quot;:
                                                showCreateForm(request, response);
                                                 break;
                                         case &quot;edit&quot;:
                                                showEditForm(request, response);
                                                 break;
                                         case &quot;delete&quot;:
                                                showDeleteForm(request, response);
                                                 break;
                                         case &quot;view&quot;:
                                                viewCustomer(request, response);
                                                 break;
                                         default:
                                                listCustomers(request, response);
                                                 break;
                                  }
                          }


                          // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c tr&#x1ea3; v&#x1ec1; trang view.jsp hi&#x1ec3;n th&#x1ecb; th&ocirc;ng tin c&#x1ee7;a customer.
                          private void viewCustomer(HttpServletRequest request, HttpServletResponse response) {
                                   int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                                   Customer customer = this.customerService.findById(id);
                                   RequestDispatcher dispatcher;
                                   if (customer == null) {
                                         dispatcher = request.getRequestDispatcher(&quot;error-404.jsp&quot;);
                                  } else {
                                       request.setAttribute(&quot;customer&quot;, customer);
                                        dispatcher = request.getRequestDispatcher(&quot;customer/view.jsp&quot;);
                                 }
                                 try {
                                        dispatcher.forward(request, response);
                                } catch (ServletException e) {
                                       e.printStackTrace();
                                } catch (IOException e) {
                                       e.printStackTrace();
                                }
                          }

                           // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c tr&#x1ea3; v&#x1ec1; trang delete.jsp &#x0111;&#x1ec3; hi&#x1ec3;n th&#x1ecb; customer &#x0111;&#x1ec3; x&oacute;a.
                          private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
                                   int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                                   Customer customer = this.customerService.findById(id);
                                   RequestDispatcher dispatcher;
                                   if (customer == null) {
                                         dispatcher = request.getRequestDispatcher(&quot;error-404.jsp&quot;);
                                  } else {
                                        request.setAttribute(&quot;customer&quot;, customer);
                                         dispatcher = request.getRequestDispatcher(&quot;customer/delete.jsp&quot;);
                                  }
                                  try {
                                        dispatcher.forward(request, response);
                                 } catch (ServletException e) {
                                       e.printStackTrace();
                                 } catch (IOException e) {
                                       e.printStackTrace();
                                 }
                         }


                          // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c tr&#x1ea3; v&#x1ec1; trang edit.jsp &#x0111;&#x1ec3; hi&#x1ec3;n th&#x1ecb; customer &#x0111;&#x1ec3; s&#x1eed;a.
                         private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
                                int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                                Customer customer = this.customerService.findById(id);
                                RequestDispatcher dispatcher;
                                if (customer == null) {
                                       dispatcher = request.getRequestDispatcher(&quot;error-404.jsp&quot;);
                               } else {
                                      request.setAttribute(&quot;customer&quot;, customer);
                                       dispatcher = request.getRequestDispatcher(&quot;customer/edit.jsp&quot;);
                               }
                                try {
                                      dispatcher.forward(request, response);
                               } catch (ServletException e) {
                                     e.printStackTrace();
                               } catch (IOException e) {
                                     e.printStackTrace();
                               }
                         }


                         // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c tr&#x1ea3; v&#x1ec1; trang create.jsp &#x0111;&#x1ec3; t&#x1ea1;o customer.
                         private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
                                RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;customer/create.jsp&quot;);
                                try {
                                      dispatcher.forward(request, response);
                               } catch (ServletException e) {
                                     e.printStackTrace();
                               } catch (IOException e) {
                                     e.printStackTrace();
                               }
                         }


                           // Ph&#x01b0;&#x01a1;ng th&#x1ee9;c tr&#x1ea3; v&#x1ec1; trang list.jsp &#x0111;&#x1ec3; hi&#x1ec3;n th&#x1ecb; to&agrave;n b&#x1ed9; customer.
                          private void listCustomers(HttpServletRequest request, HttpServletResponse response) {
                                  List&lt;Customer&gt; customers = this.customerService.findAll();
                                 request.setAttribute(&quot;customers&quot;, customers);

                                  RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;customer/list.jsp&quot;);
                                  try {
                                         dispatcher.forward(request, response);
                                 } catch (ServletException e) {
                                        e.printStackTrace();
                                 } catch (IOException e) {
                                        e.printStackTrace();
                                 }
                         }
                    }

                </code></pre>

                <p class="p0">- Tạo file customer/list.jsp để hiển thị danh sách khách hàng.</p>
                <pre><code class="language-html">
                    &lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot; %&gt;
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Customer List&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Customers&lt;/h1&gt;
                    &lt;p&gt;
                        &lt;a href=&quot;/customers?action=create&quot;&gt;Create new customer&lt;/a&gt;
                    &lt;/p&gt;
                    &lt;table border=&quot;1&quot;&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Name&lt;/td&gt;
                            &lt;td&gt;Email&lt;/td&gt;
                            &lt;td&gt;Address&lt;/td&gt;
                            &lt;td&gt;Edit&lt;/td&gt;
                            &lt;td&gt;Delete&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;c:forEach items='${customers}' var=&quot;customer&quot;&gt;
                            &lt;tr&gt;
                                &lt;td&gt;&lt;a href=&quot;/customers?action=view&amp;id=${customer.getId()}&quot;&gt;${customer.getName()}&lt;/a&gt;&lt;/td&gt;
                                &lt;td&gt;${customer.getEmail()}&lt;/td&gt;
                                &lt;td&gt;${customer.getAddress()}&lt;/td&gt;
                                &lt;td&gt;&lt;a href=&quot;/customers?action=edit&amp;id=${customer.getId()}&quot;&gt;edit&lt;/a&gt;&lt;/td&gt;
                                &lt;td&gt;&lt;a href=&quot;/customers?action=delete&amp;id=${customer.getId()}&quot;&gt;delete&lt;/a&gt;&lt;/td&gt;
                            &lt;/tr&gt;
                        &lt;/c:forEach&gt;
                    &lt;/table&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">- Tạo file customer/create.jsp và form để tạo khách hàng mới:</p>

                <pre><code class="language-html">
                    &lt;%@ taglib prefix=&quot;c&quot; uri=&quot;http://java.sun.com/jsp/jstl/core&quot; %&gt;
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Create new customer&lt;/title&gt;
                        &lt;style&gt;
                            .message{
                                color:green;
                            }
                        &lt;/style&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Create new customer&lt;/h1&gt;
                    &lt;p&gt;
                        &lt;c:if test='${message != null}'&gt;
                            &lt;span class=&quot;message&quot;&gt;${message}&lt;/span&gt;
                        &lt;/c:if&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;a href=&quot;/customers&quot;&gt;Back to customer list&lt;/a&gt;
                    &lt;/p&gt;
                    &lt;form method=&quot;post&quot;&gt;
                        &lt;fieldset&gt;
                            &lt;legend&gt;Customer information&lt;/legend&gt;
                            &lt;table&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Name: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;name&quot; id=&quot;name&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Email: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot; id=&quot;email&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Address: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;address&quot; id=&quot;address&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;submit&quot; value=&quot;Create customer&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/table&gt;
                        &lt;/fieldset&gt;
                    &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                 </code></pre>

                <p class="p0">- Tạo file customer/edit.jsp và hiển thị thông tin của khách hàng đang được cập nhật:</p>
                <pre><code class="language-html">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Edit customer&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Edit customer&lt;/h1&gt;
                    &lt;p&gt;
                        &lt;c:if test='${message != null}'&gt;
                            &lt;span class=&quot;message&quot;&gt;${message}&lt;/span&gt;
                        &lt;/c:if&gt;
                    &lt;/p&gt;
                    &lt;p&gt;
                        &lt;a href=&quot;/customers&quot;&gt;Back to customer list&lt;/a&gt;
                    &lt;/p&gt;
                    &lt;form method=&quot;post&quot;&gt;
                        &lt;fieldset&gt;
                            &lt;legend&gt;Customer information&lt;/legend&gt;
                            &lt;table&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Name: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;name&quot; id=&quot;name&quot; value=&quot;${customer.getName()}&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Email: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot; id=&quot;email&quot; value=&quot;${customer.getEmail()}&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Address: &lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;address&quot; id=&quot;address&quot; value=&quot;${customer.getAddress()}&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;input type=&quot;submit&quot; value=&quot;Update customer&quot;&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/table&gt;
                        &lt;/fieldset&gt;
                    &lt;/form&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                 </code></pre>

                <p class="p0">- File delete.jsp:</p>
                <pre><code class="language-html">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Deleting customer&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Delete customer&lt;/h1&gt;
                    &lt;p&gt;
                        &lt;a href=&quot;/customers&quot;&gt;Back to customer list&lt;/a&gt;
                    &lt;/p&gt;
                    &lt;form method=&quot;post&quot;&gt;
                        &lt;h3&gt;Are you sure?&lt;/h3&gt;
                        &lt;fieldset&gt;
                            &lt;legend&gt;Customer information&lt;/legend&gt;
                            &lt;table&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Name: &lt;/td&gt;
                                    &lt;td&gt;${customer.getName()}&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Email: &lt;/td&gt;
                                    &lt;td&gt;${customer.getEmail()}&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;Address: &lt;/td&gt;
                                    &lt;td&gt;${customer.getAddress()}&lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;&lt;input type=&quot;submit&quot; value=&quot;Delete customer&quot;&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;a href=&quot;/customers&quot;&gt;Back to customer list&lt;/a&gt;&lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/table&gt;
                        &lt;/fieldset&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">- File customer/view.jsp:</p>
                <pre><code class="language-html">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;View customer&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;Customer details&lt;/h1&gt;
                    &lt;p&gt;
                        &lt;a href=&quot;/customers&quot;&gt;Back to customer list&lt;/a&gt;
                    &lt;/p&gt;
                    &lt;table&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Name: &lt;/td&gt;
                            &lt;td&gt;${customer.getName()}&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Email: &lt;/td&gt;
                            &lt;td&gt;${customer.getEmail()}&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;tr&gt;
                            &lt;td&gt;Address: &lt;/td&gt;
                            &lt;td&gt;${customer.getAddress()}&lt;/td&gt;
                        &lt;/tr&gt;
                    &lt;/table&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>

                <p class="p0">- File error-404.jsp.</p>
                <pre><code class="language-html">
                    &lt;%@ page contentType=&quot;text/html;charset=UTF-8&quot; language=&quot;java&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;Error 404&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;h1&gt;NOT FOUND&lt;/h1&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;
                </code></pre>
                <p class="p0">Bước 8: Chạy ứng dụng và quan sát kết quả.</p>
                <p class="p1"> - Như vậy chúng ta đã hoàn thành được các tính năng cơ bản của ứng dụng quản lý khách
                    hàng.</p>

            </div>
        </div>
    </div>
</div>
</body>
</html>
