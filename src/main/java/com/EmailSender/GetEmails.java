package com.EmailSender;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class GetEmails {

	public static boolean emails(String toEmail, String subject, String message){
		boolean test = false;
		String host ="smtp.gmail.com";
		String fromEmail="pankajtirdiya2001@gmail.com";
		String password = "ooywxapbylzetnjs";
		String name=SendBlockOfEmail.name;
	try {
		//first step is add all properties
		Properties pr = new Properties();
		pr.setProperty("mail.smtp.host", "smtp.gmail.com");
		pr.setProperty("mail.smtp.port", "465"); // for SSL
		pr.setProperty("mail.smtp.auth", "true");
		pr.setProperty("mail.smtp.socketFactory.port", "465");
		pr.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		
		//second step is create a session
		
		Session session = Session.getInstance(pr, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		});
		session.setDebug(true);
		
		//create Massage
		
		Message mess = new MimeMessage(session);
		mess.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
		mess.setFrom(new InternetAddress(fromEmail));
		mess.setSubject("Hello Every one I am "+name+"\n\n"+ subject);
		mess.setText(message);
		
		//last step is transport and send
		
		Transport.send(mess);
		
		test=true;
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		return test;
	}

}
