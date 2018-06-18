/*
Navicat MySQL Data Transfer

Source Server         : Saber
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2018-06-18 14:53:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `summary` text,
  `editDate` date DEFAULT NULL,
  `seeTimes` int(11) DEFAULT NULL,
  `text` text,
  `user_id` bigint(20) DEFAULT NULL,
  `sort_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '请求重定向与请求转发的比较\r\n                                \r\n               ', 'WEB中的请求重定向与请求转发的路径问题对于很多初学者来说是很容易混淆的，接下来就通过比较来理解两者的不同。\r\n                                \r\n                                \r\n                                ', '2018-05-15', null, '<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	<span> HttpServletResponse.sendRedirect</span>方法和<span>RequestDispatcher.forward</span>方法都可以让浏览器获得另外一个<span>URL</span>所指向的资源，但两者的内部运行机制有很大的区别。\r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:39pt;text-indent:2em;\">\r\n	<span class=\"2Char\">1. </span><span class=\"2Char\">RequestDispatcher.forward</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	方法只能将请求转发给同一个<span>Web</span>应用中的组件，<span>HttpServletResponse.sendRedirect</span>不仅可以重定向到当前应用程序的其他资源，还可以重定向到痛一个站点上的其他应用程序的资源，甚至是使用绝对<span>URL</span>重定向到其他站点的资源。对于<span>sendRedirect</span>如果传递的<span>URL</span>以<span>\"/\"</span>开头，他是相对于整个<span>Web</span>站点的根目录；对于<span>forward</span>如果传递的<span>URL</span>以<span>\"/\"</span>开头，它是相对于当前<span>Web</span>应用程序的根目录。\r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:39pt;text-indent:2em;\">\r\n	<span class=\"2Char\">2. </span><span class=\"2Char\">sendRedirect</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	对浏览器做出的响应是重新发出对另外一个<span>URL</span>的访问请求，<span>forward</span>在服务器端内部将请求转发给另外一个资源，浏览器只知道发出了请求并得到了响应结果\r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:39pt;text-indent:2em;\">\r\n	<span class=\"2Char\">3. </span><span class=\"2Char\">forward</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	的调用者与被调用者之间共享相同的<span>request</span>对象和<span>response</span>对象，他们属于痛一个访问请求和响应过程；<span>sendRedirect</span>的调用者与被调用者使用各自的<span>request</span>和<span>response</span>对象，属于两个独立的访问请求和响应过程。\r\n</p>', null, null);
INSERT INTO `article` VALUES ('2', '博客项目(一)\r\n                                \r\n                     ', '从零开始制作一个个人博客                                \r\n                                \r\n                                \r\n                                ', '2018-05-15', null, '<p class=\"MsoNormal\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;博客，英文名为<span><a href=\"https://baike.baidu.com/item/Blogger\" target=\"_blank\">Blogger</a></span>，正式名称为网络日记，是使用特定的软件，在网络上出版、发表和张贴个人文章的人，或者是一种通常由个人管理、不定期张贴新的文章的<span><a href=\"https://baike.baidu.com/item/%E7%BD%91%E7%AB%99/155722\" target=\"_blank\"><span>网站</span></a></span>。博客是继MSN.BBS.ICQ之后出现的第4种网络交流方式，现已受到大家的欢迎，是网络时代的个人“读者文摘”，是以超级链接为武器的网络日记，它代表着新的生活、工作和学习方式。许多博客专注在特定的课题上提供评论或<span><a href=\"https://baike.baidu.com/item/%E6%96%B0%E9%97%BB\" target=\"_blank\"><span>新闻</span></a></span>，其他则被作为比较个人的<span><a href=\"https://baike.baidu.com/item/%E6%97%A5%E8%AE%B0\" target=\"_blank\"><span>日记</span></a></span>。一个典型的博客结合了<span><a href=\"https://baike.baidu.com/item/%E6%96%87%E5%AD%97\" target=\"_blank\"><span>文字</span></a></span>、图像、其他博客或网站的<span><a href=\"https://baike.baidu.com/item/%E9%93%BE%E6%8E%A5\" target=\"_blank\"><span>链接</span></a></span>及其它与主题相关的<span><a href=\"https://baike.baidu.com/item/%E5%AA%92%E4%BD%93\" target=\"_blank\"><span>媒体</span></a></span>，能够让读者以<span><a href=\"https://baike.baidu.com/item/%E4%BA%92%E5%8A%A8/10073145\" target=\"_blank\"><span>互动</span></a></span>的方式留下意见，是许多博客的重要要素。大部分的博客内容以文字为主，仍有一些博客专注在艺术、摄影、视频、音乐、<span><a href=\"https://baike.baidu.com/item/%E6%92%AD%E5%AE%A2\" target=\"_blank\"><span>播客</span></a></span>等各种主题。博客是社会媒体网络的一部分。比较著名的有新浪、<span><a href=\"https://baike.baidu.com/item/%E7%BD%91%E6%98%93\" target=\"_blank\"><span>网易</span></a></span>等博客。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	接下来我们就一起制作一个简单的个人博客。<span></span> \r\n</p>\r\n<h1>\r\n	<!--[if !supportLists]-->1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<!--[endif]-->个人博客应该具有哪些功能\r\n</h1>\r\n<p class=\"MsoNormal\">\r\n	&emsp;个人博客相对于新浪、网易等大型博客，功能上可以简单一些。只保留主要的操作，而去掉那些繁琐的样式和不必要的功能，这样既可以减小开发成本，又可以提高性能。最基本的博客应包含哪些功能呢？\r\n</p>\r\n<h2>\r\n	<!--[if !supportLists]-->1.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;博文的增删改查\r\n</h2>\r\n<p class=\"MsoNormal\">\r\n	这是一个博客最基本的功能，也是最核心的功能。\r\n</p>\r\n<h2>\r\n	<!--[if !supportLists]-->1.2&nbsp;&nbsp;&nbsp;&nbsp;\r\n<!--[endif]-->评论功能\r\n</h2>\r\n<p class=\"MsoNormal\">\r\n	对博客内容发表意见和阐述不同观点，有利于博主和观者进行交流，增加用户体验。\r\n</p>\r\n<h2>\r\n	<!--[if !supportLists]-->1.3&nbsp;&nbsp;&nbsp;&nbsp;\r\n<!--[endif]-->浏览计数功能\r\n</h2>\r\n<p class=\"MsoNormal\">\r\n	博客的浏览数及文章的浏览次数，可以更直观的了解博客的关注程度。\r\n</p>\r\n<h2>\r\n	<!--[if !supportLists]-->1.4&nbsp;&nbsp;&nbsp;&nbsp;\r\n<!--[endif]-->其他功能\r\n</h2>\r\n<p class=\"MsoNormal\">\r\n	社交功能，点赞功能，文章目录功能，邮件订阅功能，微信公众号功能等等，这些井上添花的功能可以在我们完成上述功能后，按照自己的喜好添加。\r\n</p>', null, null);
