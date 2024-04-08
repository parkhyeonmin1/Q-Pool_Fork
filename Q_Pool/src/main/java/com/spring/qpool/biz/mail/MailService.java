package com.spring.qpool.biz.mail;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MailService {
	private JavaMailSender mailSender;
    private static final String FROM_ADDRESS = "aa01033471686@gmail.com";

    public void mailSend(MailDTO mailDTO) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(mailDTO.getAddress());
        message.setFrom(MailService.FROM_ADDRESS);
        message.setSubject(mailDTO.getTitle());
        message.setText(mailDTO.getMessage());

        mailSender.send(message);
    }
    
//    public void mailSend(MailDTO mailDTO) {
//        try {
//            MailHandler mailHandler = new MailHandler(mailSender);
//            
//            // 받는 사람
//           mailHandler.setTo(mailDTO.getAddress());
//            // 보내는 사람
//           mailHandler.setFrom(MailService.FROM_ADDRESS);
//            // 제목
//           mailHandler.setSubject(mailDTO.getTitle());
//            // HTML Layout
//            String htmlContent = "<meta charset=\"UTF-8\"><p>" + mailDTO.getMessage() +"<p> <img src='cid:sample-img'>";
//            mailHandler.setText(htmlContent, true);
//            // 첨부 파일
//           mailHandler.setAttach("newTest.txt", "static/text/test.txt");
//            // 이미지 삽입
//           mailHandler.setInline("sample-img", "static/img/teemo.png");
//
//            mailHandler.send();
//        }
//        catch(Exception e){
//            e.printStackTrace();
//        }
//    }
}
