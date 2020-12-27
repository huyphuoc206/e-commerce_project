package com.ecostore.mail;

public class MailMessage {
    public static String getWelcome(String name) {
        StringBuilder sb = new StringBuilder();
        sb.append("Thân chào "+name+",\n");
        sb.append("Chúc mừng bạn đã đăng ký thành công tài khoản sử dụng dịch vụ của Eco Store chúng tôi. \n");
        sb.append("Hy vọng bạn sẽ có được những sự trải nghiệm tuyệt vời và chọn lựa được những sản phẩm phù hợp với sự lựa chọn của mình.\n");
        sb.append("Chúng tôi rất vui lòng được giải đáp mọi thắc mắc của bạn về sản phẩm thông qua email này.\n");
        sb.append("Chúc một ngày tốt lành.\n");
        sb.append("Trân trọng cảm ơn!");
        return sb.toString();
    }
}
