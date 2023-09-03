# Zero Specification 标准

详细教程：[《Zero云平台白皮书》](document/doc-web/index.html)

## 0. 引导

- （后端）Zero Ecotope：<https://www.zerows.io>
- （前端）Zero UI：<https://www.vertxui.cn>
- （工具）Zero AI：<https://www.vertxai.cn>
- （标准）Zero Schema：<https://www.vertx-cloud.cn>

# 1. 基本介绍

* 发布地址：http://www.vertx-cloud.cn/
* 所有Json Schema文件使用`.json`后缀
* 所有EMF文件使用EMF专用后缀
* Json Schema和EMF文件名一致
* 文件名都为`feature-it`格式，`feature`代表该文件使用的业务领域，`it`代表该文件隶属的技术术语

# 2. 目录介绍

| 目录       | 含义                              |
|----------|---------------------------------|
| database | 按数据库结构构造的基础规范，从表名开始使用**大写**处理路径。|
| datum | 非关系数据库底层存储定义。|
| kidd | **原始配置**，按 CLASSPATH 文件结构 / 云端统一接口打造的说明。|
| kiss | 接口定义，描述输入和输出。|
| kilo | 任务定义。|
| mage | 实体定义。|
| melodic  | 抽象定义，对应底层语言文件类名。 |
| modello  | 模型定义。|
| mod | 模块定义。|
| sage | **二义性**定义，主要用于定义部分二义性配置节点（通常按数据类型）。|
| see | 前端配置定义。|
| semantic | 属性专用说明，用于解释全系统统一的属性、术语等相关信息。|
| send | 参数专用，输入/输出参数专用。|

1. 数据库部分语法：`#/database/TABLE/COLUMN`，文件对应到`COLUMN`，定义如下：
    1. 线性维度：该列包含枚举值。
    2. 复杂配置：该列数据结构是JsonObject / JsonArray。
2. 非关系数据库部分：`#/datum/CONCEPT`，文件对应到`CONCEPT`。
3. **实体**部分语法：`#/mage/IDENTIFIER`，文件对应到`IDENTIFIER`。
4. **模型**部分语法：`#/modello/IDENTIFIER`，文件对应到`IDENTIFIER`。
5. **模块**部分语法：`#/mod/PATH`，文件对应到PATH，PATH命名为前端后端对应的路径（将`/`切换成`.`）。
6. **抽象定义**部分语法：`#/melodic/CLASS`，文件对应到`CLASS`，其中`CLASS`为类全名。
7. sage为二义性定义，包含很多和二义性数据结构相关的内容。