class PostsController < ApplicationController
  def index
    @posts = Post.search_with_published_month(params[:published_month]).order_default.page params[:page]
  end
  def show
    post = Post.find(params[:id])
    post.increment!(:views_count)
    redirect_to post.source_url
  end
end
