package com.bazar.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Commentaire {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long commentaireID;

    @ManyToOne
    @JoinColumn(name = "acheteurID")
    private Utilisateur acheteur;

    @ManyToOne
    @JoinColumn(name = "vendeurID")
    private Utilisateur vendeur;

    private int note;

    private String texte;
}
