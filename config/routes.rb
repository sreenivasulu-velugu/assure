Assure::Application.routes.draw do

  match '/auth/:provider/callback' => 'authentications#create'
  
  authenticated :user do
    root :to => 'home#index'
  end

  devise_for :users, :controllers => { :registrations => 'registrations' } do
    get '/users/sign_out' => 'devise/sessions#destroy' # added this becaause of sign_out bug.
    get '/users/sign_in' => 'devise/sessions#new'
  end

  root :to => 'home#index'
  match 'welcome' => 'home#welcome' # just for testing layout
  match '/' => 'home#index', :as => 'home'

  resources :authentications
  resources :users
  resource :profile, :controller => 'profile' do
    get '/:uid' => 'profile#public', :as => 'public', :constraints => { :uid => /\d+/ }
  end
  
end
