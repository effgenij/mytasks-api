require "test_helper"

class TodosControllerTest < ActionController::TestCase
  test "should get create" do
    create :todo
    get todos_create_url
    assert_response :success
  end

  test "should get update" do
    create :todo
    get todos_update_url
    assert_response :success
  end
end
