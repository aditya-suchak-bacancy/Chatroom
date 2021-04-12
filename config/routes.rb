Rails.application.routes.draw do
  root 'chatroom#index'
  devise_for :users
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
