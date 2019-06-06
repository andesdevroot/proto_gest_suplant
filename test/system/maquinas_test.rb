require "application_system_test_case"

class MaquinasTest < ApplicationSystemTestCase
  setup do
    @maquina = maquinas(:one)
  end

  test "visiting the index" do
    visit maquinas_url
    assert_selector "h1", text: "Maquinas"
  end

  test "creating a Maquina" do
    visit maquinas_url
    click_on "New Maquina"

    fill_in "Area", with: @maquina.area
    click_on "Create Maquina"

    assert_text "Maquina was successfully created"
    click_on "Back"
  end

  test "updating a Maquina" do
    visit maquinas_url
    click_on "Edit", match: :first

    fill_in "Area", with: @maquina.area
    click_on "Update Maquina"

    assert_text "Maquina was successfully updated"
    click_on "Back"
  end

  test "destroying a Maquina" do
    visit maquinas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maquina was successfully destroyed"
  end
end
