class PostsController < ApplicationController
	def new
		@post = Post.new
		render :new
	end

	def index
		@posts = Post.page(params[:page]).per(10)
		render :index
	end

	def create
		binding.pry
	end

	def edit
		@post = Post.find(params[:id])
		render :edit
	end

	def show
		@post = Post.find(params[:id])
		render :show
	end

end