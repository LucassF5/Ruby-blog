Rails.application.routes.draw do

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end

Rails.application.routes.draw do
  root "articles#index" # Definindo como rota raiz a página de listagem de artigos

  # get "/articles", to: "articles#index"
  # get "articles/:id", to: "articles#show"

  resources :articles do # Cria todas as rotas necessárias para um recurso RESTful
    resources :comments
  end
end
