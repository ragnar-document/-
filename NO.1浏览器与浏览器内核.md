# NO.1浏览器与浏览器内核

**浏览器的组成**：用户界面（user interface），浏览器引擎 (Browser engine)，渲染引擎 (rendering engine)，网络 (networking)，js解释器 (javascript interpreter)，UI后端 ( UI backend )，数据储存(data persistence)七部份

**主流浏览器**：chrome ，safari，IE，firefox （单核）

**国内浏览器：**搜狗，猎豹，qq，360等 （双核）

**内核**：trider内核，gecko内核，webkit内核，blink内核

chrome使用的是blink内核，firekox使用的是gecko内核

Chromium主要的代码是基于MIT license开源协议

**为何排在前面的无一国产？？**

1.错过了HTML4制定标准时代

2.成本高

3.Chromium和Firefox本就是一个开源项目

4.没必要造轮子（其实还是得留一手就和华为事件一般）

5.比拼更多是营销而非技术

**排版引擎**

KHTML拥有速度快捷的优点，但对错误语法的容忍度则比Mozilla产品所使用的Gecko引擎小。

------

#### 扩展阅读

作者：醉梦洛 
来源：CSDN 

Chromium/Bink

2008 年，谷歌公司发布了 chrome 浏览器，浏览器使用的内核被命名为 chromium。

chromium fork 自开源引擎 webkit，却把 WebKit 的代码梳理得可读性提高很多，所以以前可能需要一天进行编译的代码，现在只要两个小时就能搞定。因此 Chromium 引擎和其它基于 WebKit 的引擎所渲染页面的效果也是有出入的。所以有些地方会把 chromium 引擎和 webkit 区分开来单独介绍，而有的文章把 chromium 归入 webkit 引擎中，都是有一定道理的。

谷歌公司还研发了自己的 Javascript 引擎，V8，极大地提高了 Javascript 的运算速度。

chromium 问世后，带动了国产浏览器行业的发展。一些基于 chromium 的单核，双核浏览器如雨后春笋般拔地而起，例如 搜狗、360、QQ浏览器等等，无一不是套着不同的外壳用着相同的内核。

然而 2013 年 4 月 3 日，谷歌在 Chromium Blog 上发表 博客，称将与苹果的开源浏览器核心 Webkit 分道扬镳，在 Chromium 项目中研发 Blink 渲染引擎（即浏览器核心），内置于 Chrome 浏览器之中。

webkit 用的好好的，为何要投入到一个新的内核中去呢？

Blink 其实是 WebKit 的分支，如同 WebKit 是 KHTML 的分支。Google 的 Chromium 项目此前一直使用 WebKit(WebCore) 作为渲染引擎，但出于某种原因，并没有将其多进程架构移植入Webkit。

后来，由于苹果推出的 WebKit2 与 Chromium 的沙箱设计存在冲突，所以 Chromium 一直停留在 WebKit，并使用移植的方式来实现和主线 WebKit2 的对接。这增加了 Chromium 的复杂性，且在一定程度上影响了 Chromium 的架构移植工作。

基于以上原因，Google 决定从 WebKit 衍生出自己的 Blink 引擎（后由 Google 和 Opera Software 共同研发），将在 WebKit 代码的基础上研发更加快速和简约的渲染引擎，并逐步脱离 WebKit 的影响，创造一个完全独立的 Blink 引擎。这样以来，唯一一条维系 Google 和苹果之间技术关系的纽带就这样被切断了。

Google 和苹果在多个领域都是竞争对手，而唯独在浏览器引擎上有技术合作，利益一致。但为了各自的利益，谁都不会拿出 100% 的 “诚意” 来做好 WebKit，因为你做出来的成果竞争对手可以直接享用。移动互联网已经崛起，手机和平板设备端必将成为浏览器的另一个战场。这个时候，如果 Google 跟苹果仍然黏在一起，将会严重阻碍双方的进步，也会阻碍 WebKit 的进步。

Chromium引擎虽然是属于WebKit的分支，却把WebKit的代码梳理得可读性提高很多，所以以前可能需要一天进行编译的代码，现在只要两个小时就能搞定。因此Chromium引擎和其它基于WebKit的引擎所渲染页面的效果也是有出入的。基于以上原因，有的地方会把Chromium引擎跟WebKit区分开来，有的地方则直接把Chromium引擎归为WebKit（比如维基百科），其实都有其道理。

然而在13年发布的Chrome 28.0.1469.0版本开始，Chrome放弃Chromium引擎转而使用最新的Blink引擎（基于WebKit2——苹果公司于2010年推出的新的WebKit引擎），Blink对比上一代的引擎精简了代码、改善了DOM框架，也提升了安全性。


