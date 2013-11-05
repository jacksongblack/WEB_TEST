#encoding:utf-8
Feature: 作为平台操作员
  用管理员帐号创建操作员帐号
  从而用操作员帐号能看到系统所有信息

  Background:
    Given 载入平台页面所有参数

  Scenario: 使用管理员账户创建操作员账户并登录和看到所有资源
    Given 我来到平台登录界面
    Then 在输入框登录帐号中输入test
    And 在输入框登录密码中输入123456
    And 按下登录
    When 定向到平台首页
    Then 点击用户管理
    And 点击创建用户
    And 在输入框账户中输入operator
    And 在输入框密码中输入123456
    And 在输入框确认密码中输入123456
    And 在输入框联系电话中输入12345678910
    And 在输入框电子邮箱中输入operator@163.com
    And 在选择菜单用户权限中选择操作员
    And 按下确定
    When 定向到用户管理界面
    And 看到用户列表姓名栏的内容含有operator
    Then 我来到平台登录登录界面
    And 在输入框登录帐号中输入operator
    And 在输入框登录密码中输入123456
    And 按下登录
    When 定向到平台首页
    Then 点击资源管理
    And 点击资源列表
    When 定向到资源列表页面




