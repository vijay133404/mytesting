class QuestionAnswersController < ApplicationController
   before_action :authenticate_user!
	def new
		@question = Question.find(params[:my_question_id])
	end

	def create
	 if current_user.admin == true 
		@ques = Question.find(params[:my_question_id])
        @answer = @ques.answers.create(answer_params)
	    redirect_to my_question_path(id: @ques),notice: 'answer was successfully created.'
      end   
	end

	def edit
	    if current_user.admin == true
		 @question = Question.find(params[:my_question_id])
         @answer = @question.answers.find(params[:id])
       end
	end

	def update

	    if current_user.admin == true
		  @question = Question.find(params[:my_question_id])
		  @ans = @question.answers.find(params[:id])
		  @ans.update(answer_params)
		  redirect_to my_question_path(id:@question),notice: 'answer was successfully update.'
	   end
	end

	private

	def answer_params
		params.require(:answer).permit(:ans,:disabled,:question_id,:option)
	end 
end
