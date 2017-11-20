require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_city: @user.address_city, address_state: @user.address_state, address_street_1: @user.address_street_1, address_street_2: @user.address_street_2, address_zip: @user.address_zip, authentication_token: @user.authentication_token, can_contact: @user.can_contact, email: @user.email, first_name: @user.first_name, is_admin: @user.is_admin, last_name: @user.last_name, name: @user.name, oauth_expires_at: @user.oauth_expires_at, oauth_token: @user.oauth_token, password: @user.password, phone: @user.phone, picture_url: @user.picture_url, provider: @user.provider, uid: @user.uid } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_city: @user.address_city, address_state: @user.address_state, address_street_1: @user.address_street_1, address_street_2: @user.address_street_2, address_zip: @user.address_zip, authentication_token: @user.authentication_token, can_contact: @user.can_contact, email: @user.email, first_name: @user.first_name, is_admin: @user.is_admin, last_name: @user.last_name, name: @user.name, oauth_expires_at: @user.oauth_expires_at, oauth_token: @user.oauth_token, password: @user.password, phone: @user.phone, picture_url: @user.picture_url, provider: @user.provider, uid: @user.uid } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
