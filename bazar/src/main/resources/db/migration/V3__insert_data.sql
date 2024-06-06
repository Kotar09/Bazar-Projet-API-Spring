-- Insertion d'articles
INSERT INTO Article (VendeurID, Nom, Description, Categorie, Prix, Statut) VALUES
(2, 'Tableau abstrait', 'Peinture originale sur toile', 'Artisanat', 150.00, 'Disponible'),
(4, 'Canapé en cuir', 'Canapé trois places en cuir noir', 'Meubles', 500.00, 'Disponible'),
(4, 'Collier en perles', 'Collier élégant fait à la main', 'Artisanat', 80.00, 'Disponible'),
(5, 'Chiot Labrador', 'Adorable chiot Labrador retriever', 'Chiens', 800.00, 'Disponible'),
(5, 'Tarte aux pommes', 'Délicieuse tarte maison aux pommes', 'Nourriture', 15.00, 'Disponible');

-- Insertion de transactions
INSERT INTO Transaction (AcheteurID, ArticleID, DateAchat) VALUES
(1, 4, '2024-06-10'),
(3, 2, '2024-06-11'),
(5, 1, '2024-06-12'),
(2, 5, '2024-06-13');

-- Insertion de commentaires
INSERT INTO Commentaire (AcheteurID, VendeurID, Note, Texte) VALUES
(1, 4, 4, 'Le canapé est confortable mais la livraison a été un peu retardée.'),
(3, 2, 5, 'Excellent service client et livraison rapide.'),
(5, 1, 3, 'Le tableau était bien emballé mais la couleur est un peu fade.'),
(2, 5, 5, 'Le chiot est en bonne santé et adorable ! Recommande fortement.');