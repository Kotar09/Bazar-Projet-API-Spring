package com.bazar.model;

import jakarta.persistence.*;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long transactionID;

    @ManyToOne
    @JoinColumn(name = "acheteurID")
    private Utilisateur acheteur;

    @ManyToOne
    @JoinColumn(name = "articleID")
    private Article article;

    private Date dateAchat;

}
