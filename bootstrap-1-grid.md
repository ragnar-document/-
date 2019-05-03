---
title: Bootstrap入门
tags:
		- css
    - 前端
    - Bootstrap
---
### 入门

Bootstrap的网格系统使用一系列容器，行和列来布局和对齐内容。它采用[flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox)构建，完全响应。

下面是他的属性值

| 超小 <576px | 小 >=576px | 中等 >=769px | 大 >=992 | 超大 >=1200px | 12列 |
| ----------- | ---------- | ------------ | -------- | ------------- | ---- |
| 自动        | 540px      | 720px        | 960px    | 1140px        | 最大 |
| .col-       | .col-sm-   | .col-md-     | .col-lg- | .col-xl-      | 前缀 |

`.col`不填属性就是等宽，后面可以跟数字定宽	例如：`.col-1\.col-2\....等至12`

利用特定于断点的列类，可以轻松地进行列大小调整，而无需使用明确的编号类`.col-sm-6`。

```css
<div class="container">
  <div class="row">
    <div class="col-sm">	// 可替换 上面第三行内容
      One of three columns
    </div>
    <div class="col-sm">
      One of three columns
    </div>
    <div class="col-sm">
      One of three columns
    </div>
  </div>
</div>
```

### 可变宽内容         

```css
//例如
<div class="col col-lg-2">
<div class="col-md-auto">
使用col-{breakpoint}-auto类根据内容的自然宽度调整列的大小。
```

### 等宽多排

使用下面语句对内容进行分割类似于`<br>`

```css
<div class="w-100"></div>
```

### 垂直对齐

```css
 <div class="row align-items-start"> // 顶部对齐
 <div class="row align-items-center"> // 居中对齐
 <div class="row align-items-end"> // 底部对齐
```

### 水平对齐

```css
 <div class="row justify-content-start"> //左对齐
 <div class="row justify-content-center"> //居中对齐
 <div class="row justify-content-end"> //右对齐
 <div class="row justify-content-around"> 
//两边对齐-类似flex的justify-content: space-around;
 <div class="row justify-content-between">
//两边对齐-类似flex的justify-content: space-between;

```

### 清除盒子margin与padding

```css
<div class="row no-gutters">//在需要的地方添加no-gutters
```

### 使用`.order-`类来控制内容的**可视顺序**。这些类是响应式的

`.order-1`～`.order-12` 这是控制元素出现的顺序，数字越大越靠后

```css
<div class="col order-1"> ~ <div class="col order-12">
//此外还有控制头尾顺序
<div class="col order-first"> - <div class="col order-last">
```

### 增加左边距

```css
//使用.offset-md-*类将列向右移动。这些类按*列增加列的左边距
<div class="col-md-4 offset-md-4">.col-md-4 .offset-md-4</div>
```

