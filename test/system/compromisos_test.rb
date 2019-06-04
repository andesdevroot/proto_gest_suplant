require "application_system_test_case"

class CompromisosTest < ApplicationSystemTestCase
  setup do
    @compromiso = compromisos(:one)
  end

  test "visiting the index" do
    visit compromisos_url
    assert_selector "h1", text: "Compromisos"
  end

  test "creating a Compromiso" do
    visit compromisos_url
    click_on "New Compromiso"

    fill_in "Compromiso", with: @compromiso.compromiso
    fill_in "Dirigente", with: @compromiso.dirigente
    fill_in "Estatus", with: @compromiso.estatus
    fill_in "Fecha ingreso", with: @compromiso.fecha_ingreso
    fill_in "Fecha tope", with: @compromiso.fecha_tope
    fill_in "Respuesta", with: @compromiso.respuesta
    fill_in "Socio", with: @compromiso.socio_id
    fill_in "Tema", with: @compromiso.tema
    click_on "Create Compromiso"

    assert_text "Compromiso was successfully created"
    click_on "Back"
  end

  test "updating a Compromiso" do
    visit compromisos_url
    click_on "Edit", match: :first

    fill_in "Compromiso", with: @compromiso.compromiso
    fill_in "Dirigente", with: @compromiso.dirigente
    fill_in "Estatus", with: @compromiso.estatus
    fill_in "Fecha ingreso", with: @compromiso.fecha_ingreso
    fill_in "Fecha tope", with: @compromiso.fecha_tope
    fill_in "Respuesta", with: @compromiso.respuesta
    fill_in "Socio", with: @compromiso.socio_id
    fill_in "Tema", with: @compromiso.tema
    click_on "Update Compromiso"

    assert_text "Compromiso was successfully updated"
    click_on "Back"
  end

  test "destroying a Compromiso" do
    visit compromisos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compromiso was successfully destroyed"
  end
end
