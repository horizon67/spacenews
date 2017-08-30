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
end
