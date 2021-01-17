require "test_helper"

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quizzes_url
    assert_template :index
    assert_equal Quiz.all, assigns(:quizzes)
    assert_response :success
  end

  test "should get new" do
    get new_quiz_url
    assert_template :new
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post quizzes_url, params: { quiz: {name: "A quiz", author: "Its me"} }
    end
  end

  test "should redirect to create connections round after creating quiz" do
    post quizzes_url, params: { quiz: {name: "A quiz", author: "Its me"} }
    assert_redirected_to new_quiz_connections_round_path(Quiz.last)
  end

  test "should re-render if parameters missing" do
    post quizzes_url, params: { quiz: {author: "Its me"} }
    assert_template :new
  end
end
