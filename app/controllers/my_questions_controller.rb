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
		 	    @question.update(question_params)
	            redirect_to my_question_path(@question)
		 
		 end

		 def submit_ans
		 	 @ans = Answer.all
		 	  @ans.each do |ans|
		 	  	if  ans.id == params[ans.id.to_s].to_i
		 	  		Submit.create(answer_id: params[ans.id.to_s].to_i ,disabled: true ,user_id: current_user.id)
		 	  	end
		 	  end
		 	  
		 	 redirect_to my_correctanswers_path
		 end


          def all_correctans

          	#@ans = Answer.all
          	@questions = Question.all
          	@submits = Submit.all.where(user_id: current_user.id ,disabled: true)
            
          end

		 private
		 
	      def set_my_question
	      	   @question = Question.find(params[:id])
	      end

	      def question_params
	      	params.require(:question).permit(:name)
	      end 

end
