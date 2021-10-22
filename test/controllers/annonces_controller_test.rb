require 'test_helper'

class AnnoncesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annonce = annonces(:one)
  end

  test "should get index" do
    get annonces_url
    assert_response :success
  end

  test "should get new" do
    get new_annonce_url
    assert_response :success
  end

  test "should create annonce" do
    assert_difference('Annonce.count') do
      post annonces_url, params: { annonce: { content: @annonce.content, image: @annonce.image, title: @annonce.title } }
    end

    assert_redirected_to annonce_url(Annonce.last)
  end

  test "should show annonce" do
    get annonce_url(@annonce)
    assert_response :success
  end

  test "should get edit" do
    get edit_annonce_url(@annonce)
    assert_response :success
  end

  test "should update annonce" do
    patch annonce_url(@annonce), params: { annonce: { content: @annonce.content, image: @annonce.image, title: @annonce.title } }
    assert_redirected_to annonce_url(@annonce)
  end

  test "should destroy annonce" do
    assert_difference('Annonce.count', -1) do
      delete annonce_url(@annonce)
    end

    assert_redirected_to annonces_url
  end
end
