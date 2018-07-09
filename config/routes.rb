Rails.application.routes.draw do
  resources :check_ins, only: [:new, :create, :show, :update]

  root to: "check_ins#new"
end
