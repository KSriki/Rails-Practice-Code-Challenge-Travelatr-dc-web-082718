Rails.application.routes.draw do




  resources :bloggers, only: [:new, :show, :create]
  resources :posts, only: [:new, :edit, :create, :update, :show] do
      patch "upvote" => "posts#upvote"
  end
  resources :destinations, only: [:show]
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
