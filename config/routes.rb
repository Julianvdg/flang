Rails.application.routes.draw do


  # Root path
  root 'texts#index'

  # Text paths
  get "texts" => "texts#index"
  get 'texts/new' => "texts#new", as: :new_text
  get "texts/:id" => "texts#show", as: :text

  post "texts" => "texts#create"

end
