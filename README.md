# README

<!--
create time: 2015-12-04 13:38:39
Author: amoblin

This file is created by Marboo<http://marboo.io> template file $MARBOO_HOME/.media/starts/default.md
本文件由 Marboo<http://marboo.io> 模板文件 $MARBOO_HOME/.media/starts/default.md 创建
-->

API data for API Debugger: <https://itunes.apple.com/us/app/api-debugger/id1069711788?l=zh&ls=1&mt=8>

# 添加API

fork本仓库，然后向index.json中增加API数据，给amoblin发pull request，合并进本仓库后，API Debugger里就可以看到新的API啦~

# API数据格式

先看一个API的例子：

```json
{
    "title" : "花瓣网",
    "id": "huaban_index",
    "method" : "GET",
    "url" : "http://api.huaban.com/favorite/wedding_events",
    "url_params" : "",
    "body_type" : "",
    "body_params" : "",
    
    "icon": "http://hbfile.b0.upaiyun.com/img/about/brand/webicon/files/HuabanWebIcon_64px.png",
    "value_path" : "pins",
    "layout" : "app_store",
    "content_mapping" : {
        "title" : "name",
        "image" : ["http://img.hb.aicdn.com/%s", "file.key"],
        "subtitle" : "description"
    },
    "item_action": "huaban_detail"
```

- title：给这个API起的名字，自定义字符串
- id：唯一标示这个API对象，自定义字符串
- method：HTTP请求类型，可选集合：GET、POST、PUT、DELETE。目前1.0版本只支持GET方法
- url：这是最关键的信息--API的网址
- url_params：GET参数
- body_type：只有method为POST时才有效，设置body的格式
- body_params：只有method为POST时才有效，设置body的内容
- icon：在API Debugger首页列表展示时显示的图片
- value_path：希望展示的数据的key path，一般对应的值是一个list
- layout：每一项的展示样式，可选集合：app_store、onle_title、only_image、landscape、image_and_intro、webview、custom等。具体效果试一下就知道了。以后会增加更多的布局。
- content_mapping：内容映射。这里是定义value_path中的每一项数据到layout展示样式的映射规则。比如app_store这个布局，有3个展示位：图片、标题、副标题，对应就是*image*、*title*、*subtitle*，这三项对应的值应该从value_path中的元素来取，取的路径就是在这里定义的。
- item_action：定义每一项的点击事件处理。值为另一个API的id。

# API文档

大家可以把搜集到的API文档资料放到这里

- [知乎日报 API 分析](https://github.com/izzyleung/ZhihuDailyPurify/wiki/知乎日报-API-分析)
- [](http://www.lxway.com/692008056.htm)
