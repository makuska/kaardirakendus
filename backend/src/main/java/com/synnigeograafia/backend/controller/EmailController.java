package com.synnigeograafia.backend.controller;

import com.synnigeograafia.backend.domain.EmailRequest;
import com.synnigeograafia.backend.service.EmailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/email")
public class EmailController {

    private final EmailService emailService;
    private final Logger logger = LoggerFactory.getLogger(EmailController.class);
    @SuppressWarnings("FieldCanBeLocal")
    private final String RECIPIENT = "1521e4565f2885@inbox.mailtrap.io";

    public EmailController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping("/sendEmail")
    public void sendEmail(@RequestBody EmailRequest emailRequest){
        logger.info("Email request received: " + emailRequest.getRecipient(), emailRequest.getName(), emailRequest.getSubject());
        this.emailService.sendEmail(emailRequest.getRecipient(), emailRequest.getName(), emailRequest.getSubject());
    }

}
