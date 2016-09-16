require 'test_helper'

class MoviedbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moviedb_index_url
    assert_response :success
  end

end
