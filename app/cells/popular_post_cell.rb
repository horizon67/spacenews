class PopularPostCell < Cell::ViewModel
  include ::Cell::Slim
  def index
    @posts = Post.all.sample(5)
    render
  end
end
