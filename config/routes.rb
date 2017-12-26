Rails.application.routes.draw do
  devise_for :users
   resources :blogs do
   	resources :comments
   	# member do
    #     post "create_comment"
   	# end
   end
    post 'comment',:to=> 'comments#rakesh'
    post 'abc/xyz',:to=> 'blogs#create_comment'

    post 'comment',:to=> 'blogs#comment'
     
     get 'question/new', :to=> 'questions#question_new'
     post 'question/create', :to=> 'questions#question_create'
     get 'display/myquestion/:id', :to => 'questions#display_my_question'
     get 'all_question', :to => 'questions#all_question'
     #post 'question/answer', :to => 'answers#answer_create'
     get 'answers/new', :to=> 'answers#answers_new'


     get 'question/:question_id/answer',:to=> 'answers#answers_new'
     post 'question/:question_id/answer',:to=> 'answers#answer_create'
    
     resources :my_questions do
        #post 'question/submit',:to=> 'my_questions#submit'
        resources :question_answers
        
     end
     post 'question/submit_ans',:to=> 'my_questions#submit_ans'
     get 'my_correctanswers', :to => 'my_questions#all_correctans'
end
