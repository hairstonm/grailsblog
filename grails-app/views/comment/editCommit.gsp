<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Create Comment</title>
       <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href=“http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </head>
  <body>
  <header role="banner">
		<nav role="navigation" class="navbar navbar-static-top navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>



					<a class="navbar-brand" href="/grailsblog/post/list#">Blog</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li> <g:if test = "${session.user}"> 
						<g:link controller="user" action="logout">Logout</g:link>
						</g:if>
   
  				<g:else> <g:link controller="user" action="login">Login</g:link> 
  				</g:else></li>
						
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class= "container-fluid">
	<div class="row">
  <h1>Create a comment</h1>
  <div id="validationerrors">
      <g:renderErrors bean="${comment}"/>
  </div>
  <g:form controller="comment" action="save">
      <g:hiddenField name="postId" value="${postId}"/>
      <dl>
          <dt>Your name:</dt>
          <dd>
          <g:textField name="who.name" value="${comment.who.name}"/>
          </dd>
          <dt>Your email:</dt>
          <dd>
          <g:textField name="who.email" value="${comment.who.email}"/>
          </dd>
          <dt>Your website/blog:</dt>
          <dd>
          <g:textField name="who.url" value="${comment.who.url}"/>
          </dd>
          <dt>Add your comment:</dt>
          <dd>
          <g:textArea name="comment" value="${comment.comment}" rows="20" cols="50"/>
          </dd>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </div>
  </div>
  </body>
  <footer role="contentinfo">
<p>
<small>Copyright &copy; Manifest Solutions</small>
</p>
</footer>
</body>
</html>
</html>