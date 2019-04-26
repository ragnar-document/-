---
title: Vue 初体验
tags:
    - vue
    - 前端
---

### 首先我们在我们头部引入我们的链接下面有两个版本供我们选择
~~~
<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
~~~


~~~
<!-- 生产环境版本，优化了尺寸和速度 -->
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
~~~
Vue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统
```
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	</head>
	<body>
		<div id="app">
			<ul>{{ message }}</ul>
		</div>
	</body>
	<script type="text/javascript" src="js/vue.js"></script>
</html>

//vue.js
var app = new Vue({
	el:'#app',
	data:{
		message:'hellow'
	}
})
```
我们可以在控制台上调试一下代码
![](images/vue-hello.png)
可以看见我们的内容马上就渲染到了页面上去

### `v-if`属性 类似于JavaScript的if判断
```
<div id="app">
	<ul v-if = 'seen'>{{ message }}</ul>
</div>
var app = new Vue({
	el:'#app',
	data:{
		message:'hellow'
                seen : true // true 为可视 false 为不可视
	}
})

```
###  `v-for` 属性类似与JavaScript的for循环
```
<div id="app">
	<ul>
            <li v-for='todo in todos'>{{todo.text}}</li>
        </ul>
</div>
var app = new Vue({
	el:'#app',
	data:{
	    todos:[
                { text: 'name' }
                { text: 'number' }
            ]
	}
})

//渲染效果
1. name
2.  number
```
### `v-on:click` 类似与给标签绑定了点击事件`on`和jquery的绑定相像
```
<div id="app" >
	<p>{{message}}</p>
	<button v-on:click='reverse'>点我</button>
</div>
var app = new Vue({
	el:'#app',
	data:{
		message: "hellow bb!"
	},
	methods: {
		reverse:function(){
			this.message = this.message.split('').reverse().join('');
		}
	}
})
```
### `v-model` 可以指向使用在input中传入输入数据
此处的`v-model`直接指向p标签的message所以会同步修改内容
```
<div id="app" >
	<p>{{message}}</p>
        <input v-model='message'>
</div>
var app = new Vue({
	el:'#app',
	data:{
		message:'hellow'
	}
})
```
### `component` 组件
组件是可复用的 Vue 实例，且带有一个名字：在这个例子中是`<button-counter>`。我们可以在一个通过`new Vue`创建的 Vue 根实例中，把这个组件作为自定义元素来使用：
```
<div id="app" >
    <ul>
	<todo-item></todo-item>
    </ul>
</div>
⚠️Vue注意大写
Vue.component('todo-item', {   
  template: '<li>This is a todo</li>'
})
var app = new Vue({
	el: '#app'
})
```
### 注册组件及构建模版
```
// 定义名为 todo-item 的新组件 
Vue.component('todo-item', { 
    template: '<li>这是个待办项</li>'
 })
//组件模版<todo-item></todo-item>
```
### `v-bind`绑定元素特性`props`类似于一个自定义特性
```
<div id="app" >
	<ol>
	    <todo-item 
		v-for='item in groceryList'
		v-bind:todo = 'item'
		v-bind:key = 'item.id'
		></todo-item>
	</ol>
	<div v-for='item in groceryList'>{{item}}</div>
</div>
Vue.component('todo-item', {
  props:['todo'],
  template: '<li>{{ todo.text }}</li>'
})

var app = new Vue({
	el: '#app',
	data:{
		groceryList:[
			{ id: 0 , text: 'you'},
			{ id: 1 , text: 'me'},
			{ id: 2 , text: 'he'},
			{ id: 3 , text: 'she'}
		]
	}
})
```
这里我们遇到了一点新东西。你看到的`v-bind`特性被称为**指令**。指令带有前缀`v-`，以表示它们是 Vue 提供的特殊特性。可能你已经猜到了，它们会在渲染的 DOM 上应用特殊的响应式行为。在这里，该指令的意思是：“将这个元素节点的`title`特性和 Vue 实例的`message`属性保持一致”。