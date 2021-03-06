Feature: 作为控制器运用服务用户
  登录控制器运用服务用户
  想要查看资源评论以及获取某条资源评论情况

  Background:
    Given 载入平台页面所有参数

  Scenario:作为控制器运用服务用户登录控制器页面查看资源评论情况
    Given 来到平台登录界面并以操作员身份登录
    When 点击保障管理
    And 点击保障论坛
    Then 定向到平台保障页面
    And 在表单保障页面资源的标题项中应该看到有且只有一个资源标题
    And 在表单保障页面资源的标题项中应该看到有且只有一个保障类型
    And 在表单保障页面资源的标题项中应该看到有且只有一个发件单位
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复数量
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复时间
    And 在表单保障页面资源的标题项中应该看到有且只有一个顶帖数量
    When 点击最新主题
    Then 在表单保障页面资源的标题项中应该看到有且只有一个资源标题
    And 在表单保障页面资源的标题项中应该看到有且只有一个保障类型
    And 在表单保障页面资源的标题项中应该看到有且只有一个发件单位
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复数量
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复时间
    And 在表单保障页面资源的标题项中应该看到有且只有一个顶帖数量
    When 点击热门讨论
    Then 在表单保障页面资源的标题项中应该看到有且只有一个资源标题
    And 在表单保障页面资源的标题项中应该看到有且只有一个保障类型
    And 在表单保障页面资源的标题项中应该看到有且只有一个发件单位
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复数量
    And 在表单保障页面资源的标题项中应该看到有且只有一个回复时间
    And 在表单保障页面资源的标题项中应该看到有且只有一个顶帖数量

  Scenario:作为控制器运用服务用户快速检索发布主题简单搜索
    Given 来到平台登录界面并以操作员身份登录
    When 点击保障管理
    And 点击保障论坛
    Then 定向到平台保障页面
    When 在输入框保障页面的简单搜索框中输入尾号
    And  按下搜索
    Then 保障页面搜索结果的资源标题中的内容包含关键字尾号

  Scenario:作为控制器运用服务用户想要精确搜索发布主题使用高级搜索检索他需要的资源
    Given 来到平台登录界面并以操作员身份登录
    When 点击保障管理
    And 点击保障论坛
    Then 定向到平台保障页面
    When 点击高级搜索
    And 在输入框保证页面高级搜索中的输入主题中输入尾号
    And 在输入框保障页面高级搜索中的输入发件单位中输入师范处
    And 在选择菜单中选择新增资源
    And 在输入框开始时间中输入2012-7-1
    And 在输入框结束时间中输入2013-9-1
    And 按下提交
    Then 保障页面搜索结果的资源标题中的内容包含关键字尾号
    And 看到保障页面搜索结果的保障类型的内容含有新增资源
    And 看到保障页面搜索结果的发件单位的内容含有师范处


