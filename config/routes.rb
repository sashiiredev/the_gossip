Rails.application.routes.draw do
  root 'home#index'
  get 'welcome/identification', to: 'welcome#identification'
  post 'welcome/user', to: 'welcome#show'
  get 'welcome/:user', to: 'welcome#personal_page'
  get '/accueil', to: 'welcome#accueil'
  post '/accueil/:id', to: 'welcome#gossip'
  post '/accueil/:id/:userid', to: 'welcome#user'
  get '/contact', to: 'staff#contact'
  get '/team', to: 'staff#team'
end
