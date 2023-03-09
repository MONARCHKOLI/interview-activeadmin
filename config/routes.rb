Rails.application.routes.draw do
  resources :check_ins, only: [:new, :create, :show, :update] do
    resources :screenings
  end
  root to: "check_ins#new"
end
