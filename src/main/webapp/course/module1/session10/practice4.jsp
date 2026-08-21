<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="../../../head.jsp"/>
<body>

<c:import url="../../../navbar.jsp"/>
<div class="row main">
    <c:import url="../../../sidebar.jsp"/>
    <div class=" col-lg-10 mt-3 d-flex justify-content-center container navbar-nav-scroll min-vh-100">
        <div class="d-flex justify-content-center container">
            <div>
                <a href="${pageContext.request.contextPath}/course/module1/session10/detail.jsp" style="border:1px solid #7952B3"
                   class="mb-2 btn btn-sm btn-outline-warning">10. Lập trình OOP</a>
                <h4>[Thực hành] Xây dựng lớp mô phỏng sự hoạt động của đèn pin</h4>

                <h5>Mục tiêu</h5>
                <p>Luyện tập tạo lớp, khởi tạo đối tượng, sử dụng phương thức và thuộc tính của đối tượng.</p>

                <h5>Mô tả</h5>
                <p>Ví dụ mô phỏng sự hoạt động của một chiếc đèn pin. Trong ví dụ này ta có 2 lớp đối tượng cơ bản là
                    Đèn (FlashLamp) và Pin (Battery). Đối tượng pin mang trong mình thông tin về trạng thái năng lượng
                    của nó, đối tượng đèn sẽ sử dụng một đối tượng pin để cung cấp năng lượng cho hoạt động chiếu sáng,
                    khi đó ta nói có sự tương tác và trao đổi thông tin giữa hai đối tượng đèn và pin.</p>
                <img src="img/img-p4.png" style="width: 50%;">
                <p>Ở đây, Battery được coi như là một thành phần trong cấu tạo của FlashLamp.</p>

                <h5>Hướng dẫn</h5>
                <p><b>Bước 1:</b>: Khai báo lớp Battery</p>
                <p>Bởi vì lớp FlashLamp có sử dụng lớp Battery, hay nói cách khác, lớp FlashLamp phụ thuộc vào lớp
                    Battery, do đó chúng ta sẽ bắt đầu khai báo lớp Battery trước.</p>
                <pre><code class="language-javascript language-markup">
                    class Battery {
                        setEnergy(energy) {
                            this.energy = energy;
                        };

                        getEnergy() {
                            return this.energy;
                        };

                        decreaseEnergy() {
                            if (this.energy > 0) {
                                this.energy--;
                            }
                        }
                    }
                </code></pre>
                <p><b>Bước 2:</b> Khai báo lớp FlashLamp</p>
                <pre><code class="language-javascript language-markup">
                    class FlashLamp{

                        setBattery(battery) {
                            this.battery = battery;
                        };

                        getBatteryInfo() {
                            return this.battery.getEnergy();
                        };

                        light() {
                            if(this.status){
                                alert("Lighting");
                            } else {
                                alert("Not lighting");
                            }
                        };

                        turnOn() {
                            this.status = true;
                        };

                       turnOff() {
                            this.status = false;
                        }
                    }

                </code></pre>
                <p><b>Bước 3:</b>Thử nghiệm </p>
                <pre><code class="language-javascript language-markup">
                    // khởi tạo một đối tương pin
                    let battery = new Battery();
                    battery.setEnergy(10);

                    // khởi tạo đối tượng đèn pin
                    let flashLamp = new FlashLamp();
                    // cài đặt pin
                    flashLamp.setBattery(battery);

                    // hiển thị thông tin
                    document.write("Battery info:" + flashLamp.getBatteryInfo() + "<br/>");
                    // kiểm tra tình trạng đền sáng/tắt
                    flashLamp.light();

                    // bật đèn
                    document.write("Turn on<br/>")
                    flashLamp.turnOn();
                    flashLamp.light();
                    // kiểm tra tình trạng pin
                    document.write("Battery info:" + flashLamp.getBatteryInfo() + "<br/>");

                    // tắt đèn
                    document.write("Turn off<br/>")
                    flashLamp.turnOff();
                    flashLamp.light();
                </code></pre>
                <p><b>Bước 4:</b> Sử dụng lớp vừa tạo. Tạo đối tượng hình tròn với bán kính là 2</p>



            </div>
        </div>
    </div>
</div>


</body>
</html>
