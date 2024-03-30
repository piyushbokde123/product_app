require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get products_create_url
    assert_response :success
  end

  test "should get and" do
    get products_and_url
    assert_response :success
  end

  test "should get update" do
    get products_update_url
    assert_response :success
  end
end
