package com.bjpowernode.oa.bean;

import java.util.Objects;

public class Address {
    private String id;
    private String rec;
    private String address;
    private String code;
    private String tel;

    public Address() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRec() {
        return rec;
    }

    public void setRec(String rec) {
        this.rec = rec;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id='" + id + '\'' +
                ", rec='" + rec + '\'' +
                ", address='" + address + '\'' +
                ", code='" + code + '\'' +
                ", tel='" + tel + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Address address1 = (Address) o;
        return Objects.equals(id, address1.id) && Objects.equals(rec, address1.rec) && Objects.equals(address, address1.address) && Objects.equals(code, address1.code) && Objects.equals(tel, address1.tel);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, rec, address, code, tel);
    }
}
