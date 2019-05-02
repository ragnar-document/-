## 箭头函数 它长这样	`=>`  是不是很抽象呢😁

在Es6中箭头函数是其中最有趣的新增特性那么它有什么呢？？

1. **没有this、super（特级）、arguments（参数）和new.target绑定** 箭头函数中的**this**、**super**、以及**new.target**这些值由外围最近一层非箭头函数决定
2. **不能通过new关键字调用箭头函数没有[[construct]]方法**，所以不能被用作构造函数，如果通过new关键字调用箭头函数，程序会抛出错误

> ```javascript
> var Foo = () => {};
> var foo = new Foo(); // TypeError: Foo is not a constructor
> ```

1. **没用原形由于不能通过new关键字调用箭头函数**，因而没有构建原型的需求所以箭头函数不存在prototype这个属性

> ```js
> var Foo = () => {};
> console.log(Foo.prototype); // undefined
> ```

1. 不支持**arguments** 对象箭头函数**没有arguments绑定**，所以你必须通过命名参数和不定参数这两种形式访问函数的参数
2. **不支持重复命名参数** 无论在严格还是非严格模式下箭头函数都不能支持重复的命名参数；而在传统函数的规定中只有在严格模式下才不能有重复的命名参数

## 箭头函数的的大型选美现场👙

一号佳丽🐱	当你只有单一参数和只需要返回简单的值时可以使用以下这种

```
let refletct = value => value;

	等价于
		
		let reflect = funciton(value){
			return value;
		}
```

二号佳丽🐶	两个以上的就比较豪气啦！弄个括号包起来毕竟不像 single dog嘛😂

```
let sum = (num1 , num2) => num1 + num2

	等价于
	
	let sum = function(num1 , num2){
		return sum1 + sum2
	}
```

三号佳丽🏃‍♀️	因为跑步啥也没带所以我们啥也不用传那么要怎么写呢❓

```
let sum = ( ) => 'hellow world'
	
	等价于
	
	let sum = function(){
		return 'hellow world'
	}
```

四号佳丽🏃	色即是空，🈳️即是色

```
let sum =( ) => {}

	等价于
	
	let sum = function(){
		//....
	}
```

五号佳丽🐍    花括号代表函数体的部分如果想在箭头函数外返回一个对象字面量，则需要将该字面量包括在小括号里

```
let getTempItem = id =>({	id:id, name:"Temp"})

	等价于
	
	let sum = function(id){
		return	{
			id:id,
			name:"Temp"
		}
	}
```

## 不绑定This

在箭头函数出现之前，每个新定义的函数都有它自己的 `this`值（在构造函数的情况下是一个新对象，在严格模式的函数调用中为 undefined，如果该函数被作为“对象方法”调用则为基础对象等）。`This`被证明是令人厌烦的面向对象风格的编程。

⚠️箭头函数不会创建自己的`this,`它只会从自己的作用域链的上一层继承 `this` 

```js
function Person(){
  this.age = 0;

  setInterval(() => {
    this.age++; // |this| 正确地指向 p 实例
  }, 1000);
}

var p = new Person();
```

如果指向错误除了使用箭头函数还可以把值分配给封闭的变量，可以解决`this`问题

```js
function Person() {
  var that = this;
  that.age = 0;

  setInterval(function growUp() {
    //  回调引用的是`that`变量, 其值是预期的对象. 
    that.age++;
  }, 1000);
}
```

#### 函数的写法

```js
var func = x => x * x;                  
// 简写函数 省略return

var func = (x, y) => { return x + y; }; 
//常规编写 明确的返回值
```

#### 箭头函数也能使用三元表达式

```js
var simple = a => a > 15 ? 15 : a;
simple(16); // 15
simple(10); // 10
```

#### 更简明的promise链

```js
promise.then(a => {
  // ...
}).then(b => {
  // ...
});
```

#### 箭头函数进行排序

```javascript
var arr = [10, 20, 1, 2];

arr.sort((x, y) => {
    return x-y
});
console.log(arr); // [1, 2, 10, 20]

arr.sort((x, y) => x-y);
console.log(arr); // [1, 2, 10, 20]
```

参考资料：深入了解ES6

​					[廖雪峰](https://www.liaoxuefeng.com/wiki/001434446689867b27157e896e74d51a89c25cc8b43bdb3000/001438565969057627e5435793645b7acaee3b6869d1374000)

​					[MDN web docs](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Functions/Arrow_functions)



有待更新

👏👏点我[提issue](https://github.com/ragnar-document/ragnar-document.github.io/issues)