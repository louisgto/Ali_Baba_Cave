Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'pieces#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :pieces do
    resources :transacts
  end
  get 'dashboard', to: 'pieces#dashboard', as: :dashboard
end
