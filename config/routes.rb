Rails.application.routes.draw do
  resources :books do
    resources :categories
  end
  resources :categories do
    resources :titles
  end
end
