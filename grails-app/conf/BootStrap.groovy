import grailsblog.Post
import grailsblog.User

class BootStrap {

	def init = { servletContext ->
		new User(username:"me",
		password:"password",
		firstName:"A",
		lastName:"Developer").save()
		
		new Post(title:"First Grails Project",
		teaser:"Clearing out the clutter",
		content:"The full content of the article",
		published:true).save()


		new Post(title:"Getting Ready for Go Live",
		teaser:"The follow up on some real world issues.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"chris judd",
		teaser:"The follow up on some cat world issues.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"beauty",
		teaser:"The follow up on some real beauty issues.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"football",
		teaser:"The follow up on some real football issues.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live cats",
		teaser:"The follow up on some real cats.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live badgers",
		teaser:"The follow up on some real badgers.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live rabbits",
		teaser:"The follow up on some real rabbits.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live dolphins",
		teaser:"The follow up on some real dolphins.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live lizards",
		teaser:"The follow up on some real lizards.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live penguins",
		teaser:"The follow up on some real penguins.",
		content:"The full content of the article",
		published:false).save()

		new Post(title:"Getting Ready for live lions",
		teaser:"The follow up on some real lions.",
		content:"The full content of the article",
		published:false).save()
	}
}
