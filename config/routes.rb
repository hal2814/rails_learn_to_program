Rails.application.routes.draw do
  root :to => 'courses#index'

  resources :courses do
    resources :subjects, :except => [:show, :index]
  end
end
