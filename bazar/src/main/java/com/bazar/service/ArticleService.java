package com.bazar.service;

import com.bazar.model.Article;
import com.bazar.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService {
    @Autowired
    private ArticleRepository articleRepository;

    public List<Article> getAllArticles() {
        return articleRepository.findAll();
    }

    public Article getArticleById(Long id) {
        return articleRepository.findById(id).orElse(null);
    }

    public Article createArticle(Article article) {
        return articleRepository.save(article);
    }

    public Article updateArticle(Long id, Article articleDetails) {
        Article article = articleRepository.findById(id).orElse(null);
        if (article != null) {
            article.setNom(articleDetails.getNom());
            article.setDescription(articleDetails.getDescription());
            article.setCategorie(articleDetails.getCategorie());
            article.setPrix(articleDetails.getPrix());
            article.setStatut(articleDetails.getStatut());
            return articleRepository.save(article);
        }
        return null;
    }

    public void deleteArticle(Long id) {
        articleRepository.deleteById(id);
    }

}
