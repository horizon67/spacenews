class IntroPostCell < Cell::ViewModel
  include ::Cell::Slim
  def index
    @posts = []
    Settings.intro.posts.each do |hash|
      post = Post.find(hash[:id])
      post.image = hash[:image]
      @posts << post
    end
    render
  end

end
