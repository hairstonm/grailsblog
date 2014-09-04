package grailsblog

class UserService {
	
		def authenticate(username, password) {
			return User.findByUsernameAndPassword(username, password)
		}
	}
	