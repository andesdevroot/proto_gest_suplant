require "application_system_test_case"

class Maquina2sTest < ApplicationSystemTestCase
  setup do
    @maquina2 = maquina2s(:one)
  end

  test "visiting the index" do
    visit maquina2s_url
    assert_selector "h1", text: "Maquina2s"
  end

  test "creating a Maquina2" do
    visit maquina2s_url
    click_on "New Maquina2"

    fill_in "Area", with: @maquina2.area
    fill_in "Socio", with: @maquina2.socio_id
    click_on "Create Maquina2"

    assert_text "Maquina2 was successfully created"
    click_on "Back"
  end

  test "updating a Maquina2" do
    visit maquina2s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @maquina2.area
    fill_in "Socio", with: @maquina2.socio_id
    click_on "Update Maquina2"

    assert_text "Maquina2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Maquina2" do
    visit maquina2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maquina2 was successfully destroyed"
  end
end
