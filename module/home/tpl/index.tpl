<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Seajs and Backbone Todos</title>
	<link rel="stylesheet" href="assets/main/todos.css"/>

	<script type="text/javascript" src="assets/sea-modules/seajs/1.3.0/sea.js"></script>

	<script>
    seajs.config({
      alias: {
        "$": 'jquery/1.8.3/jquery',
        'jquery': '1.8.3',
        'underscore': '1.4.2',
        'backbone': '0.9.2',
        'localstore':'backbone-localstorage'
      },
      debug: true,
    });

    seajs.use(['jquery','./main.js'], function($,main) {
      $(function() {
          main.AppInit();
      });
    });
  </script>
</head>

<body>
	<div id="todoapp">

		<header>
			<h1>Todos</h1>
			<input id="new-todo" type="text" placeholder="What needs to be done?" />
		</header>

		<section id="main">
			<input id="toggle-all" type="checkbox">
			<label for="toggle-all">Mark all as complete</label>
			<ul id="todo-list"></ul>
		</section>

		<footer>
			<a id="clear-completed">Clear completed</a>
			<div id="todo-count"></div>
		</footer>

	</div>

	<div id="instructions">Double-click to edit a todo.</div>

	<div id="credits">
		Created by
		<br />
		<a href="http://jgn.me/">J&eacute;r&ocirc;me Gravel-Niquet</a>
		.
		<br />
		Rewritten by:
		<a href="http://addyosmani.github.com/todomvc">TodoMVC</a>
		.
	</div>

	<!-- Templates -->

	<script type="text/template" id="item-template">
    <div class="view">
      <input class="toggle" type="checkbox" <%= done ? 'checked="checked"' : '' %> />
      <label><%- title %></label>
      <a class="destroy"></a>
    </div>
    <input class="edit" type="text" value="<%- title %>" /></script>

	<script type="text/template" id="stats-template">
    <% if (done) { %>
      <a id="clear-completed">Clear <%= done %> completed <%= done == 1 ? 'item' : 'items' %></a>
    <% } %>
    <div class="todo-count"><b><%= remaining %></b> <%= remaining == 1 ? 'item' : 'items' %>left</div>
  </script>

</body>

</html>