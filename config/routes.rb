Rails.application.routes.draw do
  root :to => 'foods#home'
  resources :foods do
    resources :reviews
  end
end
