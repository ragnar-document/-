## VUE笔记：生命周期

#### 前言

vue中的生命周期通俗来说就和人一样吧！是一个事件发生的过程。

一个人从受精卵 >> 胎儿 >> 出生 >>  儿童 >>  青年 >> 中年 >> 老年 >> 死亡。这就是一个人的变化也就叫生命周期

本篇文章由三部分组成	**/单词/官方实例/完整例子** 	组成；

#### 单词学习

Lifecycle  【 lain,saikl 】：生命周期，生活过程

Events 【 i'vents 】: 事件，项目

injections 【 ɪn'dʒɛkʃən 】注册，注射 💉

reactivity  【,riæk'tivəti, ri:-】反应

compile	【 kəm'paɪl 】编译

mount	  【 maʊnt 】增加 ，山峰⛰️

teardown	【 'tεədaun 】拆卸

destroyed  【 dis'trɔid 】 销毁

### 举例

当你到了created以后数据才真正创建出来，如果我们在添加一个函数`beforeCreate`中进行调用,你会发现 	`a is undefined`也就是这里的a还没有创建出来。至少要到**created**才能进行调用

```javascript
new Vue({
  data: {
    a: 1
  },
  beforeCreate: function (){
  	console.log('a is: ' + this.a)
  }
  created: function () {
    // `this` 指向 vm 实例
    console.log('a is: ' + this.a)
  }
})
// => "a is: 1"
```

![](https://github.com/ragnar-document/Document-dish/blob/master/images/lifecycle.png?raw=true)

### 完整案例

```javascript
<div id="app">
        <input type="button" value="Button" @click="msg='No'">
        <h3 id='h3'>{{msg}}</h3>
    </div>
    <script>
        var vm = new Vue(
            {
                el: '#app',
                data:{
                    msg:'ok'
                },
                methods: {
                    show(){
                        console.log('执行了')
                    }
                },
                beforeCreate() {
                    //这是遇到的第一个生命周期函数表示实例完全会被创建出来，会执行
                       console.log(this.msg)  //这时候console会显示undefined
                       this.show()   //this.show is not a method
                       //注意在beforeCreate生命周期函数执行的时候，data和methods中的数据都还没有被初始化
                },
                created() {
                    //这是遇到的第二个生命周期函数
                        console.log(this.msg)
                        this.show()
                        //在created中，data和methods都已经初始化好了
                        //如果要调用methods中的方法，最早只能在created中操作
                        
                },
                beforeMount() {
                    //这是遇到的第3个生命周期函数，表示模板已经编译完成，但是尚未把模板渲染到页面中去
                    console.log(document.getElementById('h3').innerText)
                    //在beforeMount执行的时候，页面中的元素没有被真正替换过来，只是之前的一些模板字符串
                    
                },
                mounted() {
                    //这是遇到的第四个生命周期函数，表示内存中的模板，已经真实的挂载到了浏览器的页面中，用户已经看到了渲染好的页面
                    console.log(document.getElementById('h3').innerText)
                    //注意：mounted是实例创建中的最后一个生命周期函数，当执行完mounted，实例就完全被创建好了
                },
                beforeUpdate() {
                    console.log('界面上元素的内容'+document.getElementById('h3').innerText)
                    console.log('data中的msg数据是'+this.msg)
                },
                updated() {
                    console.log('界面上元素的内容' + document.getElementById('h3').innerText)
                    console.log('data中的msg数据是' + this.msg)
                    //页面和data数据已经保持一致了
                },
            }
        )
    </script>
```

