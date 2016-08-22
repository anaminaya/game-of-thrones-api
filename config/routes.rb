Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/games' => 'games#index'
      get '/games/:id' => 'games#show'
    end


    namespace :v2 do
      get '/games' => 'games#index'
      get '/games/:id' => 'games#show'
    end
  end

end
