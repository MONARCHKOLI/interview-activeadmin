Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :check_ins, only: [:new, :create, :show, :update] do
    resources :screenings do
      resources :questions
    end
  end
  root to: "check_ins#new"
end
