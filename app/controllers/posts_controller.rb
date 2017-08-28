class PostsController < ApplicationController
  def index
    @posts = Post.search_with_published_month(params[:published_month]).order_default.page params[:page]
  end
  def show
    redirect_to Post.find(params[:id]).source_url
  end
end
