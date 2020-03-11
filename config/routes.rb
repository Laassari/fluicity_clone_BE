Rails.application.routes.draw do
  post 'authenticate/login'
  post 'authenticate/email_exists'
  post 'authenticate/sign_up'

  delete '/posts/:id', to: 'posts#destroy'
  put '/posts/:id', to: 'posts#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
