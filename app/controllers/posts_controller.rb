class PostsController < ApplicationController
  
  before_action :authenticate_user,{only:[:new,:edit]}
  
  PER = 6
  def index
      @posts = Post.page(params[:page]).per(PER).order('created_at DESC')
  end
  
  def show
      @post = Post.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
      @post = Post.new(title: params[:title], content: params[:content], image: params[:image])
    if @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
  
  def edit
      @post = Post.find_by(id: params[:id])
  end
  
  def update
      @post = Post.find_by(id: params[:id])
      @post.title = params[:title]
      @post.content = params[:content]
      @post.image = params[:image]
      if @post.save
      redirect_to("/posts/index")
      else
      render("posts/edit")
      end
  end
  
  def destroy
      @post = Post.find_by(id: params[:id])
      @post.destroy
      redirect_to("/posts/index")
  end
end
