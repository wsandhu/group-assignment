require 'test_helper'

class DateOfInfectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_of_infection = date_of_infections(:one)
  end

  test "should get index" do
    get date_of_infections_url
    assert_response :success
  end

  test "should get new" do
    get new_date_of_infection_url
    assert_response :success
  end

  test "should create date_of_infection" do
    assert_difference('DateOfInfection.count') do
      post date_of_infections_url, params: { date_of_infection: { animal_id: @date_of_infection.animal_id, date: @date_of_infection.date } }
    end

    assert_redirected_to date_of_infection_url(DateOfInfection.last)
  end

  test "should show date_of_infection" do
    get date_of_infection_url(@date_of_infection)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_of_infection_url(@date_of_infection)
    assert_response :success
  end

  test "should update date_of_infection" do
    patch date_of_infection_url(@date_of_infection), params: { date_of_infection: { animal_id: @date_of_infection.animal_id, date: @date_of_infection.date } }
    assert_redirected_to date_of_infection_url(@date_of_infection)
  end

  test "should destroy date_of_infection" do
    assert_difference('DateOfInfection.count', -1) do
      delete date_of_infection_url(@date_of_infection)
    end

    assert_redirected_to date_of_infections_url
  end
end
