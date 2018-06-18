package com.milanuo.blog.dao;

import java.util.List;

import com.milanuo.blog.domain.Article;

//定义CRUD方法
public interface IArticleDao {
	/**
	 * 新增文章
	 * @param obj 封装了文章数据的对象
	 */
	void add(Article obj);
	/**
	 * 删除文章
	 * @param id 需要删除的文章的主键
	 */
	void delete(Long id);
	/**
	 * 修改文章
	 * @param obj 封装了新的文章数据的对象
	 */
	void update(Article obj);
	/**
	 * 通过ID查询单个文章
	 * @param id 需要查询的文章的主键
	 * @return	封装了查询文章数据的对象
	 */
	Article getArt(Long id);
	/**
	 * 查询所有文章
	 * @return	封装了多个文章对象的集合
	 */
	List<Article> getAll();
}
