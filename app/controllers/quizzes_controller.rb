class QuizzesController < ApplicationController
    def index
      @quizzes = Quiz.all
    end

    def new
      @quiz = Quiz.new
    end

    def create
      @quiz = Quiz.new(quiz_params)
  
      if @quiz.save
        redirect_to new_quiz_connections_round_path(@quiz)
      else
        render :new
      end
    end
  
    private
      def quiz_params
        params.require(:quiz).permit(:name, :author)
      end
  end
