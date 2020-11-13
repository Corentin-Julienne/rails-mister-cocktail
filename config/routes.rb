Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # get 'index', to: 'cocktails#index' # display all cocktails
  # get 'cocktails/new', to: 'cocktails#new' # create : go to the form
  # post 'cocktails', to: 'cocktails#create' # actually create the damn cocktail
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail' # display a given cocktail

  resources :cocktails, only: [:new, :create, :show] do
    resources :doses, only: :create
  end

  resources :doses, only: :destroy
end
