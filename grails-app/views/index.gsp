<!DOCTYPE html>
<html>

  <head>
    <title>Backbone Demo: Todos</title>
    <r:require module="todo" />
    <meta name="layout" content="main">
	<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
	<script src="http://vjs.zencdn.net/c/video.js"></script>
  </head>

  <body>
  
  

<video id=home_video class="video-js vjs-default-skin" controls preload=none width=640 height=264
            poster="http://video-js.zencoder.com/oceans-clip.jpg">
          <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4'/>
          <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm'/>
          <track kind=captions src="/video-js/captions.vtt" srclang=en label=English />
 </video>

  

    <!-- Todo App Interface -->

    <div id="todoapp">

      <div class="title">
        <h1>Todos</h1>
      </div>

      <div class="content">

        <div id="create-todo">
          <input id="new-todo" placeholder="What needs to be done?" type="text" />
          <span class="ui-tooltip-top" style="display:none;">Press Enter to save this task</span>
        </div>

        <div id="todos">
          <ul id="todo-list"></ul>
        </div>

        <div id="todo-stats"></div>

      </div>

    </div>

    <ul id="instructions">
      <li>Double-click to edit a todo.</li>
      <li><a href="../../docs/todos.html">View the annotated source.</a></li>
    </ul>

    <div id="credits">
      Created by
      <br />
      <a href="http://jgn.me/">J&eacute;r&ocirc;me Gravel-Niquet</a>
    </div>

    <!-- Templates -->

    <script type="text/template" id="item-template">
      <div class="todo {{ done ? 'done' : '' }}">
        <div class="display">
          <input class="check" type="checkbox" {{ done ? 'checked="checked"' : '' }} />
          <div class="todo-text"></div>
          <span class="todo-destroy"></span>
        </div>
        <div class="edit">
          <input class="todo-input" type="text" value="" />
        </div>
      </div>
    </script>

    <script type="text/template" id="stats-template">
      {! if (total) { !}
        <span class="todo-count">
          <span class="number">{{ remaining }}</span>
          <span class="word">{{ remaining == 1 ? 'item' : 'items' }}</span> left.
        </span>
      {! } !}
      {! if (done) { !}
        <span class="todo-clear">
          <a href="#">
            Clear <span class="number-done">{{ done }}</span>
            completed <span class="word-done">{{ done == 1 ? 'item' : 'items' }}</span>
          </a>
        </span>
      {! } !}
    </script>

  </body>

</html>
