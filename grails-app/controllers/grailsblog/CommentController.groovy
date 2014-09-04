package grailsblog

class CommentController {

    def editCommit = {
		def post = Post.get(params.id)
        render(view:'editCommit',
                model:[
                        comment:new Comment(),
                        postId:post.id])
    }

    def save = {
        def comment = new Comment(params)
        comment.dateCreated = new Date();
        comment.post = Post.get(params.postId)
        if(comment.save()) {
            redirect(
                    controller:'post',
                    action:'view',
                    id:params.postId)
        } else {
            render(view:'editCommit',
                    model:[comment:comment,
                            postId:params.postId])
        }
    }
}