require 'test_helper'

class AdrressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adrress = adrresses(:one)
  end

  test "should get index" do
    get adrresses_url
    assert_response :success
  end

  test "should get new" do
    get new_adrress_url
    assert_response :success
  end

  test "should create adrress" do
    assert_difference('Adrress.count') do
      post adrresses_url, params: { adrress: { city: @adrress.city, contact_id: @adrress.contact_id, state: @adrress.state, street: @adrress.street } }
    end

    assert_redirected_to adrress_url(Adrress.last)
  end

  test "should show adrress" do
    get adrress_url(@adrress)
    assert_response :success
  end

  test "should get edit" do
    get edit_adrress_url(@adrress)
    assert_response :success
  end

  test "should update adrress" do
    patch adrress_url(@adrress), params: { adrress: { city: @adrress.city, contact_id: @adrress.contact_id, state: @adrress.state, street: @adrress.street } }
    assert_redirected_to adrress_url(@adrress)
  end

  test "should destroy adrress" do
    assert_difference('Adrress.count', -1) do
      delete adrress_url(@adrress)
    end

    assert_redirected_to adrresses_url
  end
end
