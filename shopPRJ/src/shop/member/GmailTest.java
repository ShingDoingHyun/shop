package shop.member;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class GmailTest {
	public void sendEmail(String email, String pwd) throws MessagingException{
        // 메일 관련 정보
        String host = "smtp.gmail.com";
        String username = "testemailforshoppingmall@gmail.com";
        String password = "!asdf1234";
         
        // 메일 내용
        String recipient = email ;
        String subject = "비밀 번호 입니다.";
        String body = "비밀번호는 "+pwd+ " 입니다.";
         
        //properties 설정
        Properties props = new Properties();
        props.put("mail.smtps.auth", "true");
        // 메일 세션
        Session session = Session.getDefaultInstance(props);
        MimeMessage msg = new MimeMessage(session);
 
        // 메일 관련
        msg.setSubject(subject);
        msg.setText(body);
        msg.setFrom(new InternetAddress(username));
        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
 
        // 발송 처리
        Transport transport = session.getTransport("smtps");
        transport.connect(host, username, password);
        transport.sendMessage(msg, msg.getAllRecipients());
        transport.close();     
    }


}
