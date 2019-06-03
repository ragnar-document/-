## NO.4 CSS3选择器和伪类选择器

- 后代选择器(以空格分隔)

```css
div p
{
  background-color:yellow;
}
```

- 子元素选择器(以大于号分隔）

```
div > p
{
  background-color:yellow;
}
```

- 相邻兄弟选择器（以加号分隔）

```
div + p
{
  background-color:yellow;
}
```

- 普通兄弟选择器（以破折号分隔）

```
div ~ p
{
  background-color:yellow;
}
```

## 伪类选择器

实例

```
a:link {color:#000000;}      /* 未访问链接*/
a:visited {color:#00FF00;}  /* 已访问链接 */
a:hover {color:#FF00FF;}  /* 鼠标移动到链接上 */
a:active {color:#0000FF;}  /* 鼠标点击时 */
```

**注意：** a:hover 必须在 a:link 和 a:visited 之后，需要严格按顺序才能看到效果。

**注意：** a:active 必须在 a:hover 之后。

#### : first-child

选择父元素的第一个子元素

```css
p:first-child
{
	color:blue;
} 
```

匹配p中所有的i

```css
p:first-child i
{
	color:blue;
} 
```

#### : last-child 

选择父元素的最后一个子元素

```css
p：last-child 
{ 
background：#ff0000; 
}
```

#### : nth-child(n)

匹配父元素中的第n个元元素，元素类型没有限制

```css
p: nth-child(n)
{
	background:yellow;
}
```

#### : target

锚的名称是在一个文件中链接到某个元素的URL元素被链接到目标元素

```css
:target
{
border: 2px solid #D4D4D4;
background-color: #e5eecc;
}
```

