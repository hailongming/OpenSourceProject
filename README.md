这个项目爬取了大连理工大学软件学院2017年5月-12月的学生周知。包括title link和time。
并统计了学院在哪一月发布学生周知最多。数据显示为12月和7月。即期末。

ssdut 是爬虫程序。使用了Scrapy框架
Xszz 是简易网站。使用了django框架

学生周知的前端存在同一学生周知出现在两个页面的问题。在爬取的时候进行了过滤。
使用了matplotlib进行了柱状图的绘制

！！！注意：运行web程序会先出现对每月发通知数的统计柱状图。关闭柱状图后才能显示web。
