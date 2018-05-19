# 使用vuejs 提供的脚手架程序创建

构建vue项目的开发环境配置，官方提供了脚手架工具vue-cli来快速构建一个开发环境，初始化一个vue项目操作命令如下：

// 安装node.js，内含npm，Node.js官网：https://nodejs.org/en/ 。

// 设置npm镜像cnpm命令行工具
npm install -g cnpm --registry=https://registry.npm.taobao.org

## 安装脚手架工具 vue-cli

// 全局安装 vue-cli
cnpm install -g vue-cli

// 先创建并进入vue项目目录
cd mydemo

// 创建一个基于 webpack 模板的新项目
vue init webpack javalsj-blog-vue

// 先进入vue项目目录下再安装该项目的依赖
cd myblog

// 初始化安装项目
cnpm install

// 运行项目
npm run dev
