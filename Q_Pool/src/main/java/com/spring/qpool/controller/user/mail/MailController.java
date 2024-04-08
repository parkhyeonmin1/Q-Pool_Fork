package com.spring.qpool.controller.user.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.qpool.biz.mail.MailDTO;
import com.spring.qpool.biz.mail.MailService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MailController {
	
	private final MailService mailService;

    @GetMapping("/mailPage")
    public String dispMail() {
        return "user/mail";
    }

    @PostMapping("/mail")
    public String execMail(MailDTO mailDTO) {
        mailService.mailSend(mailDTO);
        
        return "user/main";
    }
}
