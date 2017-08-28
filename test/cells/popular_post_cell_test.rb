require 'test_helper'

class PopularPostCellTest < Cell::TestCase
  test "show" do
    html = cell("popular_post").(:show)
    assert html.match /<p>/
  end


end
