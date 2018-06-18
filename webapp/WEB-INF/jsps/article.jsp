<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/main.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="main-wrapper article">
    <header><!--页头开始 -->
        <nav>
            <div class="logo"><a href="/blog/index">密拉诺</a></div>
            <ul>
                <li><a class="list-group-item" href="/blog/index"><i class="fa fa-home fa-fw"></i></a></li>
                <li><a class="list-group-item" href="/blog/articleList"><i class="fa fa-book fa-fw"></i></a></li>
                <li><a class="list-group-item" href="/blog/edit"><i class="fa fa-file-photo-o fa-fw"></i></a></li>
                <li id="sidebar_trigger"><a class="list-group-item" href="#"><i class="fa fa-address-card fa-fw"></i></a></li>
            </ul>
        </nav>
        <div id="banner">
            <div class="inner">
                <h1>${article.title}</h1>
                <p class="sub-heading">${article.summary}</p>
            </div>
        </div>
    </header><!--页头结束 -->
    <div class="content">
        <div class="content-wrapper">
            <div class="article-info">编辑于 : ${article.editDate} | 浏览 : ${article.seeTimes} | <a href="/blog/edit?id=${article.id}">修改</a></div>
            <article>
                
                	${article.text}
               
            </article>
        </div>
    </div><!-- 内容结束 -->
    <footer><!-- 页脚开始 -->
        <ul class="share-group">
            <li>item1</li>
            <li>item2</li>
            <li>item3</li>
            <li>item4</li>
        </ul>
        <div class="copy">
            &copy; 密拉诺 - 2018
        </div>
    </footer><!-- 页脚结束 -->
</div>
<div class="mask"></div>
<div id="sidebar">
    <ul>
        <li><a href="">item1</a></li>
        <li><a href="">item2</a></li>
        <li><a href="">item3</a></li>
        <li><a href="">item4</a></li>
        <li><a href="">item5</a></li>
    </ul>
</div>
<button class="back-to-top">返回顶部</button>
<script src="/js/jQuery.js"></script>
<script src="/js/main.js"></script>
</body>
</html>
