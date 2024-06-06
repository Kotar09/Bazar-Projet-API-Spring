-- Table Utilisateur
CREATE TABLE  IF NOT EXISTS Utilisateur (
                             UtilisateurID BIGINT PRIMARY KEY AUTO_INCREMENT,
                             Nom VARCHAR(255) NOT NULL,
                             Email VARCHAR(255) NOT NULL UNIQUE,
                             MotDePasse VARCHAR(255) NOT NULL,
                             Role ENUM('Vendeur', 'Acheteur', 'Les_Deux') NOT NULL
);

-- Table Article
CREATE TABLE IF NOT EXISTS Article (
                         ArticleID BIGINT PRIMARY KEY AUTO_INCREMENT,
                         VendeurID BIGINT,
                         Nom VARCHAR(255) NOT NULL,
                         Description TEXT,
                         Categorie ENUM('Nourriture', 'Meubles', 'Artisanat', 'Chiens') NOT NULL,
                         Prix DECIMAL(10, 2) NOT NULL,
                         Statut ENUM('Disponible', 'Vendu') NOT NULL,
                         FOREIGN KEY (VendeurID) REFERENCES Utilisateur(UtilisateurID)
);

-- Table Transaction
CREATE TABLE IF NOT EXISTS Transaction (
                             TransactionID BIGINT PRIMARY KEY AUTO_INCREMENT,
                             AcheteurID BIGINT,
                             ArticleID BIGINT,
                             DateAchat DATE NOT NULL,
                             FOREIGN KEY (AcheteurID) REFERENCES Utilisateur(UtilisateurID),
                             FOREIGN KEY (ArticleID) REFERENCES Article(ArticleID)
);

-- Table Commentaire
CREATE TABLE IF NOT EXISTS Commentaire (
                             CommentaireID BIGINT PRIMARY KEY AUTO_INCREMENT,
                             AcheteurID BIGINT,
                             VendeurID BIGINT,
                             Note INT CHECK (Note >= 1 AND Note <= 5),
                             Texte TEXT,
                             FOREIGN KEY (AcheteurID) REFERENCES Utilisateur(UtilisateurID),
                             FOREIGN KEY (VendeurID) REFERENCES Utilisateur(UtilisateurID)
);
