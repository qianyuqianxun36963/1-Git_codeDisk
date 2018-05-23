# Vue.js 路由

本章节我们将为大家介绍 Vue.js 路由。

Vue.js 路由允许我们通过不同的 URL 访问不同的内容。

通过 Vue.js 可以实现多视图的单页Web应用（single page web application，SPA）。

Vue.js 路由需要载入 [vue-router](https://github.com/vuejs/vue-router) 库

中文文档地址：[vue-router文档](https://router.vuejs.org/zh-cn/)。

## 安装

### 1、直接下载 / CDN

https://unpkg.com/vue-router/dist/vue-router.js

### 2、NPM

推荐使用淘宝镜像：

`cnpm install vue-router`

## 简单实例
Vue.js + vue-router 可以很简单的实现单页应用。

以下实例中我们将 vue-router 加进来，然后配置组件和路由映射，再告诉 vue-router 在哪里渲染它们。代码如下所示：

### HTML 代码
```
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>

<div id="app">
  <h1>Hello App!</h1>
  <p>
    <!-- 使用 router-link 组件来导航. -->
    <!-- 通过传入 `to` 属性指定链接. -->
    <!-- <router-link> 默认会被渲染成一个 `<a>` 标签 -->
    <router-link to="/foo">Go to Foo</router-link>
    <router-link to="/bar">Go to Bar</router-link>
  </p>
  <!-- 路由出口 -->
  <!-- 路由匹配到的组件将渲染在这里 -->
  <router-view></router-view>
</div>
```
### JavaScript 代码
```
// 0. 如果使用模块化机制编程，導入Vue和VueRouter，要调用 Vue.use(VueRouter)

// 1. 定义（路由）组件。
// 可以从其他文件 import 进来
const Foo = { template: '<div>foo</div>' }
const Bar = { template: '<div>bar</div>' }

// 2. 定义路由
// 每个路由应该映射一个组件。 其中"component" 可以是
// 通过 Vue.extend() 创建的组件构造器，
// 或者，只是一个组件配置对象。
// 我们晚点再讨论嵌套路由。
const routes = [
  { path: '/foo', component: Foo },
  { path: '/bar', component: Bar }
]

// 3. 创建 router 实例，然后传 `routes` 配置
// 你还可以传别的配置参数, 不过先这么简单着吧。
const router = new VueRouter({
  routes // （缩写）相当于 routes: routes
})

// 4. 创建和挂载根实例。
// 记得要通过 router 配置参数注入路由，
// 从而让整个应用都有路由功能
const app = new Vue({
  router
}).$mount('#app')

// 现在，应用已经启动了！

```

## NPM 路由实例

接下来我们演示了一个使用 npm 简单的路由实例，开始前，请先下载该实例源代码：

路由实例
你也可以在 Github 上下载：https://github.com/chrisvfritz/vue-2.0-simple-routing-example

下载完后，解压该目录，重命名目录为 vue-demo，vu 并进入该目录，执行以下命令：

### 安装依赖，使用淘宝资源命令 cnpm
cnpm install

### 启动应用，地址为 localhost:8080
cnpm run dev
如果你需要发布到正式环境可以执行以下命令：

cnpm run build
