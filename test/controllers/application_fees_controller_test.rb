require 'test_helper'

class ApplicationFeesControllerTest < ActionController::TestCase
  setup do
    @application_fee = application_fees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:application_fees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application_fee" do
    assert_difference('ApplicationFee.count') do
      post :create, application_fee: {  }
    end

    assert_redirected_to application_fee_path(assigns(:application_fee))
  end

  test "should show application_fee" do
    get :show, id: @application_fee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application_fee
    assert_response :success
  end

  test "should update application_fee" do
    patch :update, id: @application_fee, application_fee: {  }
    assert_redirected_to application_fee_path(assigns(:application_fee))
  end

  test "should destroy application_fee" do
    assert_difference('ApplicationFee.count', -1) do
      delete :destroy, id: @application_fee
    end

    assert_redirected_to application_fees_path
  end
end
