class AnswersController < ApplicationController

	def answer_create
		@ques = Question.find(params[:question_id])
        @answer = @ques.answers.create(ans: params[:answer][:ans])
		redirect_to "/display/myquestion/#{@ques.id}"
	end

	def answers_new
         
	end

end
