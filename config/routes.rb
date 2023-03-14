Rails.application.routes.draw do
  resources :check_ins, only: [:new, :create, :show, :update] do
    resources :screenings do
      resources :questions
    end
  end
  root to: "check_ins#new"
end
