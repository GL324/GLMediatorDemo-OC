# GLMediatorDemo-OC
使用CTMediator作为路由,实现各个framework库文件之间的跳转及参数传递，以实现组件化开发。

本demo是使用framework实现组件化的一次实践,组件直接使用CTMediator路由进行通信。之所以选用CTMediator，是因为CTMediator对项目侵入性小，且能够传递非常规参数，而且不需要事先注册。对CTMediator感兴趣的同学可以阅读casa大神的这篇博客https://casatwy.com/iOS-Modulization.html ，讲的很详细。

该demo组成部分有主工程，会诊模块，消息模块，用户模块。实现了主工程对各个模块的引用，以及各模块之间的跳转及传参问题。

运行代码前,请先执行 pod install, 安装CTMediator路由。
