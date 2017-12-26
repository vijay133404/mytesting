class QuestionAnswersController < ApplicationController

	def new
		@question = Question.find(params[:my_question_id])
	end

	def create
		@ques = Question.find(params[:my_question_id])
        @answer = @ques.answers.create(answer_params)
	    redirect_to my_question_path(id: @ques)

	end

	def edit
	
		@question = Question.find(params[:my_question_id])
        @answer = @question.answers.find(params[:id])
       
	end

	def update
		byebug
		  @question = Question.find(params[:my_question_id])
		  @ans = @question.answers.find(params[:id])
		  @ans.update(answer_params)
		  redirect_to my_question_path(id:@question)
	
	end

	private

	def answer_params
		params.require(:answer).permit(:ans,:disabled,:question_id)
	end 
end
