class QuestionsController < ApplicationController

	def question_new
		
	end
    
    def question_create
    	 @question = Question.create(name: params[:question][:name])
    	 redirect_to all_question_path
    end

    def display_my_question
        @question = Question.find(params[:id])

    end
    
    def all_question
    	@questions = Question.all
    end
end
