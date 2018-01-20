---
title: 入门-template
date: 2018-01-06 00:53:27
tags: java
toc: true
---

# 0. 笔记技巧

- 设置hexo新建后自动用sublime打开编辑。

- 配置snippet以快速编辑blog。

# 1. 斜体和粗体

```
*斜体*或_斜体_
**粗体**
***加粗斜体***
~~删除线~~
```

*斜体*或_斜体_
**粗体**
***加粗斜体***
~~删除线~~

<!-- more -->

# 2. 分级标题
```
第一种写法：

这是一个一级标题
============================

这是一个二级标题
--------------------------------------------------

第二种写法：

# 一级标题

## 二级标题

### 三级标题

#### 四级标题

##### 五级标题

###### 六级标题

[TOC]
```

第一种写法：

这是一个一级标题
============================

这是一个二级标题
--------------------------------------------------

第二种写法：

# 一级标题

## 二级标题

### 三级标题

#### 四级标题

##### 五级标题

###### 六级标题

[TOC]

![imgname](http://notebook-1255399141.cossh.myqcloud.com/common/%E5%A4%B4%E5%83%8F/66/1.jpg "imgname")

# 3. 超链接
Markdown 支持两种形式的链接语法： 行内式和参考式两种形式，行内式一般使用较多。

## 3.1. 行内式

语法说明：

[]里写链接文字，()里写链接地址, ()中的”“中可以为链接指定title属性，title属性可加可不加。title属性的效果是鼠标悬停在链接上会出现指定的 title文字。[链接文字](链接地址 “链接标题”)’这样的形式。链接地址与链接标题前有一个空格。

```
欢迎来到[梵居闹市](http://blog.leanote.com/freewalk)
欢迎来到[梵居闹市](http://blog.leanote.com/freewalk "梵居闹市")
```
欢迎来到[梵居闹市](http://blog.leanote.com/freewalk)
欢迎来到[梵居闹市](http://blog.leanote.com/freewalk "梵居闹市")

## 3.2. 参考式

参考式超链接一般用在学术论文上面，或者另一种情况，如果某一个链接在文章中多处使用，那么使用引用 的方式创建链接将非常好，它可以让你对链接进行统一的管理。

语法说明： 
参考式链接分为两部分，文中的写法 [链接文字][链接标记]，在文本的任意位置添加[链接标记]:链接地址 “链接标题”，链接地址与链接标题前有一个空格。

如果链接文字本身可以做为链接标记，你也可以写成[链接文字][] 
[链接文字]：链接地址的形式，见代码的最后一行。

```
我经常去的几个网站[Google][1]、[Leanote][2]以及[自己的博客][3]
[Leanote 笔记][2]是一个不错的[网站][]。
[1]:http://www.google.com "Google"
[2]:http://www.leanote.com "Leanote"
[3]:http://http://blog.leanote.com/freewalk "梵居闹市"
[网站]:http://http://blog.leanote.com/freewalk
```
我经常去的几个网站[Google][1]、[Leanote][2]以及[自己的博客][3]
[Leanote 笔记][2]是一个不错的[网站][]。
[1]:http://www.google.com "Google"
[2]:http://www.leanote.com "Leanote"
[3]:http://http://blog.leanote.com/freewalk "梵居闹市"
[网站]:http://http://blog.leanote.com/freewalk

## 3.3. 自动链接

语法说明： 
Markdown 支持以比较简短的自动链接形式来处理网址和电子邮件信箱，只要是用<>包起来， Markdown 就会自动把它转成链接。一般网址的链接文字就和链接地址一样，例如：
```
<http://example.com/>
<address@example.com>
```
<http://example.com/>
<address@example.com>