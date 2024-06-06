package com.bazar.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long articleID;

    @ManyToOne
    @JoinColumn(name = "vendeurID", nullable = false)
    private Utilisateur vendeur;

    private String nom;
    private String description;

    @Enumerated(EnumType.STRING)
    private Categorie categorie;

    private double prix;

    @Enumerated(EnumType.STRING)
    private Statut statut;
}

