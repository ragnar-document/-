---
title: Bootstrap组件
tags:
		- css
    - 前端
    - Bootstrap
    - 组件
---
# 组件

#### 文本警报

通过增加以下class属性可以更改文本属性

| alert-primary | alert-secondary | alert-success | alert-danger | alert-warning | alert-info | alert-light | alert-dark |
| ------------- | --------------- | ------------- | ------------ | ------------- | ---------- | ----------- | ---------- |
| 主要-蓝       | 二级-灰         | 成功-绿       | 危险-红      | 警告-黄       | 信息-天蓝  | 灯光-白     | 黑暗-黑灰  |

```css
<div class="alert alert-primary" role="alert">
```

如果文本中有链接可以增加以下更改颜色同步文本颜色

```css
class="alert-link"
```

同样还可以在其他地方设置只需要使用表一的属性名即可

#### 驳回关闭

我们可以在需要关闭的元素内部添加,记得引入js文件

需要添加一个dismiss按键和`.alert-dismissible`类，他会在右侧添加删除按钮

```css
//父级元素必须有.fade 和 .show
<div class="alert alert-warning alert-dismissible fade show" role="alert">

<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
```

## 徽章

#### 标题徽章

在你需要变成标签徽章的标签里设置`badge badge-secondary`这个属性即可

#### 按钮

请注意，根据屏幕阅读器和类似辅助技术的使用者的不同，徽章可能会令人困惑。虽然徽章的样式提供了关于其目的的视觉提示，但是这些用户将被简单地呈现徽章的内容。根据具体情况，这些徽章可能看起来像句子，链接或按钮末尾的随机附加单词或数字。

```css
<button type="button" class="btn btn-primary">
  Notifications <span class="badge badge-light">4</span>
</button>
```

#### 给标签徽章各种颜色

颜色与文本报错一样用途是改变背景颜色

使用`.badge-pill`修饰符类可以使徽章更圆润

```css
<span class="badge .badge-pill badge-primary">Primary</span>
<span class="badge badge-secondary">Secondary</span>
<span class="badge badge-success">Success</span>
<span class="badge badge-danger">Danger</span>
<span class="badge badge-warning">Warning</span>
<span class="badge badge-info">Info</span>
<span class="badge badge-light">Light</span>
<span class="badge badge-dark">Dark</span>
```

同样我们链接也可以使用 使用元素`.badge-*`上的上下文类*可以*`<a>`快速为悬停和焦点状态提供*可操作的*标记。

```css
<a href="#" class="badge badge-success">Success</a>
```

#### 面包屑

和地址导航有点类似和它名字不相关哈哈哈

```css
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active" aria-current="page">Data</li>
  </ol>
</nav>
```

