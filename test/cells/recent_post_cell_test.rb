require 'test_helper'

class RecentPostCellTest < Cell::TestCase
  test "show" do
    html = cell("recent_post").(:show)
    assert html.match /<p>/
  end

  test "index" do
    html = cell("recent_post").(:index)
    assert html.match /<p>/
  end


end
