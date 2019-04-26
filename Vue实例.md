---
title: Vue 实例
tags:
    - vue
    - 前端
---
### 创建VUE实例有点类似构造函数var一个值再new
```
var vm = new Vue({
    //content
})
```
### vue应用通过`new Vue` 创建
﻿
根vue实例注意要大写V，一个vue应用是由可选可嵌套的组件构成拿office文档举例
```
根实例 
└─ TodoList   例子盒子
    ├─ TodoItem     盒子的小项目
    │ ├─ DeleteTodoButton     小项目中的删除键
    │ └─ EditTodoButton        小项目中的编辑键
    └─ TodoListFooter     盒子的底部
            ├─ ClearTodosButton           清除todos            
            └─ TodoListStatistics            统计todo
```
### 数据与方法
当一个 Vue 实例被创建时，它将`data`对象中的所有的属性加入到 Vue 的**响应式系统**中。当这些属性的值发生改变时，视图将会产生“响应”，即匹配更新为新的值。
例如：
![](images/vue.png)
﻿
当这些数据改变时，视图会进行重渲染。值得注意的是只有当实例被创建时`data`中存在的属性才是**响应式**的。也就是说如果你添加一个新的属性，比如：
![](images/altervue.png)
﻿
和单例模式的data一样你知道你后面会使用到一些值所以可以在data中设置好
### `Object.freeze()`
它可以阻止更新内容让系统无法跟踪
```
var obj = { foo: 'bar' } 
﻿
Object.freeze(obj) 
﻿
new Vue({ el: '#app', data: obj })
```
那么使用到{ foo }的标签将不会更新
### 关于$data带有前缀
他们是一些有用的实例属性及方法他们带有$以便与用户自定义属性区分开来 具体参考 [传送门再此]([https://cn.vuejs.org/v2/api/#%E5%AE%9E%E4%BE%8B%E5%B1%9E%E6%80%A7](https://cn.vuejs.org/v2/api/#%E5%AE%9E%E4%BE%8B%E5%B1%9E%E6%80%A7))
## 生命钩子的理解
以下来CSDN自闰土大叔的讲解
> 当面试官问：“谈谈你对vue的生命周期的理解”，听到这句话你是不是心里暗自窃喜：这也太容易了吧，不就是beforeCreate、created、beforeMount、mounted、beforeUpdate、updated、beforeDestroy、destroyed 这几个钩子函数么，创建=>挂载=>更新=>销毁，So easy ！！！
> 生命周期图
![](images/lifecycle.png)
﻿
不能随意使用箭头函数因为箭头函数的this指向的是最顶层的而不是实例vm
> 不要在选项属性或回调上使用[箭头函数](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Functions/Arrow_functions)，比如`created: () => console.log(this.a)`或`vm.$watch('a', newValue => this.myMethod())`。因为箭头函数并没有`this`，`this`会作为变量一直向上级词法作用域查找，直至找到位置，经常导致`Uncaught TypeError: Cannot read property of undefined`或`Uncaught TypeError: this.myMethod is not a function`之类的错误。
>
﻿