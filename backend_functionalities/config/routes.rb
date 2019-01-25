Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'victim#index'
  get 'scan' => 'prescriptions#scan'
  resources :victim

  resources :prescriptions, only: [:new, :create, :index, :destroy]
  # root to: 'prescriptions#index'
  root to: 'prescriptions#show'

end
