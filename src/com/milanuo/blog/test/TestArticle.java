package com.milanuo.blog.test;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import com.milanuo.blog.dao.impl.ArticleDaoImpl;
import com.milanuo.blog.domain.Article;

@SpringJUnitConfig(locations="classpath:applicationContext.xml")
public class TestArticle {
	@Autowired
	private ArticleDaoImpl dao;
	
	@Test
	void testGetArt() throws Exception {
		System.out.println(dao.getArt(1L));
	}
	
	@Test
	void testGetAll() throws Exception {
		List<Article> list = dao.getAll();
		for (Article article : list) {
			System.out.println(article);
		}
	}
}
