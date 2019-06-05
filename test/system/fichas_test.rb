require "application_system_test_case"

class FichasTest < ApplicationSystemTestCase
  setup do
    @ficha = fichas(:one)
  end

  test "visiting the index" do
    visit fichas_url
    assert_selector "h1", text: "Fichas"
  end

  test "creating a Ficha" do
    visit fichas_url
    click_on "New Ficha"

    fill_in "Cargas familiares", with: @ficha.cargas_familiares
    fill_in "Cargo", with: @ficha.cargo
    fill_in "Comuna", with: @ficha.comuna
    fill_in "Correo", with: @ficha.correo
    fill_in "Domicilio", with: @ficha.domicilio
    fill_in "Email corporativo", with: @ficha.email_corporativo
    fill_in "Escala", with: @ficha.escala
    fill_in "Estado civil", with: @ficha.estado_civil
    fill_in "Fecha ingreso", with: @ficha.fecha_ingreso
    fill_in "Fecha nacimiento", with: @ficha.fecha_nacimiento
    fill_in "Fono", with: @ficha.fono
    fill_in "Grupo trabajo", with: @ficha.grupo_trabajo
    fill_in "Nombre", with: @ficha.nombre
    fill_in "Socio", with: @ficha.socio_id
    click_on "Create Ficha"

    assert_text "Ficha was successfully created"
    click_on "Back"
  end

  test "updating a Ficha" do
    visit fichas_url
    click_on "Edit", match: :first

    fill_in "Cargas familiares", with: @ficha.cargas_familiares
    fill_in "Cargo", with: @ficha.cargo
    fill_in "Comuna", with: @ficha.comuna
    fill_in "Correo", with: @ficha.correo
    fill_in "Domicilio", with: @ficha.domicilio
    fill_in "Email corporativo", with: @ficha.email_corporativo
    fill_in "Escala", with: @ficha.escala
    fill_in "Estado civil", with: @ficha.estado_civil
    fill_in "Fecha ingreso", with: @ficha.fecha_ingreso
    fill_in "Fecha nacimiento", with: @ficha.fecha_nacimiento
    fill_in "Fono", with: @ficha.fono
    fill_in "Grupo trabajo", with: @ficha.grupo_trabajo
    fill_in "Nombre", with: @ficha.nombre
    fill_in "Socio", with: @ficha.socio_id
    click_on "Update Ficha"

    assert_text "Ficha was successfully updated"
    click_on "Back"
  end

  test "destroying a Ficha" do
    visit fichas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ficha was successfully destroyed"
  end
end
