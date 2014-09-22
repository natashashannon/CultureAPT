require 'test_helper'

class SuggestionsControllerTest < ActionController::TestCase
  setup do
    @suggestion = suggestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suggestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suggestion" do
    assert_difference('Suggestion.count') do
      post :create, suggestion: { category: @suggestion.category, city: @suggestion.city, description: @suggestion.description, end_date: @suggestion.end_date, end_time: @suggestion.end_time, event_name: @suggestion.event_name, event_url: @suggestion.event_url, latitude: @suggestion.latitude, longitude: @suggestion.longitude, org_id: @suggestion.org_id, org_name: @suggestion.org_name, phone: @suggestion.phone, price_high: @suggestion.price_high, price_low: @suggestion.price_low, restriction: @suggestion.restriction, spec_instruction: @suggestion.spec_instruction, start_date: @suggestion.start_date, start_time: @suggestion.start_time, state: @suggestion.state, street: @suggestion.street, subcategory: @suggestion.subcategory, ticket_rsvp_instruction: @suggestion.ticket_rsvp_instruction, venue_id: @suggestion.venue_id, venue_name: @suggestion.venue_name, venue_url: @suggestion.venue_url, zip: @suggestion.zip }
    end

    assert_redirected_to suggestion_path(assigns(:suggestion))
  end

  test "should show suggestion" do
    get :show, id: @suggestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suggestion
    assert_response :success
  end

  test "should update suggestion" do
    patch :update, id: @suggestion, suggestion: { category: @suggestion.category, city: @suggestion.city, description: @suggestion.description, end_date: @suggestion.end_date, end_time: @suggestion.end_time, event_name: @suggestion.event_name, event_url: @suggestion.event_url, latitude: @suggestion.latitude, longitude: @suggestion.longitude, org_id: @suggestion.org_id, org_name: @suggestion.org_name, phone: @suggestion.phone, price_high: @suggestion.price_high, price_low: @suggestion.price_low, restriction: @suggestion.restriction, spec_instruction: @suggestion.spec_instruction, start_date: @suggestion.start_date, start_time: @suggestion.start_time, state: @suggestion.state, street: @suggestion.street, subcategory: @suggestion.subcategory, ticket_rsvp_instruction: @suggestion.ticket_rsvp_instruction, venue_id: @suggestion.venue_id, venue_name: @suggestion.venue_name, venue_url: @suggestion.venue_url, zip: @suggestion.zip }
    assert_redirected_to suggestion_path(assigns(:suggestion))
  end

  test "should destroy suggestion" do
    assert_difference('Suggestion.count', -1) do
      delete :destroy, id: @suggestion
    end

    assert_redirected_to suggestions_path
  end
end
