# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://xn--zck9awe6du60xdda.com/"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add posts_path, :priority => 0.7, :changefreq => 'daily'
  Post.where.not(summary: nil).each do |post|
    add post_path(post.id), :changefreq => 'weekly', :lastmod => post.updated_at
  end
  (0..9).map{|i| (Time.zone.now - i.month).strftime("%Y-%m")}.each do |month|
    add posts_published_month_path(published_month: month)
  end
end
