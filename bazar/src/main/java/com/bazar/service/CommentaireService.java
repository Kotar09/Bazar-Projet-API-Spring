package com.bazar.service;

import com.bazar.model.Commentaire;
import com.bazar.repository.CommentaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentaireService {

    @Autowired
    private CommentaireRepository commentaireRepository;

    public Commentaire saveCommentaire(Commentaire commentaire) {
        return commentaireRepository.save(commentaire);
    }

    public List<Commentaire> getAllCommentaires() {
        return commentaireRepository.findAll();
    }

    public Commentaire getCommentaireById(Long id) {
        return commentaireRepository.findById(id).orElse(null);
    }

    public void deleteCommentaire(Long id) {
        commentaireRepository.deleteById(id);
    }
}
