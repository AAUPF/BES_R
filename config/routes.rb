Rails.application.routes.draw do
  resources :production_productivity10s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :production_productivity11s do 
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
  resources :production_and_productivity_of_rices do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :animal_husbandry5s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :animal_husbandry4s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_credit2s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_inputs8s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_inputs7s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_inputs6s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_inputs5s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :agricultural_inputs4s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :production_productivity12s do 
                      collection { post :import }
                      collection { get :dropdown }
                      collection { get :test }
                      end 
  resources :production_productivity11s do 
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
