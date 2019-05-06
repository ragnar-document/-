---
title: Es6学习笔记：Set数据结构
tags:
		- css
		- js
		- 前端
		- ES6
---

## Set

基本属性它和数组类似，但是数组中的成员值是唯一的没有重复值，`Set`本身是一个构造函数用来生产一个数据结构

```javascript
let arr = [1,2,3,3,4,5,5,6,5];
let content = new Set(arr);
console.log(content) //1,2,3,4,5,6
```

### set实例和方法

Set结构的实例有以下属性

构造函数，默认就是set函数：`Set.prototype.constructor`

返回总数，`Set.prototype.size`可以简写为`Set.size`

### 操作方法和遍历方法

| add(value)          | delete(value)                        | has(value)                      | clear()                 |
| ------------------- | ------------------------------------ | ------------------------------- | ----------------------- |
| 添加数值返回set本身 | 删除某个值返回布尔值表示是否成功删除 | 返回布尔值查看该值是否存在与set | 清除所有set成员不返回值 |
| keys( )             | values(  )                           | entries( )                      | forEach( )              |
| 返回键名的遍历器    | 返回键值的遍历器                     | 返回键值对的遍历器              | 使用回调遍历每一项      |
| map( )              | filter( )                            |                                 |                         |
| 遍历返回新数组      | 过滤筛选数值                         |                                 |                         |

`Array.from`方法可以把Set结构转化为数组

```javascript
var items = new Set([1, 2, 3, 4, 5]);
var array = Array.from(items);
```

去重方法

```javascript
function ces(array) {
  return Array.from(new Set(array));
}
ces([......])
     //let arr = [1,2,2,3,4,3,6,5];
let unique = [...new Set(arr)];
```

遍历测试

```javascript
//通用测试属性	
let set = new Set(['red', 'green', 'blue']);

//依次替换set属性测试
for (let item of set.keys()) {
  console.log(item);
}
//由于Set结构没有键名，只有键值（或者说键名和键值是同一个值），所以key方法和value方法的行为完全一致。
```

Set结构默认可遍历对象所以可以之间使用`for ... of`循环♻️遍历set

```javascript
for (let x of set) {
  console.log(x);
}

//扩展运算符（...）内部使用for...of循环，所以也可以用于Set结构。
let arr = [...set];
```

如果想遍历的同时改变数组有两种方法可以选择

```javascript
//map()
let set = new Set([1, 2, 3]);
set = new Set([...set].map(val => val * 2));
// set的值是2, 4, 6

//Array.from()
let set = new Set([1, 2, 3]);
set = new Set(Array.from(set, val => val * 2));
// set的值是2, 4, 6
```



初次拟写～不断更新添加笔记