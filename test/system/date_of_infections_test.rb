require "application_system_test_case"

class DateOfInfectionsTest < ApplicationSystemTestCase
  setup do
    @date_of_infection = date_of_infections(:one)
  end

  test "visiting the index" do
    visit date_of_infections_url
    assert_selector "h1", text: "Date Of Infections"
  end

  test "creating a Date of infection" do
    visit date_of_infections_url
    click_on "New Date Of Infection"

    fill_in "Animal", with: @date_of_infection.animal_id
    fill_in "Date", with: @date_of_infection.date
    click_on "Create Date of infection"

    assert_text "Date of infection was successfully created"
    click_on "Back"
  end

  test "updating a Date of infection" do
    visit date_of_infections_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @date_of_infection.animal_id
    fill_in "Date", with: @date_of_infection.date
    click_on "Update Date of infection"

    assert_text "Date of infection was successfully updated"
    click_on "Back"
  end

  test "destroying a Date of infection" do
    visit date_of_infections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date of infection was successfully destroyed"
  end
end
