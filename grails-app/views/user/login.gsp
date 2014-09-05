<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Login</title>
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
						
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class= "container-fluid">
	<div class="row">
<g:form action="authenticate" method="post">
  <dl>
    <dt>Username:</dt>
    <dd><g:textField name="username"/></dd>
    <dt>Password:</dt>
    <dd><input type="password" name="password"/></dd>
  </dl>
  <g:submitButton name="login" value="Login"/>
</g:form>
</div>
</div>
</body>
<footer role="contentinfo">
<p>
<small>Copyright &copy; Manifest Solutions</small>
</p>
</footer>
</html>
</html>