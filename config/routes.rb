Rails.application.routes.draw do
  # get ':short_url', to: 'links#test'

  root 'links#new'
  get 'links/new'

  resources :links
end
