class CommentsController < ApplicationController

	def create
			@blog = Blog.find(params[:blog_id])
			@blog.comments.create(comment_params)
			redirect_to blog_path(@blog)
	end

	def edit
		    @blog1 = Blog.find(params[:blog_id])
		    @comment = @blog1.comments.find(params[:id])	
	end

	def update
	         @blog1 = Blog.find(params[:blog_id])
	         @g = @blog1.comments.find(params[:id])
	         @g.update(content: params[:comment][:content])
	         redirect_to blog_path(@blog1)
	end

	# def rakesh
	# 	@blog = Blog.find(params[:id])
    #         @blog.comments.create(comment_params)
   

	# 	render nothing: true
	# end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end

end
