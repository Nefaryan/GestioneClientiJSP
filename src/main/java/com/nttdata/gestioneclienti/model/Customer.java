package com.nttdata.gestioneclienti.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "customer")
public class Customer extends BaseEntity {

    private String name;
    private String surname;
    @Column(unique = true)
    private String fiscalCode;
    private Integer birthYear;
    private Integer birthMonth;
    private Integer birthDay;
    private double balance;

    public Customer() {}

    public Customer(String name, String surname, String fiscalCode, Integer birthYear, Integer birthMonth, Integer birthDay, double balance) {
        this.name = name;
        this.surname = surname;
        this.fiscalCode = fiscalCode;
        this.birthYear = birthYear;
        this.birthMonth = birthMonth;
        this.birthDay = birthDay;
        this.balance = balance;
    }

}