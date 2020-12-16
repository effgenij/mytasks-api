require "test_helper"

class ProjectsControllerTest < ActionController::TestCase
  test "should get index" do
    create :project
    get :index, format: :json
    assert_response :success
  end
end
