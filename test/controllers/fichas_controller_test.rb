require 'test_helper'

class FichasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha = fichas(:one)
  end

  test "should get index" do
    get fichas_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_url
    assert_response :success
  end

  test "should create ficha" do
    assert_difference('Ficha.count') do
      post fichas_url, params: { ficha: { cargas_familiares: @ficha.cargas_familiares, cargo: @ficha.cargo, comuna: @ficha.comuna, correo: @ficha.correo, domicilio: @ficha.domicilio, email_corporativo: @ficha.email_corporativo, escala: @ficha.escala, estado_civil: @ficha.estado_civil, fecha_ingreso: @ficha.fecha_ingreso, fecha_nacimiento: @ficha.fecha_nacimiento, fono: @ficha.fono, grupo_trabajo: @ficha.grupo_trabajo, nombre: @ficha.nombre, socio_id: @ficha.socio_id } }
    end

    assert_redirected_to ficha_url(Ficha.last)
  end

  test "should show ficha" do
    get ficha_url(@ficha)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_url(@ficha)
    assert_response :success
  end

  test "should update ficha" do
    patch ficha_url(@ficha), params: { ficha: { cargas_familiares: @ficha.cargas_familiares, cargo: @ficha.cargo, comuna: @ficha.comuna, correo: @ficha.correo, domicilio: @ficha.domicilio, email_corporativo: @ficha.email_corporativo, escala: @ficha.escala, estado_civil: @ficha.estado_civil, fecha_ingreso: @ficha.fecha_ingreso, fecha_nacimiento: @ficha.fecha_nacimiento, fono: @ficha.fono, grupo_trabajo: @ficha.grupo_trabajo, nombre: @ficha.nombre, socio_id: @ficha.socio_id } }
    assert_redirected_to ficha_url(@ficha)
  end

  test "should destroy ficha" do
    assert_difference('Ficha.count', -1) do
      delete ficha_url(@ficha)
    end

    assert_redirected_to fichas_url
  end
end
