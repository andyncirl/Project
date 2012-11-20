require 'test_helper'

class JerseysControllerTest < ActionController::TestCase
  setup do
    @jersey = jerseys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jerseys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jersey" do
    assert_difference('Jersey.count') do
      post :create, jersey: { brand: @jersey.brand, colour: @jersey.colour, description: @jersey.description, image_url: @jersey.image_url, league: @jersey.league, name: @jersey.name, price: @jersey.price }
    end

    assert_redirected_to jersey_path(assigns(:jersey))
  end

  test "should show jersey" do
    get :show, id: @jersey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jersey
    assert_response :success
  end

  test "should update jersey" do
    put :update, id: @jersey, jersey: { brand: @jersey.brand, colour: @jersey.colour, description: @jersey.description, image_url: @jersey.image_url, league: @jersey.league, name: @jersey.name, price: @jersey.price }
    assert_redirected_to jersey_path(assigns(:jersey))
  end

  test "should destroy jersey" do
    assert_difference('Jersey.count', -1) do
      delete :destroy, id: @jersey
    end

    assert_redirected_to jerseys_path
  end
end
