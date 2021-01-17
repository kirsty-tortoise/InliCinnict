require "test_helper"

class ConnectionsRoundControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get new" do
    get new_quiz_connections_round_path(@quiz)
    assert_template :new
    assert_response :success
  end
end
