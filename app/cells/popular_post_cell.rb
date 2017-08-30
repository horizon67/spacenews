class PopularPostCell < Cell::ViewModel
  include ::Cell::Slim
  def index
    @posts = Post.order(views_count: :desc).limit(5)
    render
  end
end
