require 'test_helper'

class Api::Events::ListenerVotingsControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    sign_in @user
    @event = create :user_event
  end

  test "should post :create" do
    post :create, format: :json, event_id: @event.id
    assert_response :success
    assert @event.listener_votings.voted_by?(@user)
  end
end