package com.milanuo.blog.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

//封装了页面展示的数据
@Data
public class Article {
	private Long id;// 主键值
	private String title;// 文章的标题
	private String summary;// 文章的摘要
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date editDate;// 编辑日期
	private Integer seeTimes;// 浏览次数
	private String text;// 文章正文
	private Long user_id;// 用户ID
	private Long sort_id;// 分类ID
}
