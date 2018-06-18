package com.milanuo.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.milanuo.blog.dao.impl.ArticleDaoImpl;
import com.milanuo.blog.domain.Article;
import com.milanuo.blog.service.IArticleService;

@Service
@Transactional
public class ArticleServiceImpl implements IArticleService {

	@Autowired
	private ArticleDaoImpl dao;

	public void add(Article obj) {
		dao.add(obj);
	}

	public void delete(Long id) {
		dao.delete(id);
	}

	public void update(Article obj) {
		dao.update(obj);
	}

	@Transactional(readOnly = true)
	public Article getArt(Long id) {
		return dao.getArt(id);
	}

	@Transactional(readOnly = true)
	public List<Article> getAll() {
		return dao.getAll();
	}

}
