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
                <a href="/course/module3/session12/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">12. JDBC</a>
                <h4>[Thực hành] Quản lý User sử dụng JSP-Servlet-JDBC-MySQL </h4>

                <h5>Mục tiêu</h5>
                <p class="p1">• Luyện tập sử dụng JDBC</p>

                <h5>Mô tả</h5>
                <p class="p1">-Xây dựng ứng dụng WEB quản lý User bao gồm các chức năng sau:</p>
                <p class="p2">• Hiển thị danh sách User</p>
                <p class="p2">• Thêm mới User</p>
                <p class="p2">• Sửa thông tin User</p>
                <p class="p2">• Xoá User</p>
                <p class="p1">-Thực hành các thao tác CRUD.</p>

                <h5>Hướng dẫn</h5>

                <p class="p0">Bước 1:Tạo mới dự án.</p>
                <p class="p1"> -Đặt tên dự án user-manager và chọn vị trí lưu dự án.</p>
                <p class="p1"> -Trong file build.gradle thêm các thư viện như sau:</p>


                <pre><code class="language-java">
                    implementation group: 'javax.servlet', name: 'jstl', version: '1.2'
                    implementation group: 'mysql', name: 'mysql-connector-java', version: '8.0.28'
                </code></pre>

                <p class="p0">Bước 2: Add thêm thư viện JSTL vào dự án.</p>
                <p class="p1">Trong MySQL, tạo cơ sở dữ liệu "demo". Tạo bảng "users" như sau:</p>
                <pre><code class="language-sql">
                    CREATE DATABASE demo;
                    USE demo;
                    create table users (
                          id int(3) NOT NULL AUTO_INCREMENT,
                          name varchar(120) NOT NULL,
                          email varchar(220) NOT NULL,
                          country varchar(120),
                          PRIMARY KEY (id)
                    );
                </code></pre>

                <p class="p1">Thêm một số dữ liệu mẫu như sau:</p>
                <pre><code class="language-sql">
                    insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
                    insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
                </code></pre>

                <p class="p0">Bước 3: Tạo model.</p>
                <p class="p1">Trong thư mục "model", bạn tạo class "User" như sau:</p>
                <pre><code class="language-java">
                    public class User {
                        protected int id;
                        protected String name;
                        protected String email;
                        protected String country;

                        public User() {}

                        public User(String name, String email, String country) {
                            super();
                            this.name = name;
                            this.email = email;
                            this.country = country;
                        }

                        public User(int id, String name, String email, String country) {
                            super();
                            this.id = id;
                            this.name = name;
                            this.email = email;
                            this.country = country;
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
                        public String getCountry() {
                            return country;
                        }
                        public void setCountry(String country) {
                            this.country = country;
                        }
                    }
                </code></pre>

                <p class="p0">Bước 4: Tạo interface IUserDAO:</p>
                <pre><code class="language-java">
                    public interface IUserDAO {
                        public void insertUser(User user) throws SQLException;

                        public User selectUser(int id);

                        public List< User> selectAllUsers();

                        public boolean deleteUser(int id) throws SQLException;

                        public boolean updateUser(User user) throws SQLException;
                    }
                </code></pre>

                <p class="p0"> Bước 5: Tạo lớp truy cập cơ sở dữ liệu:</p>
                <p class="p1"> Tạo lớp UserDAO cho phép người dùng thao tác với dữ liệu (Tạo mới, đọc, cập nhật,
                    xoá).</p>
                <pre><code class="language-sql">
                    public class UserDAO implements IUserDAO{
                        private String jdbcURL = &quot;jdbc:mysql://localhost:3306/demo?useSSL=false&quot;;
                        private String jdbcUsername = &quot;root&quot;;
                        private String jdbcPassword = &quot;123456&quot;;

                        private static final String INSERT_USERS_SQL =
                                                        "INSERT INTO users (name, email, country) VALUES (?, ?, ?);&quot;;
                        private static final String SELECT_USER_BY_ID =
                                                                &quot;select id,name,email,country from users where id =?&quot;;
                        private static final String SELECT_ALL_USERS =&quot;select * from users&quot;;
                        private static final String DELETE_USERS_SQL = &quot;delete from users where id = ?;&quot;;
                        private static final String UPDATE_USERS_SQL =
                                                        "update users set name = ?,email= ?, country =? where id = ?;&quot;;

                        public UserDAO() {
                        }

                        protected Connection getConnection() {
                            Connection connection = null;
                            try {
                                Class.forName(&quot;com.mysql.jdbc.Driver&quot;);
                                connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
                            } catch (SQLException e) {
                                e.printStackTrace();
                            } catch (ClassNotFoundException e) {
                                e.printStackTrace();
                            }
                            return connection;
                        }

                        public void insertUser(User user) throws SQLException {
                            System.out.println(INSERT_USERS_SQL);
                            try (Connection connection = getConnection();
                                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
                                preparedStatement.setString(1, user.getName());
                                preparedStatement.setString(2, user.getEmail());
                                preparedStatement.setString(3, user.getCountry());
                                System.out.println(preparedStatement);
                                preparedStatement.executeUpdate();
                            } catch (SQLException e) {
                                printSQLException(e);
                            }
                        }

                        public User selectUser(int id) {
                            User user = null;
                            try (Connection connection = getConnection();
                                 PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);){
                                preparedStatement.setInt(1, id);
                                System.out.println(preparedStatement);
                                ResultSet rs = preparedStatement.executeQuery();

                                while (rs.next()) {
                                    String name = rs.getString(&quot;name&quot;);
                                    String email = rs.getString(&quot;email&quot;);
                                    String country = rs.getString(&quot;country&quot;);
                                    user = new User(id, name, email, country);
                                }
                            } catch (SQLException e) {
                                printSQLException(e);
                            }
                            return user;
                        }

                        public List&lt;User&gt; selectAllUsers() {

                            List&lt;User&gt; users = new ArrayList&lt;&gt;();
                            try (Connection connection = getConnection();

                                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
                                System.out.println(preparedStatement);
                                ResultSet rs = preparedStatement.executeQuery();

                                while (rs.next()) {
                                    int id = rs.getInt(&quot;id&quot;);
                                    String name = rs.getString(&quot;name&quot;);
                                    String email = rs.getString(&quot;email&quot;);
                                    String country = rs.getString(&quot;country&quot;);
                                    users.add(new User(id, name, email, country));
                                }
                            } catch (SQLException e) {
                                printSQLException(e);
                            }
                            return users;
                        }

                        public boolean deleteUser(int id) throws SQLException {
                            boolean rowDeleted;
                            try (Connection connection = getConnection();
                                    PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
                                statement.setInt(1, id);
                                rowDeleted = statement.executeUpdate() &gt; 0;
                            }
                            return rowDeleted;
                        }

                        public boolean updateUser(User user) throws SQLException {
                            boolean rowUpdated;
                            try (Connection connection = getConnection();
                                    PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
                                statement.setString(1, user.getName());
                                statement.setString(2, user.getEmail());
                                statement.setString(3, user.getCountry());
                                statement.setInt(4, user.getId());

                                rowUpdated = statement.executeUpdate() &gt; 0;
                            }
                            return rowUpdated;
                        }

                        private void printSQLException(SQLException ex) {
                            for (Throwable e : ex) {
                                if (e instanceof SQLException) {
                                    e.printStackTrace(System.err);
                                    System.err.println(&quot;SQLState: &quot; + ((SQLException) e).getSQLState());
                                    System.err.println(&quot;Error Code: &quot; + ((SQLException) e).getErrorCode());
                                    System.err.println(&quot;Message: &quot; + e.getMessage());
                                    Throwable t = ex.getCause();
                                    while (t != null) {
                                        System.out.println(&quot;Cause: &quot; + t);
                                        t = t.getCause();
                                    }
                                }
                            }
                        }
                    }

                </code></pre>

                <pre><code class="language-java">
                    public interface CustomerService {
                        List< Customer> findAll();

                        void save(Customer customer);

                        Customer findById(int id);

                        void update(int id, Customer customer);

                        void remove(int id);
                    }

                </code></pre>

                <p class="p0"> Bước 6: Tạo UserServlet xử lý các yêu cầu từ máy khách.</p>


                <pre><code class="language-sql">
                    @WebServlet(name = &quot;UserServlet&quot;, urlPatterns = &quot;/users&quot;)
                    public class UserServlet extends HttpServlet {
                        private static final long serialVersionUID = 1L;
                        private UserDAO userDAO;

                        public void init() {
                            userDAO = new UserDAO();
                        }

                        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                                throws ServletException, IOException {
                            String action = request.getParameter(&quot;action&quot;);
                            if (action == null) {
                                action = &quot;&quot;;
                            }
                            try {
                                switch (action) {
                                    case &quot;create&quot;:
                                        insertUser(request, response);
                                        break;
                                    case &quot;edit&quot;:
                                        updateUser(request, response);
                                        break;
                                }
                            } catch (SQLException ex) {
                                throw new ServletException(ex);
                            }
                        }

                        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                throws ServletException, IOException {
                            String action = request.getParameter(&quot;action&quot;);
                            if (action == null) {
                                action = &quot;&quot;;
                            }

                            try {
                                switch (action) {
                                    case &quot;create&quot;:
                                        showNewForm(request, response);
                                        break;
                                    case &quot;edit&quot;:
                                        showEditForm(request, response);
                                        break;
                                    case &quot;delete&quot;:
                                        deleteUser(request, response);
                                        break;
                                    default:
                                        listUser(request, response);
                                        break;
                                }
                            } catch (SQLException ex) {
                                throw new ServletException(ex);
                            }
                        }

                        private void listUser(HttpServletRequest request, HttpServletResponse response)
                                throws SQLException, IOException, ServletException {
                            List&lt;User&gt; listUser = userDAO.selectAllUsers();
                            request.setAttribute(&quot;listUser&quot;, listUser);
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/list.jsp&quot;);
                            dispatcher.forward(request, response);
                        }

                        private void showNewForm(HttpServletRequest request, HttpServletResponse response)
                                throws ServletException, IOException {
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/create.jsp&quot;);
                            dispatcher.forward(request, response);
                        }

                        private void showEditForm(HttpServletRequest request, HttpServletResponse response)
                                throws SQLException, ServletException, IOException {
                            int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                            User existingUser = userDAO.selectUser(id);
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/edit.jsp&quot;);
                            request.setAttribute(&quot;user&quot;, existingUser);
                            dispatcher.forward(request, response);

                        }

                        private void insertUser(HttpServletRequest request, HttpServletResponse response)
                                throws SQLException, IOException, ServletException {
                            String name = request.getParameter(&quot;name&quot;);
                            String email = request.getParameter(&quot;email&quot;);
                            String country = request.getParameter(&quot;country&quot;);
                            User newUser = new User(name, email, country);
                            userDAO.insertUser(newUser);
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/create.jsp&quot;);
                            dispatcher.forward(request, response);
                        }

                        private void updateUser(HttpServletRequest request, HttpServletResponse response)
                                throws SQLException, IOException, ServletException {
                            int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                            String name = request.getParameter(&quot;name&quot;);
                            String email = request.getParameter(&quot;email&quot;);
                            String country = request.getParameter(&quot;country&quot;);

                            User book = new User(id, name, email, country);
                            userDAO.updateUser(book);
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/edit.jsp&quot;);
                            dispatcher.forward(request, response);
                        }

                        private void deleteUser(HttpServletRequest request, HttpServletResponse response)
                                throws SQLException, IOException, ServletException {
                            int id = Integer.parseInt(request.getParameter(&quot;id&quot;));
                            userDAO.deleteUser(id);

                            List&lt;User&gt; listUser = userDAO.selectAllUsers();
                            request.setAttribute(&quot;listUser&quot;, listUser);
                            RequestDispatcher dispatcher = request.getRequestDispatcher(&quot;user/list.jsp&quot;);
                            dispatcher.forward(request, response);
                        }
                    }

                </code></pre>

                <p class="p0"> Bước 7: Tạo trang list.jsp hiển thị danh sách User:</p>

                <pre><code class="language-sql">
                    &lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=UTF-8&quot;
                             pageEncoding=&quot;UTF-8&quot; %&gt;
                    &lt;%@ taglib uri=&quot;http://java.sun.com/jsp/jstl/core&quot; prefix=&quot;c&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;User Management Application&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;center&gt;
                        &lt;h1&gt;User Management&lt;/h1&gt;
                        &lt;h2&gt;
                            &lt;a href=&quot;/users?action=create&quot;&gt;Add New User&lt;/a&gt;
                        &lt;/h2&gt;
                    &lt;/center&gt;
                    &lt;div align=&quot;center&quot;&gt;
                        &lt;table border=&quot;1&quot; cellpadding=&quot;5&quot;&gt;
                            &lt;caption&gt;&lt;h2&gt;List of Users&lt;/h2&gt;&lt;/caption&gt;
                            &lt;tr&gt;
                                &lt;th&gt;ID&lt;/th&gt;
                                &lt;th&gt;Name&lt;/th&gt;
                                &lt;th&gt;Email&lt;/th&gt;
                                &lt;th&gt;Country&lt;/th&gt;
                                &lt;th&gt;Actions&lt;/th&gt;
                            &lt;/tr&gt;
                            &lt;c:forEach var=&quot;user&quot; items=&quot;${listUser}&quot;&gt;
                                &lt;tr&gt;
                                    &lt;td&gt;&lt;c:out value=&quot;${user.id}&quot;/&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;c:out value=&quot;${user.name}&quot;/&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;c:out value=&quot;${user.email}&quot;/&gt;&lt;/td&gt;
                                    &lt;td&gt;&lt;c:out value=&quot;${user.country}&quot;/&gt;&lt;/td&gt;
                                    &lt;td&gt;
                                        &lt;a href=&quot;/users?action=edit&amp;id=${user.id}&quot;&gt;Edit&lt;/a&gt;
                                        &lt;a href=&quot;/users?action=delete&amp;id=${user.id}&quot;&gt;Delete&lt;/a&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/c:forEach&gt;
                        &lt;/table&gt;
                    &lt;/div&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>


                <p class="p0"> Bước 8: Cấu hình Tomcat và Artifacts.</p>
                <p class="p0"> Bước 9: Chạy ứng dụng, mở trình duyệt và truy cập vào link sau:</p>
                <p class="p1"> - http://localhost:8080/users</p>
                <p class="p0"> Bước 10: Thêm trang create.jsp, thêm mới User</p>

                <pre><code class="language-sql">
                    &lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=UTF-8&quot;
                             pageEncoding=&quot;UTF-8&quot; %&gt;
                    &lt;%@ taglib uri=&quot;http://java.sun.com/jsp/jstl/core&quot; prefix=&quot;c&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;User Management Application&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;center&gt;
                        &lt;h1&gt;User Management&lt;/h1&gt;
                        &lt;h2&gt;
                            &lt;a href=&quot;users?action=users&quot;&gt;List All Users&lt;/a&gt;
                        &lt;/h2&gt;
                    &lt;/center&gt;
                    &lt;div align=&quot;center&quot;&gt;
                        &lt;form method=&quot;post&quot;&gt;
                            &lt;table border=&quot;1&quot; cellpadding=&quot;5&quot;&gt;
                                &lt;caption&gt;
                                    &lt;h2&gt;Add New User&lt;/h2&gt;
                                &lt;/caption&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;User Name:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;name&quot; id=&quot;name&quot; size=&quot;45&quot;/&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;User Email:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;email&quot; id=&quot;email&quot; size=&quot;45&quot;/&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;Country:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;country&quot; id=&quot;country&quot; size=&quot;15&quot;/&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td colspan=&quot;2&quot; align=&quot;center&quot;&gt;
                                        &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/table&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>


                <p class="p1">-Chạy chương trình và test chức năng thêm mới.</p>
                <p class="p0"> Bước 11: Thêm trang edit.jsp, sửa thông tin User:</p>

                <pre><code class="language-sql">
                    &lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=UTF-8&quot;
                             pageEncoding=&quot;UTF-8&quot; %&gt;
                    &lt;%@ taglib uri=&quot;http://java.sun.com/jsp/jstl/core&quot; prefix=&quot;c&quot; %&gt;
                    &lt;html&gt;
                    &lt;head&gt;
                        &lt;title&gt;User Management Application&lt;/title&gt;
                    &lt;/head&gt;
                    &lt;body&gt;
                    &lt;center&gt;
                        &lt;h1&gt;User Management&lt;/h1&gt;
                        &lt;h2&gt;
                            &lt;a href=&quot;users?action=users&quot;&gt;List All Users&lt;/a&gt;
                        &lt;/h2&gt;
                    &lt;/center&gt;
                    &lt;div align=&quot;center&quot;&gt;
                        &lt;form method=&quot;post&quot;&gt;
                            &lt;table border=&quot;1&quot; cellpadding=&quot;5&quot;&gt;
                                &lt;caption&gt;
                                    &lt;h2&gt;
                                        Edit User
                                    &lt;/h2&gt;
                                &lt;/caption&gt;
                                &lt;c:if test=&quot;${user != null}&quot;&gt;
                                    &lt;input type=&quot;hidden&quot; name=&quot;id&quot; value=&quot;&lt;c:out value='${user.id}' /&gt;&quot;/&gt;
                                &lt;/c:if&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;User Name:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;name&quot; size=&quot;45&quot;
                                               value=&quot;&lt;c:out value='${user.name}' /&gt;&quot;
                                        /&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;User Email:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;email&quot; size=&quot;45&quot;
                                               value=&quot;&lt;c:out value='${user.email}' /&gt;&quot;
                                        /&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;th&gt;Country:&lt;/th&gt;
                                    &lt;td&gt;
                                        &lt;input type=&quot;text&quot; name=&quot;country&quot; size=&quot;15&quot;
                                               value=&quot;&lt;c:out value='${user.country}' /&gt;&quot;
                                        /&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                                &lt;tr&gt;
                                    &lt;td colspan=&quot;2&quot; align=&quot;center&quot;&gt;
                                        &lt;input type=&quot;submit&quot; value=&quot;Save&quot;/&gt;
                                    &lt;/td&gt;
                                &lt;/tr&gt;
                            &lt;/table&gt;
                        &lt;/form&gt;
                    &lt;/div&gt;
                    &lt;/body&gt;
                    &lt;/html&gt;

                </code></pre>
                <p class="p1">-Chạy chương trình và test chức năng sửa đổi.</p>
                <p class="p0">Bước 12: Test chức năng xóa.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
