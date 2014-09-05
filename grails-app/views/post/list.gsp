<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>My Blog</title>
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
  				</g:else>
						</li>
						
						
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	<div class= "container-fluid">
	<div class="row">
				<input id="searchText" class="form-control" placeholder="Search" />
			</div>
			<div class="row">
				<button id="searchButton" type="button" class="btn btn-primary">
					<i class="fa fa-search"></i> Search 
					
				</button>
			</div>
			
	<div class="row">
	<h2></h2>
	<g:secureLink controller="post" action="edit">
	
  			Create a new post
		</g:secureLink> </h2>
				<h1>My Posts</h1>
				<g:each in="${posts}" var="post">
		<div id="${post.id}">
			<g:link controller="post" action="view" id="${post.id}">
				<h2>
					${post.title}
				</h2>
			</g:link>
			<p>
				${post.teaser}
			</p>
			<p>
				Last Updated:
				${post.lastUpdated}
			</p>
			<g:secureLink controller="post" action="edit" id="${post.id}">
 				 Edit this post
			</g:secureLink>


			<g:link controller="comment" action="editCommit" id="${post.id}">Add Comment </g:link>
		</div>
	</g:each>
	<p>
		<g:secureLink controller="post" action="edit">
  			Create a new post
		</g:secureLink>
	</p>
	
			</div>
			<div id="navigation" class="row hidden">
				<button id="previous" class="btn btn-default"> Previous </button>
				<button id="next" class="btn btn-default"> Next </button>
				<span>Page: <select id="pageNumber" class="form-control"></select></span>
			</div>
			<div id="searchResults" class="row">
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