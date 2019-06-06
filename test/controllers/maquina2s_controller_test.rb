require 'test_helper'

class Maquina2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maquina2 = maquina2s(:one)
  end

  test "should get index" do
    get maquina2s_url
    assert_response :success
  end

  test "should get new" do
    get new_maquina2_url
    assert_response :success
  end

  test "should create maquina2" do
    assert_difference('Maquina2.count') do
      post maquina2s_url, params: { maquina2: { area: @maquina2.area, socio_id: @maquina2.socio_id } }
    end

    assert_redirected_to maquina2_url(Maquina2.last)
  end

  test "should show maquina2" do
    get maquina2_url(@maquina2)
    assert_response :success
  end

  test "should get edit" do
    get edit_maquina2_url(@maquina2)
    assert_response :success
  end

  test "should update maquina2" do
    patch maquina2_url(@maquina2), params: { maquina2: { area: @maquina2.area, socio_id: @maquina2.socio_id } }
    assert_redirected_to maquina2_url(@maquina2)
  end

  test "should destroy maquina2" do
    assert_difference('Maquina2.count', -1) do
      delete maquina2_url(@maquina2)
    end

    assert_redirected_to maquina2s_url
  end
end
