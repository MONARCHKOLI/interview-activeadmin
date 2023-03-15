Rails.application.routes.draw do
  devise_for :screenings, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  resources :check_ins, only: [:new, :create, :show, :update] do
    resources :screenings do
      resources :questions
    end
  end
  root to: "check_ins#new"
end
