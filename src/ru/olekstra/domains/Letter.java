package ru.olekstra.domains;

import java.util.Date;

public class Letter {

    private Long id;
    //max 20
    private String number;

    private Date date;
    //max 250
    private String subject;

    private Boolean posted;

    private String fileLink;

    //max 1000
    private String notes;

    public Letter(){

    }
    public Letter(Long id, String number, Date date, String subject) {
        this.id = id;
        this.number = number;
        this.date = date;
        this.subject = subject;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Boolean getPosted() {
        return posted;
    }

    public void setPosted(Boolean posted) {
        this.posted = posted;
    }

    public String getFileLink() {
        return fileLink;
    }

    public void setFileLink(String fileLink) {
        this.fileLink = fileLink;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

}
