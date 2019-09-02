require 'test_helper'

class PreformersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preformers_index_url
    assert_response :success
  end

  test "should get show" do
    get preformers_show_url
    assert_response :success
  end

  test "should get new" do
    get preformers_new_url
    assert_response :success
  end

  test "should get edit" do
    get preformers_edit_url
    assert_response :success
  end

end
