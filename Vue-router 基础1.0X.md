---
title: Vue-router 基础1.0X
tags:
    - vue
    - 前端
    - vue-router
---

# :-: Vue-Router学习笔记以及Demo实例
*****
### 实例Demo下载 1.0版本有待改进 ⏬
[router0-1 安装和基本配置 ](https://github.com/ragnar-document/Vue-router/tree/master/router0-1)
[router0-2 传参及获取传参 ](https://github.com/ragnar-document/Vue-router/tree/master/router0-2)
[router0-3 子路由设置 ](https://github.com/ragnar-document/Vue-router/tree/master/router0-3)
[router0-4 手动访问和传参](https://github.com/ragnar-document/Vue-router/tree/master/router0-4) 
[router0-5 命名视图](https://github.com/ragnar-document/Vue-router/tree/master/router0-5) 
[router0-6 导航钩子](https://github.com/ragnar-document/Vue-router/tree/master/router0-6) 
[router0-7 元数据及路由匹配](https://github.com/ragnar-document/Vue-router/tree/master/router0-7)
*****
### 起步 ***start*** 🏃🏃‍♀️
为了方便学习我们就只创建一个html文件作为演示文件  
### **html部分**  ☠️
```
<div id="app">
      <div>

//router-link == <a> 它们具有相同的功能那就是跳转 
// to 是指定跳转地址使用的  在router中设置path配套使用
// :to ="{name: 'user'}"  在router中设置name记得配套使用

        <router-link to="/">Home</router-link>
        <router-link to="/about">About</router-link>
      </div>
      <div>
//router-view 渲染视图模版
 <!-- 路由匹配到的组件将渲染在这里 -->

          <router-view></router-view>
      </div>
    </div>
```
### JavaScript 💻
```
//第一步设置路由地址格式都是差不多是基础版本需要自行添加更多
//template 模版也可以放到外面写然后再引进来也没关系官网的便是为了方便我嵌套进路径中去了

var routes = [
        {
          path: '/',
          component: {
            template: `
            <div>
              <h1>首页</h1>
            </div>
            `,
          }
        }
      ];
```
```
//第二步是实例话VuRouter
var router = new VueRouter({
        routes: routes,
});
```
```
//第三步挂载到 页面上去
new Vue({
        el: '#app',
        router: router,
      });
```
### 动态传参   ***dynamic condition*** 
```
<div>
   <router-link to="/user/蛋蛋">获取方法</router-link>
</div>
{
// 动态路径参数 以冒号开头
  path: '/user/:name',
    component: {
       template: `
       <div>
//$router.params.name 获取路由参数名称
         <h1>获取用户名: {{$route.params.name}}</h1> 
//$router.query.age 获取询问年龄
         <h1>获取年纪: {{$route.query.age}}</h1> 
       </div>
       `,
   },
},
```
### 添加子路由
```
//在👨父级路由下添加
children:[
{
    path: 'name',
        component:{
            template:`
                <div>模版字符串</div>
            `
        }
]
```
```
//👨父级内容tempate中添加以下内容
添加router-link 🔗 to指向后需要添加append  （to="more" append）
添加router-view 渲染router-link的内容出来

```
