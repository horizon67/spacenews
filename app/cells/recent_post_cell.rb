class RecentPostCell < Cell::ViewModel
  include ::Cell::Slim
  def index
    @posts = Post.order_default.limit(5)
    render
  end
end
