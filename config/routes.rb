Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/member_details' => 'members#index'

  # resources :companies

  namespace :api do 
    namespace :v1 do 
      resources :companies
    end
  end

end
