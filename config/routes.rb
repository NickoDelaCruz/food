Rails.application.routes.draw do
  root :to => 'foods#index'
  resources :foods do
    resources :reviews
  end
end
