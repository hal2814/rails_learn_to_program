Rails.application.routes.draw do
  root :to => 'courses#index'

  resources :courses do
    resources :subjects
  end

  resources :subjects do
    resources :lessons
  end
end
