package com.milanuo.blog.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.milanuo.blog.domain.Article;
import com.milanuo.blog.service.IArticleService;

@Controller
@RequestMapping("/blog")
public class ArticleController {
	@Autowired
	private IArticleService service;

	@RequestMapping("/index")
	public String index(Model model) {
		List<Article> list = service.getAll();
		model.addAttribute("list", list);
		return "index";
	}

	@RequestMapping("/articleList")
	public String articleList(Model model) {
		List<Article> list = service.getAll();
		model.addAttribute("list", list);
		return "articleList";
	}

	@RequestMapping("/article")
	public String article(Model model, Long id) {
		Article article = service.getArt(id);
		model.addAttribute("article", article);
		return "article";
	}
	
	@RequestMapping("/edit")
	public String edit(Model model, Long id) {
		if(id != null) {
			Article article = service.getArt(id);
			model.addAttribute("article", article);
		}
		return "articleEdit";
	}
	
	@RequestMapping("/save")
	public String edit(Article article) {
		article.setEditDate(new Date());
		if(article.getId()!=null) {
			service.update(article);
		}else {
			service.add(article);
		}
		return "redirect:/blog/articleList";
	}
}
