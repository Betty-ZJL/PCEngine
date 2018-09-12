# PC-SUPERSEARCH
> - 搜索引擎（非动态更新）
> - 功能：搜索淘宝、京东、苏宁易购最低价电脑

### 文档说明
- SearchEngines：代码包，可直接在myeclipse中import
- data：所采集数据，用于创建索引
    - pcdata.sql(mysql直接导入数据)
    - pcdata.psc(通过navicat导入数据)
- pcIndex：索引包（通过Lucene创建）
- demo.mp4：搜索引擎展示视频
- README.md：说明文档

### 测试环境
- mysql（已有索引包，如不需要另外创建可不需要）
- tomcat 8
- jdk 1.8
- myeclipse

### 测试步骤
1.打开myeclipse，载入项目 ```SearchEngines``` 
2.本地发布，打开tomcat
3.主页：simple.jsp

### 注意
- 如果要创建**新的索引包路径**
    1. 找到文件 ```src/Index/CreateIndex.java``` 第29行
    ```java
     File indexDir = new File("索引包路径");
    ```
    2. 数据库**用户名**及**密码**需根据自身情况修改

- 如果要修改使用**新的索引包路径**（两个都要改）
    1. 找到文件 ```src/searches/complexSearch.java``` 第53-54行
    ```java
    IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				"新索引包路径"))); 
    ```
    2. 找到文件 src/searches/simpleSearch.java 第41-42行
    ```java
    IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				"新索引包路径")));
    ```

