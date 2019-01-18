Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  get 'my_portfolio' => 'users#my_portfolio'

end
