require "application_system_test_case"

class AsistenciaTest < ApplicationSystemTestCase
  setup do
    @asistencium = asistencia(:one)
  end

  test "visiting the index" do
    visit asistencia_url
    assert_selector "h1", text: "Asistencia"
  end

  test "creating a Asistencium" do
    visit asistencia_url
    click_on "New Asistencium"

    fill_in "Asistencia", with: @asistencium.asistencia
    fill_in "Fecha", with: @asistencium.fecha
    fill_in "Socio", with: @asistencium.socio_id
    fill_in "Tipo reunion", with: @asistencium.tipo_reunion
    click_on "Create Asistencium"

    assert_text "Asistencium was successfully created"
    click_on "Back"
  end

  test "updating a Asistencium" do
    visit asistencia_url
    click_on "Edit", match: :first

    fill_in "Asistencia", with: @asistencium.asistencia
    fill_in "Fecha", with: @asistencium.fecha
    fill_in "Socio", with: @asistencium.socio_id
    fill_in "Tipo reunion", with: @asistencium.tipo_reunion
    click_on "Update Asistencium"

    assert_text "Asistencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Asistencium" do
    visit asistencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asistencium was successfully destroyed"
  end
end
