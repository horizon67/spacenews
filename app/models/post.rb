class Post < ApplicationRecord
  scope :order_default, ->{ order('published_at desc') }
  attr_accessor :image
  paginates_per 10

  def self.search_with_published_month(published_month)
    if published_month.blank?
      return where('1 = 1')
    end
    return where(published_at: ("#{published_month}-01").to_datetime.. ("#{published_month}-01").to_datetime.end_of_month)
  end

  validates :title,
    :presence => true,
    :length => { :maximum => 70 }
  validates :content,
    :presence => true,
    :length => { :maximum => 10000 }
  validates :source_name,
    :presence => true,
    :length => { :maximum => 50 }
  validates :source_url,
    :presence => true
  validates :published_at,
    :presence => true
end
