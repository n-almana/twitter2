class PostsController < ApplicationController

	before_action :authenticate_user! 

	def index
		@posts = Post.all 
	end

	def new
		@post = Post.new 
	end

	def create
		@post = Post.new(params[:post].permit(:text))
		post.user = current_user 
		post.save 
	end

	def edit
		@post = Post.find(params[:id]) 
	end

	def update
		@post = Post.find(params[:id])
		@post.update(params[:post].permit(:text))
		redirect_to(@post)
	end

	def show
		@post = Post.find(params[:id]) 
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to(posts_url)
	end

end
