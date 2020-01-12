# XcconfigDemo

## 编译环境

* Xcode 11.3
* Mac OS 10.15.1
* Objective-C 2.0

## 简介

`xcconfig`文件其实就是`Xcode`里的`config`文件，本质是一个用来保存`Build Settings`键值对的纯文本文件。这些键值对会覆盖`Build Settings`中的值，所以在`xcconfig`文件中配置了的选项，在`Build Settings`中设置将失效。

## 配置文件

* 添加编译配置文件

1. `New File`->`Other`->`Configuration Settings File`
2. `PROJECT`->`Info`->`Configurations`->`Debug`/`Relaese`->选择对应的`config`文件
3. `TARGETS`->`Build Settings`->`User-Defined`中生成自定义的键值

* 配置文件的优先级

> 可以在`Build Settings`->点击`Levels`就可以看到优先级，从左至右，左边优先级最高,绿色的值是生效的值，值应该是与Resolved列的值相同

![层次结构](https://github.com/wenjiehe/XcconfigDemo/blob/master/XcconfigDemo/优先级层次结构.jpg)

* 自定义编译环境

1. `PROJECT`->`Info`->`Configurations`->点击+号->`Duplicate "Debug/Relase" Configurations`（复制对应模式下的配置文件并重新生成一个新的编译环境）
2. `Xcode`的菜单栏->`Product`->`Scheme`->`Edit Scheme`->5种编译模式下的`Build Configuration`就可以选择新生成的编译环境

* 如何获取`Build Settings`中的键值
> 选中对应的键，修改为你想要的值后,`command + C`，然后到对应的`xcconfig`中去粘贴就好了,如果为默认值的话则不可复制。如果需要改回去的话，使用`command + delete`就恢复默认值了。

* xcconfig文件的值类型

![值类型](https://github.com/wenjiehe/XcconfigDemo/blob/master/XcconfigDemo/xcconfig的值类型定义.jpg)

## 参考资料

* [apple官网文档](https://help.apple.com/xcode/#/dev745c5c974)
* [Xcode Concepts](https://developer.apple.com/library/archive/featuredarticles/XcodeConcepts/Concept-Targets.html)Xcode Workspace、Xcode Scheme、Xcode Project、Xcode Target、Build Settings这5者的关系
* [参考xcconfigs模板教程](https://github.com/jspahrsummers/xcconfigs)
