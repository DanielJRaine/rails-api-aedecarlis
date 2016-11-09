Rails.application.routes.draw do
  resources :items, except: [:new]
  get '/artforms' => 'items#artforms'
  get '/portfolios' => 'items#portfolios'
  get '/sections' => 'items#sections'

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
