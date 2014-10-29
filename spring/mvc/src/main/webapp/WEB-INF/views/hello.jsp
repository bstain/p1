<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf-8"%>

<!doctype html>
<html ng-app="todoApp">
<head>
<title>Hello</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.min.js"></script>
<script src="<c:url value="/resources/todo/todo.js" />"></script>
<link rel="stylesheet" href="<c:url value="/resources/todo/todo.css" />">
</head>
<body>
	<h1>Hello world!</h1>

	<P>${msg}</P>
	<h2>Todo</h2>
	<div ng-controller="TodoController">
		<span>{{remaining()}} of {{todos.length}} remaining</span> [ <a
			href="" ng-click="archive()">archive</a> ]
		<ul class="unstyled">
			<li ng-repeat="todo in todos"><input type="checkbox"
				ng-model="todo.done"> <span class="done-{{todo.done}}">{{todo.text}}</span>
			</li>
		</ul>
		<form ng-submit="addTodo()">
			<input type="text" ng-model="todoText" size="30"
				placeholder="add new todo here"> <input class="btn-primary"
				type="submit" value="add">
		</form>
	</div>
</body>
</html>