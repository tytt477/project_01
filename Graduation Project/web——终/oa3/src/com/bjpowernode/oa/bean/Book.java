package com.bjpowernode.oa.bean;

import java.util.Objects;

public class Book {
    private String bk_nm;
    private String pic_nm;
    private String aut;
    private String pub;
    private String pri;

    public Book() {
    }

    public String getBk_nm() {
        return bk_nm;
    }

    public void setBk_nm(String bk_nm) {
        this.bk_nm = bk_nm;
    }

    public String getPic_nm() {
        return pic_nm;
    }

    public void setPic_nm(String pic_nm) {
        this.pic_nm = pic_nm;
    }

    public String getAut() {
        return aut;
    }

    public void setAut(String aut) {
        this.aut = aut;
    }

    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
    }

    public String getPri() {
        return pri;
    }

    public void setPri(String pri) {
        this.pri = pri;
    }

    @Override
    public String toString() {
        return "Book{" +
                "bk_nm='" + bk_nm + '\'' +
                ", pic_nm='" + pic_nm + '\'' +
                ", aut='" + aut + '\'' +
                ", pub='" + pub + '\'' +
                ", pri='" + pri + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return Objects.equals(bk_nm, book.bk_nm) && Objects.equals(pic_nm, book.pic_nm) && Objects.equals(aut, book.aut) && Objects.equals(pub, book.pub) && Objects.equals(pri, book.pri);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bk_nm, pic_nm, aut, pub, pri);
    }
}
