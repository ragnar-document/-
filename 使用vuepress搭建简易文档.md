# 使用vuepress搭建简易文档📖

对于这个静态网站生成工具官方文档是真的看的令人抓🐔特别是语言逻辑上看的是十分痛苦，我是先看别人搭建过程然后再回头看官方文档的😂这样比较好理解，先人踩坑后人享福

vuepress[官网](<https://v1.vuepress.vuejs.org/>) 

awesome [更多资源](https://github.com/ulivz/awesome-vuepress) 🎁

这是我搭建好的文档 [follow me](https://ragnar-document.github.io/vue-blog/)

GitHub地址：[👏👏欢迎提交issue](https://github.com/ragnar-document/vue-blog)

### 像数 1, 2, 3 一样容易！屁一堆坑好吧🙄️

```bash
⚠️ 注意先在Desktop中mkdir一个项目如何cd进去才开始👇

# 安装
❌ yarn global add vuepress # 或者：npm install -g vuepress
✌️ yarn global add vuepress@next # 或者：npm install -g vuepress@next

//第一个坑来了

# 新建一个 docs 文件夹
mkdir docs

# 新建一个 markdown 文件
echo '# Hello VuePress!' > docs/README.md

# 开始写作
npx vuepress dev docs
```

⚠️注意

请确保你的 Node.js 版本 >= 8.6。

```json
🔩在根目录文件配置你的package.json文件

{
  "scripts": {
    "docs:dev": "vuepress dev docs",
    "docs:build": "vuepress build docs"
  }
}
```

配置成功运行👇 ✅

```bash
yarn docs:dev # 或者：npm run docs:dev
```

配置目录结构

```
.
├── docs
│   ├── .vuepress (可选的) 用于存放全局的配置、组件、静态资源等。
│   │   ├── components (可选的) 该目录中的 Vue 组件将会被自动注册为全局组件。
│   │   ├── theme (可选的) 用于存放本地主题。
│   │   │   └── Layout.vue
│   │   ├── public (可选的) 静态资源目录。
│   │   ├── styles (可选的) 用于存放样式相关的文件。
│   │   │   ├── index.styl
│   │   │   └── palette.styl
│   │   ├── templates (可选的, 谨慎配置) 存储 HTML 模板文件。
│   │   │   ├── dev.html /用于开发环境的 HTML 模板文件。
│   │   │   └── ssr.html /构建时基于 Vue SSR 的 HTML 模板文件。
│   │   ├── config.js (可选的)  配置文件的入口文件，也可以是 YML 或 toml。
│   │   └── enhanceApp.js (可选的) 客户端应用的增强。
│   │ 
│   ├── README.md
│   ├── guide
│   │   └── README.md
│   └── config.md
│ 
└── package.json
```

### 接下来我们开始填坑吧😂

😡建议：vuepress能不能把结构生成📦 啊❕老天 简直步步惊心

NO.1	`cd docs && mkdir .vuepress `

NO.2	 `cd .vuepress thouch config.js `

在config.js🀄️配置一下下面的代码好吧

提前一起布置好吧：：如果你打算发布到 `https://<USERNAME>.github.io/<REPO>/`（也就是说你的仓库在 `https://github.com/<USERNAME>/<REPO>`），则将 `base` 设置为 `"/<REPO>/"`。

```js
module.exports = {
  title: 'Hello VuePress',
  description: 'Just playing around'
  base: `/vue-blog/`, //配置你要放的仓库的路径或子路径文件名
}
```

运行起 dev server查看效果

### 我们先把它部署到GitHub Pages先然后在细化它👌

查看一下根目录的package.json🈶️🌲🈶️下面的这段代码

```json
{
  "scripts": {
    "docs:dev": "vuepress dev docs",
    "docs:build": "vuepress build docs",
    "d": "bash deploy.sh" //顺便把这个也配置了吧 这个是部署 npm run d
  }
}
```

🈶️的话下一步了哦 

在根目录下生成`thouch deploy.sh`

1. 在你的项目中，创建一个如下的 `deploy.sh` 文件（请自行判断去掉高亮行的注释）: 

```bash
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
```

—与官网一致

1. 在你项目的根目录下创建一个名为 `.gitlab-ci.yml` 的文件，无论何时你提交了更改，它都会帮助你自动构建和部署：

```yaml
image: node:9.11.1

pages:
 cache:
   paths:
   - node_modules/

 script:
 - npm install
 - npm run docs:build
 artifacts:
   paths:
   - public
 only:
 - master
```

基本上按照以上步骤走的话是没问题的如果🈶️疏漏欢迎👏给我提issue以免误导他人



—原创---

阿龙的vuepress文档

[⚠️	提意见	⚠️](https://github.com/ragnar-document/vue-blog/issues)

欢迎收看，但愿没没浪费你宝贵的时间～～