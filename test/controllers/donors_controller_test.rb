require 'test_helper'

class DonorsControllerTest < ActionController::TestCase
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donor" do
    assert_difference('Donor.count') do
      post :create, donor: { address: @donor.address, city: @donor.city, country: @donor.country, email: @donor.email, fname: @donor.fname, landmark: @donor.landmark, lname: @donor.lname, password: 'secret', password_confirmation: 'secret', phoneNo: @donor.phoneNo, state: @donor.state, username: @donor.username }
    end

    assert_redirected_to donor_path(assigns(:donor))
  end

  test "should show donor" do
    get :show, id: @donor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donor
    assert_response :success
  end

  test "should update donor" do
    patch :update, id: @donor, donor: { address: @donor.address, city: @donor.city, country: @donor.country, email: @donor.email, fname: @donor.fname, landmark: @donor.landmark, lname: @donor.lname, password: 'secret', password_confirmation: 'secret', phoneNo: @donor.phoneNo, state: @donor.state, username: @donor.username }
    assert_redirected_to donor_path(assigns(:donor))
  end

  test "should destroy donor" do
    assert_difference('Donor.count', -1) do
      delete :destroy, id: @donor
    end

    assert_redirected_to donors_path
  end
end
