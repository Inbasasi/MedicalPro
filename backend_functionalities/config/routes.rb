Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'victim#index'
  get 'scan' => 'prescriptions#scan'
  resources :victim

  resources :prescriptions, only: [:new, :create, :index, :destroy]
  resources :medical_shops
  # root to: 'prescriptions#index'
  # root to: 'medical_shops#show'
  root to: 'prescriptions#show'
  match 'prescriptions/show' => 'prescriptions/show', :via => [:get]
  match 'medical_shops/show' => 'medical_shops#show', :via => [:get]
  # match 'medical_shops/fetch_using_mail' => 'medical_shops#fetch_using_mail', :via => [:get]
  get 'medical_shops/fetch_using_mail' => 'medical_shops#fetch_using_mail'

end
