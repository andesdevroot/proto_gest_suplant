require "application_system_test_case"

class RecepcionsTest < ApplicationSystemTestCase
  setup do
    @recepcion = recepcions(:one)
  end

  test "visiting the index" do
    visit recepcions_url
    assert_selector "h1", text: "Recepcions"
  end

  test "creating a Recepcion" do
    visit recepcions_url
    click_on "New Recepcion"

    fill_in "Consulta", with: @recepcion.consulta
    fill_in "Dirigente", with: @recepcion.dirigente
    fill_in "Fecha", with: @recepcion.fecha
    fill_in "Socio", with: @recepcion.socio_id
    fill_in "Tema", with: @recepcion.tema
    click_on "Create Recepcion"

    assert_text "Recepcion was successfully created"
    click_on "Back"
  end

  test "updating a Recepcion" do
    visit recepcions_url
    click_on "Edit", match: :first

    fill_in "Consulta", with: @recepcion.consulta
    fill_in "Dirigente", with: @recepcion.dirigente
    fill_in "Fecha", with: @recepcion.fecha
    fill_in "Socio", with: @recepcion.socio_id
    fill_in "Tema", with: @recepcion.tema
    click_on "Update Recepcion"

    assert_text "Recepcion was successfully updated"
    click_on "Back"
  end

  test "destroying a Recepcion" do
    visit recepcions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recepcion was successfully destroyed"
  end
end
