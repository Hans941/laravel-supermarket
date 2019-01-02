## 概述
该代码为[laravel-china电商实战练习](https://laravel-china.org/courses/laravel-shop)    
[作者源码](https://github.com/summerblue/laravel-shop/tree/L05_5.7)
## 如何开始
该部署环境为 `mac os` , 如果是`windows` 在 `运行 Laravel Mix` 环节可能会一些错误, 尝试参考 [该链接解决](https://laravel-china.org/courses/laravel-shop/5.5/basic-layout/1578)
```
$ git clone git@github.com:Hans941/laravel-supermarket.git
$ cd laravel-supermarket 
$ composer install 
$ cp .env.example .env
$ php artisan key:generate
```

编辑配置 `虚拟主机` , `hosts文件` 以及 `.env`文件   
在 `.env` 文件中必要的配置如下
```
...
APP_URL=http://your-domain
...
# 配置数据库信息
...
QUEUE_DRIVER=sync #也可配置为你喜欢的异步驱动
...
MAIL_DRIVER=log #不测试邮件功能log驱动即可
...
#支付宝沙箱参数不测试支付可不配置
```
`tip` :[支付宝沙箱环境](https://openhome.alipay.com/platform/appDaily.htm?tab=info)

```shell
# 如果你配置了异步队列并且未配置supervisor
$ php artisan queue:work

# 运行 Laravel Mix编译前端文件
$ yarn config set registry https://registry.npm.taobao.org
$ SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass yarn #windows需要在该命令后加 `-no-bin-links`
$ npm run watch-poll

# 数据库迁移
$ php artisan migrate --seed

# 迁移laravel-admin后台管理配置数据, 注意替换数据库名称
$ mysql -u root -p -t your_db_name < database/admin.sql
```
