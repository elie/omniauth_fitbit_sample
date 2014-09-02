Rails.application.routes.draw do

  get 'articles/index'
  root 'articles#index'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end
