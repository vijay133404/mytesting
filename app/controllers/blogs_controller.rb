class BlogsController < ApplicationController
  
  def new
  	@blog = Blog.new
  end
  
  def index
      @blogs = Blog.all
  end
  
 def show
     @blog1 = Blog.find(params[:id])
     @comment = Comment.new
 end

  def edit
 	      @blog2 = Blog.find(params[:id])
  end

 	def update
 		@blog2 = Blog.find(params[:id])
 		@blog2.update(title: params[:blog][:title])
 		redirect_to blog_path(@blog2)
 	end
 
 def destroy

 	 @blog2 = Blog.find(params[:id])
 	 @blog2.destroy
 	 redirect_to blogs_path
 end

  def create
  	     @blog = Blog.create(title: params[:blog][:title])

  	     redirect_to blog_path(@blog)

  end

  def create_comment
     @blog = Blog.find(params[:id])
     @blog.comments.create(content: params[:comment][:content])
     redirect_to blog_path(@blog)
  	 
  end
   def comment
         @blog = Blog.find(params[:id])
         @blog.comments.create(content: params[:comment][:content])
         render nothing: true
   end
end
