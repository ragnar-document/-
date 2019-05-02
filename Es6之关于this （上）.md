## Es6之关于`this`  （上）

资料来源：

​		- MDN

​		- 你不知道的js上卷

​		- [冯羽](https://github.com/mqyqingfeng/Blog/issues/3)

### 前言介绍

`this`关键字是JavaScript中最复杂的机制之一，它是一个特别的关键字，被自动定义在所有函数的作用域中。但是即使是非常有经验的JavaScript开发者也很难说清他到底指向什么

——Arthur C. Clarke

全局环境下任何在函数体外部的`this`都指向全局对象

```javascript
// 在浏览器中, window 对象同时也是全局对象：
console.log(this === window); // true

a = 37;
console.log(window.a); // 37

this.b = "MDN";
console.log(window.b)  // "MDN"
console.log(b)         // "MDN"
```

### 对This的误解

我们很容易把`this`理解为指向函数自身，从`this`的字面意思可以这么理解

实际上是这样的吗我们可以看一下MDN上的例子

```javascript
// 将一个对象作为call和apply的第一个参数，this会被绑定到这个对象。
var obj = {a: 'Custom'};

// 这个属性是在global对象定义的。
var a = 'Global';

function whatsThis(arg) {
  return this.a;  // this的值取决于函数的调用方式
}

whatsThis();          // 'Global'
whatsThis.call(obj);  // 'Custom'
whatsThis.apply(obj); // 'Custom'
```

我们把它复制到浏览器中测试一下是否如此。结果是当然的

可以看出this的值是取决于函数调用的方式这是不是非常有趣

我们再来看一个例子//来自你不知道的JavaScript上卷

```javascript
function foo(num){
  	console.log('foo :' + num)
	  this.conut++	//记录被调用次数
}
foo.count = 0;

var i;

for (i=0; i<10; i++){
  if(i > 5){
    foo(i);
  }
}
console.log(foo.count)//foo被调用了多少次呢？
```

打印后发现这并不是我们想要的值，虽然属性名相同但是它打印的并不是函数里头的`conut`所以打印出来是0⃣️

**一般人会这样解决请看下面** 

```javascript
//声明
var data ={
	count: 0
}
```

这样的确能把调用次数打印出来，涉及词法作用域

```

作用域是指程序源代码中定义变量的区域。

作用域规定了如何查找变量，也就是确定当前执行代码对变量的访问权限。

JavaScript采用词法作用域（lexical scoping），也就是静态作用域。
```

## 静态作用域与动态作用域

因为JavaScript采用的是词法作用域，函数的作用域在函数定义的时候就决定了。

而与词法作用域相对的是动态作用域，函数的作用域是在函数调用的时候才决定的。

让我们认真看个例子就能明白之间的区别：

```
var value =  1 ;

function  foo（）{
     console。log（value）;
}

function  bar（）{
     var value =  2 ;
    foo（）;
}

bar（）;

//结果是???
```

假设JavaScript的采用静态作用域，让我们分析下执行过程：

执行FOO函数，先从FOO函数内部查找是否有局部变量值，如果没有，就根据书写的位置，查找上面一层的代码，也就是值等于1，所以结果会打印1。

假设的JavaScript采用动态作用域，让我们分析下执行过程：

执行FOO函数，依然是从富函数内部查找是否有局部变量值。如果没有，就从调用函数的作用域，也就是杆函数内部查找值变量，所以结果会打印2。

前面我们已经说了，JavaScript采用的是静态作用域，所以这个例子的结果是1。

## 动态作用域

也许你会好奇什么语言是动态作用域？

bash就是动态作用域，不信的话，把下面的脚本存成例如scope.bash，然后进入相应的目录，用命令行执行`bash ./scope.bash`，看看打印的值是多少。

```
value = 1
 function  foo（）{
     echo  $ value ;
}
function  bar（）{
     local value = 2 ; 
    foo ;
}
酒吧
```

**This**及不指向函数自身也不指向函数的语法作用域

**This** 实际上是在函数被调用时发生的绑定，他指向什么完全取决于函数在哪里调用。

## Call

一句话介绍 call：

> call() 方法在使用一个指定的 this 值和若干个指定的参数值的前提下调用某个函数或方法。
>
> apply 的实现跟 call 类似

举个例子：

```
var foo = {
    value: 1
};

function bar() {
    console.log(this.value);
}

bar.call(foo); // 1
```

注意两点：

1. call 改变了 this 的指向，指向到 foo
2. bar 函数执行了

