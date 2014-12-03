Rails.application.routes.draw do
  resources :panes

  root 'panes#index'
end
