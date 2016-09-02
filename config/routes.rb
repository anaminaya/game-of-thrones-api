Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/games' => 'games#index'
      get '/games/:id' => 'games#show'
      post '/games' => 'games#create'
    end


    namespace :v2 do
      get '/games' => 'games#index'
      get '/games/:id' => 'games#show'
    end
  end

  get '/games' => 'games#index'

end
