require 'test_helper'

class TiendaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get quienes" do
    get :quienes
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
