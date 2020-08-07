package service;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
public class send_mail {
public static void main(String[] args) {
String to="nironisha0606@gmail.com";//change accordingly
//Get the session object
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class",
"javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication("it18123814@my.sliit.lk","nirosha");//Put your email id and password here
}
});
//compose message
try {
MimeMessage message = new MimeMessage(session);
message.setFrom(new InternetAddress("it18123814@my.sliit.lk"));//change accordingly
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
message.setSubject("Hello");
message.setText("Testing over over.......");
//send message
Transport.send(message);
System.out.println("message sent successfully");



} catch (MessagingException e) {throw new RuntimeException(e);
}



}


}
