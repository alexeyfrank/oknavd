require 'test_helper'

class Web::Admin::NewsControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    sign_in @user
    @news = create :news
  end

  test "should get :index" do
    get :index
    assert_response :success
  end

  test "should get :new" do
    get :new
    assert_response :success
  end

  test "should get :edit" do
    get :edit, id: @news.id
    assert_response :success
  end

  test "should post :create" do
    attrs = attributes_for :news
    post :create, news: attrs
    assert_response :redirect
    news = News.find_by_title attrs[:title]
    assert news
  end

  test "should put :update" do
    attrs = attributes_for :news
    put :update, id: @news.id, news: attrs
    assert_response :redirect
    news = News.find_by_title attrs[:title]
    assert news == @news
  end

  test "should delete :destroy" do
    delete :destroy, id: @news.id
    assert_response :redirect
    assert !News.exists?(@news)
  end

end
