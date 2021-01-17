require "test_helper"

class QuizTest < ActiveSupport::TestCase
  test "should not save quiz without name" do
    quiz = Quiz.new
    assert_not quiz.save, "Saved quiz without a name"
  end

  test "should save quiz without author" do
    quiz = Quiz.new
    quiz.name = "A Quiz"
    assert quiz.save, "Wouldn't save quiz with an author"
  end
end
