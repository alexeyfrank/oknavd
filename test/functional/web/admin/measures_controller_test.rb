require 'test_helper'

class Web::Admin::MeasuresControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    sign_in @user
    @item = create :call_measurer
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @item.id
    assert_response :success
  end

end
