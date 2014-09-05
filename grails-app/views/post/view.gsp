<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
	${post.title}
	
</title>
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
	<h1>
		${post.title}
	</h1>
	<p>
		${post.teaser}
	</p>
	<div>
		${post.content}
	</div>
	<div>
	<g:link controller="comment" action="editCommit" id="${post.id}">Add Comment </g:link>
		<g:if test="${post.comments.isEmpty()}">
		</g:if>
		<g:else>
		<h5>Comments:</h5>
		<g:each in="${post.comments}" var="comment">
			<div class="comment">
				<p>
					${comment.comment }
				</p>
				<p>
					Made by:
					${comment.who.name}
					on
					${comment.dateCreated}
				</p>
			</div>
		</g:each>
		</g:else>
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