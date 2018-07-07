Rails.application.routes.draw do
  resources :production_productivity11s do 
      collection { post :import }
      collection { get :dropdown }
      collection { get :test }
    end 
  resources :production_productivity10s do 
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end 
  resources :production_productivity9s do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  
  resources :production_productivity8s do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  resources :production_productivity7s do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  resources :hhs
  resources :production_and_productivity_of_rices do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  resources :lands do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  resources :rainfalls do
    collection { post :import }
    collection { get :dropdown }
    collection { get :test }
  end
  resources :test1s do
    collection { post :import }
    collection { get :dropdown }
    collection { get :html }
  end
  resources :tests do
    collection { post :import }
    collection { get :dropdown }
    collection { get :html }
  end
  get 'static_pages/home'
  get 'static_pages/help'
  root 'static_pages#home'
end
