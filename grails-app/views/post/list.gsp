<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>My Posts</title>
  </head>
  <body>
  <h1>My Posts</h1>

  <g:each in="${posts}" var="post">
      <div>
          <h2>${post.title}</h2>
          <p>${post.teaser}</p>
          <p>Last Updated: ${post.lastUpdated}</p>
      </div>
  </g:each>
  <g:link controller="post" action="edit">
    Create a new post
<<<<<<< HEAD
	</g:link>
	
=======
</g:link>




>>>>>>> 993987a842baf03c830ccb252431728763ad67cf

  </body>
</html>