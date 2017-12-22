class QuestionAnswersController < ApplicationController

	def new
		@question = Question.find(params[:my_question_id])
	end

	def create

		@ques = Question.find(params[:my_question_id])
        @answer = @ques.answers.create(ans: params[:answer][:ans])
	    redirect_to my_question_path(id: @ques)

	end

	def edit
	
		@question = Question.find(params[:my_question_id])
        @answer = @question.answers.find(params[:id])
       
	end

	def update
		  @question = Question.find(params[:my_question_id])
		  @ans = @question.answers.find(params[:id])
		  @ans.update(ans: params[:answer][:ans])
		  redirect_to my_question_path(id:@question)
	
	end
end
