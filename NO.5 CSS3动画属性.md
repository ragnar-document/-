## NO.5 CSS3动画属性

创建css3动画需要规定动画的名称和规定动画的时长当然需要绑定到选择器上才会产生效果,

动画也可以理解为升级版的过渡，使用@keyframes创建关键帧

实例

```css
div
{
animation: myfirst 5s;
-moz-animation: myfirst 5s;	/* Firefox */
-webkit-animation: myfirst 5s;	/* Safari 和 Chrome */
-o-animation: myfirst 5s;	/* Opera */
}
```

####动画属性

```css
animation-name:动画名字
animation-duration:动画时间秒为单位
animation-delay:定义动画何时开始
animation-timing-function:规定动画的速度曲线steps()函数
linear从头到尾速度一致
ease慢快慢
ease-in慢开始
ease-out慢结束
ease-in-out慢开始和结束
cubic-bezier（n，n，n）自定义速度
animation-iteration-count:播放次数 infinite无限次播放
animation-direction:normal|alternate|reverse|alternate-reverse;重置为起点左-右|逆向左-右|重置为起点右-左|反方向右-左
animation-play-state:动画运行状态
animation-fill-mode:属性规定动画在播放之前或之后，其动画效果是否可见
```
steps（）函数第一个参数指定的是间隔数量，第二个参数有两个值一个是start和end指定跳跃帧

####过渡和面试的区别
过渡可以控制的范围太小，只有开始和结束状态。动画可以通过关键帧来控制变化过程的更多状态
动画不需要触发条件，当html文档等挂载完后就能立即执行
动画子属性比过渡多可以控制动画循环次数，播放方向等
如果使用js的set time out（）来实现动画一般屏幕刷新是60hz合理的间隔是16.7ms 1000/60

