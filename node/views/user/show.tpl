{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/style.css">
{% endblock %}

{% block content %}

<div class="page">
  <h1>用户管理</h1>
  <div class="new-user">
    <h2>新建用户</h2>
    <input type="text" name="name" id="new-name" placeholder="请输入用户名">
    <input type="email" name="email" id="new-email" placeholder="请输入邮箱账号">
    <input type="password" name="password" id="new-password" placeholder="请输入密码">
    <button id="new-submit">新建用户</button>
  </div>
  <div class="user-list">
    <h2>用户列表</h2>
    <ul>
      {% for val in users  %}
      <li>
        <span>id: {{val.id}}</span>
        <span>email: {{val.email}}</span>
        <input class="user-name" type="text" name="name" placeholder="姓名" value="{{val.name}}">
        <button class="update-user" data-id="{{val.id}}">修改姓名</button>
        <button class="delete-user" data-id="{{val.id}}">删除用户</button>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endblock %}