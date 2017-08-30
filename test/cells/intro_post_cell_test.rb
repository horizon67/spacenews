require 'test_helper'

class IntroPostCellTest < Cell::TestCase
  test "index" do
    html = cell("intro_post").(:index)
    assert html.match /<p>/
  end


end
