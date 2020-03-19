Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/shelters', to: 'shelters#index'
  get '/shelters/:id', to: 'shelters#show'
  post '/shelters/:id', to: 'shelters#show'
end
