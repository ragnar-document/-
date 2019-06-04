## NO.6 发现更多HTML5的秘密

#### **HTML链接 -target属性**

定义链接文档在何处显示

```html
<a href="" target="_blank">hellow!</a>//在新窗口展示
<a target="_blank|_self|_parent|_top|framename">
```

#### **base标签**

定义了页面所有默认的链接目标地址 可以用于加载图片的统一

```html
<base href="目标地址">
```

#### **meta标签**

包含了网站的一些元数据，为浏览器引擎定义了关键词还可以为网页添加描述内容等，但是不在网页上显示

#### **SVG和Canvas的区别**

**svg**是使用xml描述的2d图形语言可以通过文本编辑器修改内容等等，而且可以为内容附加js事件

**canvas**是通过JavaScript绘制的2d图形，它是逐像素进行渲染一旦绘制完成就不在被关注如果位置该拜年那么就会重新绘制包括任何或已经被图像覆盖的对象

**Svg**  的优势就是可以高质量任何像素下被打印，无损画质

**canvas**  的优势是在html5游戏上发挥重大作用，依赖分辨率（缺点）

#### **MathML数学标记语言（不常见）** 

```html
<math xmlns="http://www.w3.org/1998/Math/MathML">
        
   <mrow>
      <msup><mi>a</mi><mn>2</mn></msup>
      <mo>+</mo>

      <msup><mi>b</mi><mn>2</mn></msup>
      <mo>=</mo>

      <msup><mi>c</mi><mn>2</mn></msup>
   </mrow>

</math>
```

#### 拖动元素

首先在要拖拽的属性设置为可拖拽 `draggable="true"`

设置被拖拽标签函数`ondragstart="drag(event)"`

函数内设置被拖拽数据类型和值

```javascript
function drag(ev)
{
    ev.dataTransfer.setData("Text",ev.target.id);
}
```

放置数据的元素标签-ondragover

```html
<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
```

如果允许放置我们需要阻止他的默认行为

```javascript
function allowDrop(ev)
{
    ev.preventDefault();
}
```

进行放置` ondrop="drop(event)" `

```javascript
function drop(ev)
{
    ev.preventDefault();//阻止默认行为
    var data=ev.dataTransfer.getData("Text");//获取拖动元素的id
    ev.target.appendChild(document.getElementById(data));//把设置好的插入容器内
}
```

#### Video视频标签

除了自身样式还能为他设置自己喜欢的样式可以设置标签作为按钮添加上喜欢的css

```html
<button onclick="playPause()">播放/暂停</button> 
<button onclick="makeBig()">放大</button>
<button onclick="makeSmall()">缩小</button>
<button onclick="makeNormal()">普通</button>
```

```javascript
var myVideo=document.getElementById("video1"); 

function playPause()
{ 
	if (myVideo.paused)  //判断播放还是暂停
	  myVideo.play(); 
	else 
	  myVideo.pause(); 
} 

	function makeBig()
{ 
	myVideo.width=560; 
} 

	function makeSmall()
{ 
	myVideo.width=320; 
} 

	function makeNormal()
{ 
	myVideo.width=420; 
} 
```

#### audio音频标签

放置音频文件

```html
<audio controls>
  <source src="horse.ogg" type="audio/ogg">
  <source src="horse.mp3" type="audio/mpeg">
您的浏览器不支持 audio 元素。
</audio>
```

video和audio都可以设置source来让浏览器选择合适的播放文件

#### input新增属性

挑选几个主流浏览器支持的来记录 data、color、email、month、range（滑动条）、search、url

`pattern `属性确保值与正则表达式匹配。

html5表单验证虽然可以实现 但是无奈颜值太低