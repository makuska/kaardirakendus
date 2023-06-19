package com.synnigeograafia.backend.domain;

public class EmailRequest {
    private String recipient;
    private String name;
    private String subject;


    public EmailRequest(String recipient, String name, String subject) {
        this.recipient = recipient;
        this.name = name;
        this.subject = subject;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Override
    public String toString() {
        return "EmailRequest{" +
                "recipient='" + recipient + '\'' +
                ", name='" + name + '\'' +
                ", subject='" + subject + '\'' +
                '}';
    }
}
