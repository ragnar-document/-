# CSS命名规范指南_BEM风格

#### 现状	🆕（Now）

如何命名对于很多初学者来说是非常苦恼的，也许写页面有百分之五十都在想如何去命名才能让自己或别人看的懂，有一个好的命名思路能帮助你更好完成任务以及方便组件化、更容易让他人理解。

#### 逻辑	🥁（Logic）

块（block）独立的个体 	>> 	元件 （element）块下面的小部件与块相连	>>	修改（change）块或元素上的标志

#### 举例说明	🌰（example）

块：header	\	main	\	footer	\	body	\	subnav		…….

元件：menu	\	nav	\	list	\	title	\	ul	\	…...

修改：disabled	\	highlighted	\	checked	\	fixed	\	size big	\	color yellow

#### 图片演示	👀（look）

![](http://getbem.com/assets/github_captions.jpg)

##### 大概这样看上去的话就一目了然而且比较工整

```
-	html
--	body
---	header
  ----	header_nav
  	--	header_nav_right
  ----	header_login
  	--	header_login_sign
  	--	header_login_log
  ----	header_logo
  	--	header_logo_img
  	--	header_logo_title
  ----	header_banner
  	--	header_banner_list
  		--	header_banner_item
---	main
	----	main_left_bar
	----	main_center_block
	----	main_right_bar
---	footer
	----	footer_left
		--	footer_left_....
	----	footer_center
		--	footer_center_....
		--  footer_center_links
	----	footer_right
		--	footer_right_.....
```



#### HTML

```
<button class="button">
	Normal button
</button>
<button class="button button--state-success">
	Success button
</button>
<button class="button button--state-danger">
	Danger button
</button>
```

#### CSS

```
.button {
	display: inline-block;
	border-radius: 3px;
	padding: 7px 12px;
	border: 1px solid #D5D5D5;
	background-image: linear-gradient(#EEE, #DDD);
	font: 700 13px/18px Helvetica, arial;
}
.button--state-success {
	color: #FFF;
	background: #569E3D linear-gradient(#79D858, #569E3D) repeat-x;
	border-color: #4A993E;
}
.button--state-danger {
	color: #900;
}
```



—	以上是我的小结希望对大家有所帮助

​	—	作者：Ragnar

​	—	👏👏	欢迎提[issue](https://github.com/ragnar-document/ragnar-document.github.io/issues)

