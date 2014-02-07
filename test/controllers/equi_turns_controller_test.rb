require 'test_helper'

class EquiTurnsControllerTest < ActionController::TestCase
  setup do
    @equi_turn = equi_turns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equi_turns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equi_turn" do
    assert_difference('EquiTurn.count') do
      post :create, equi_turn: {  }
    end

    assert_redirected_to equi_turn_path(assigns(:equi_turn))
  end

  test "should show equi_turn" do
    get :show, id: @equi_turn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equi_turn
    assert_response :success
  end

  test "should update equi_turn" do
    patch :update, id: @equi_turn, equi_turn: {  }
    assert_redirected_to equi_turn_path(assigns(:equi_turn))
  end

  test "should destroy equi_turn" do
    assert_difference('EquiTurn.count', -1) do
      delete :destroy, id: @equi_turn
    end

    assert_redirected_to equi_turns_path
  end
end
