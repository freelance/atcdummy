Rails.application.routes.draw do
  resources :spreadsheet_details
  resources :expenses
  resources :tickets
  resources :licenses
  devise_for :users

  root to: 'dashboard#index'
  resources :spreadsheets do
    resources :spreadsheet_details
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
