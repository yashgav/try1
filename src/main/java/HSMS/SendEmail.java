/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.string_class;

/**
 *
 * @author Yash
 */
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendEmail {
    public static void main(String[] args) {
    }
    public void mailing(String us,String ps, String fr,String toi,String fname,String wus,int a_m){
        // SMTP server information
        String smtpHost = "smtp.gmail.com";
        int smtpPort = 465;
        final String username = us;
        final String password = ps;

        // Sender and recipient email addresses
        String from = fr;
        String to = toi;

        // Email subject and content
        String subject = "SMS Register Successfull";
        String body=null;
        if(a_m==1){
         body = "Hello "+fname+",\n\n\tWelcome to SMS.\nYou are registered successfully as ADMIN to SMS portal.\n\nUSERNAME: "+wus;
        }
        else{
         body = "Hello "+fname+",\n\n\tWelcome to SMS.\nYou are registered successfully as MEMBER to SMS portal.\n\nUSERNAME: "+wus;
        
    }
        // Set mail properties
        Properties props = new Properties();
        props.put("mail.smtp.host", smtpHost);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Create a mail session with authentication
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        Session session = Session.getInstance(props, auth);

        try {
            // Create a message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(body);

            // Send the message
            Transport.send(message);
            System.out.println("Email sent successfully!");
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }
    public void billing(String us,String ps, String fr,String toi,String fname,String wus,int a_m){
        // SMTP server information
        String smtpHost = "smtp.gmail.com";
        int smtpPort = 465;
        final String username = us;
        final String password = ps;

        // Sender and recipient email addresses
        String from = fr;
        String to = toi;

        // Email subject and content
        String subject = "SMS Register Successfull";
        String body=null;
        if(a_m==1){
         body = "Hello "+fname+",\n\n\tWelcome to SMS.\nYou are registered successfully as ADMIN to SMS portal.\n\nUSERNAME: "+wus;
        }
        else{
         body = "Hello "+fname+",\n\n\tWelcome to SMS.\nYou are registered successfully as MEMBER to SMS portal.\n\nUSERNAME: "+wus;
        
    }
        // Set mail properties
        Properties props = new Properties();
        props.put("mail.smtp.host", smtpHost);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Create a mail session with authentication
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        Session session = Session.getInstance(props, auth);

        try {
            // Create a message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(body);

            // Send the message
            Transport.send(message);
            System.out.println("Email sent successfully!");
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }
}
