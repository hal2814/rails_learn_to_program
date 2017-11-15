Rails.application.routes.draw do
  root :to => 'courses#index'

  resources :courses do
    resources :subjects, :except => [:index]
  end

  resources :subjects, :except => [:index] do
    resources :lessons
  end
end
