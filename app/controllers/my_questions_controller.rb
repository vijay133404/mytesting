class MyQuestionsController < ApplicationController
    before_action :set_my_question, only: [:show, :update, :edit]

		def new
			@my_question = Question.new
		end

		def create
			@question = Question.create(name: params[:question][:name])
			redirect_to my_question_path(@question)
		end

		def index
			@questions = Question.all
		end

		def show
			
		end

		 def edit

		 end

		 def update
		 	    @question.update(name: params[:question][:name])
	            redirect_to my_question_path(@question)
		 
		 end

		 private
		 
	      def set_my_question
	      	   @question = Question.find(params[:id])
	      end

end
