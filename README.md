# XcconfigDemo

## 编译环境

* Xcode 11.3
* Mac OS 10.15.1
* Objective-C 2.0
* Swift 5.1

## 简介

xcconfig文件其实就是Xcode里的config文件，本质是一个用来保存Build Settings键值对的纯文本文件。这些键值对会覆盖Build Settings中的值，所以在xcconfig文件中配置了的选项，在Build Settings中设置将失效。

## 配置文件

* 添加编译配置文件

1. New File->Other->Configuration Settings File
2. PROJECT->Info->Configurations->Debug/Relaese->选择对应的config文件
3. TARGETS->Build Settings->OC(User-Defined)/Swift(Swift Compile-Custom Flags)中设置自定义的键值

* 配置文件的优先级

![层次结构](https://github.com/wenjiehe/XcconfigDemo/blob/master/XcconfigDemo/优先级层次结构.jpg)

* 自定义编译环境

1. PROJECT->Info->Configurations->点击+号->Duplicate "Debug/Relase" Configurations（复制对应模式下的配置文件并重新生成一个新的编译环境）
2. Xcode的菜单栏->Product->Scheme->Edit Scheme->5种编译模式下的Build Configuration就可以选择新生成的编译环境

## 应用

* 如何获取Build Settings中的键值
> 选中对应的键，修改为你想要的值后,command + C，然后到对应的xcconfig中去粘贴就好了,如果为默认值的话则不可复制。如果需要改回去的话，使用command + delete就恢复默认值了。

* xcconfig文件的格式
![值格式]()

## 参考资料

* [apple官网文档](https://help.apple.com/xcode/#/dev745c5c974)
* [Xcode Concepts](https://developer.apple.com/library/archive/featuredarticles/XcodeConcepts/Concept-Targets.html)
* [参考github教程](https://github.com/jspahrsummers/xcconfigs)
