class IntroPostCell < Cell::ViewModel
  include ::Cell::Slim
  def index
    @posts = []
    Settings.intro.posts.each do |hash|
      @posts << Post.find(hash[:id])
    end
    render
  end

end
