Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root            to: 'pages#home'
  get 'contact',  to: 'pages#contact'
  get 'about',    to: 'pages#about'
  get 'ask',      to: 'pages#ask'
  get 'answer',   to: 'pages#answer'
end
