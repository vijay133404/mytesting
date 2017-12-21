Rails.application.routes.draw do
   resources :blogs do
   	member do
        post "create_comment"
   	end
   end
   post 'abc/xyz',:to=> 'blogs#create_comment'
end
