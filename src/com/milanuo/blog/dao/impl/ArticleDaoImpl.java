package com.milanuo.blog.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.milanuo.blog.dao.IArticleDao;
import com.milanuo.blog.domain.Article;

//文章CRUD的实现类
@Repository
public class ArticleDaoImpl implements IArticleDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource ds) {
		this.jdbcTemplate = new JdbcTemplate(ds);
	}

	public void add(Article obj) {
		jdbcTemplate.update(
				"INSERT INTO article (title,summary,editDate,seeTimes,text,user_id,sort_id) VALUES (?,?,?,?,?,?,?)",
				obj.getTitle(), obj.getSummary(), obj.getEditDate(), obj.getSeeTimes(), obj.getText(), obj.getUser_id(),
				obj.getSort_id());
	}

	public void delete(Long id) {
		jdbcTemplate.update("DELETE FROM article WHERE id = ?", id);
	}

	public void update(Article obj) {
		jdbcTemplate.update(
				"UPDATE article SET title = ? ,summary = ? ,editDate = ? ,seeTimes = ? ,text = ? ,user_id = ? ,sort_id = ? WHERE id = ?",
				obj.getTitle(), obj.getSummary(), obj.getEditDate(), obj.getSeeTimes(), obj.getText(), obj.getUser_id(),
				obj.getSort_id(), obj.getId());
	}

	public Article getArt(Long id) {
		List<Article> list = jdbcTemplate.query(
				"SELECT title,summary,editDate,seeTimes,text,user_id,sort_id FROM article WHERE id = ?",
				new Object[] { id }, new RowMapper<Article>() {
					public Article mapRow(ResultSet rs, int rowNum) throws SQLException {
						Article article = new Article();
						article.setId(id);
						article.setTitle(rs.getString("title"));
						article.setSummary(rs.getString("summary"));
						article.setEditDate(rs.getDate("editDate"));
						article.setSeeTimes(rs.getInt("seeTimes"));
						article.setText(rs.getString("text"));
						article.setUser_id(rs.getLong("user_id"));
						article.setSort_id(rs.getLong("sort_id"));
						return article;
					}
				});
		return list.size() == 1 ? list.get(0) : null;
	}

	public List<Article> getAll() {
		return jdbcTemplate.query("SELECT id,title,summary,editDate,seeTimes,text,user_id,sort_id FROM article",
				new Object[] {}, new RowMapper<Article>() {
					public Article mapRow(ResultSet rs, int rowNum) throws SQLException {
						Article article = new Article();
						article.setId(rs.getLong("id"));
						article.setTitle(rs.getString("title"));
						article.setSummary(rs.getString("summary"));
						article.setEditDate(rs.getDate("editDate"));
						article.setSeeTimes(rs.getInt("seeTimes"));
						article.setText(rs.getString("text"));
						article.setUser_id(rs.getLong("user_id"));
						article.setSort_id(rs.getLong("sort_id"));
						return article;
					}
				});
	}

}
