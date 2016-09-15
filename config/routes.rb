Rails.application.routes.draw do


  # Root path
  root 'texts#index'

  resources :texts do
    resources :words
  end


  # # Text paths
  # get "texts" => "texts#index"
  # get 'texts/new' => "texts#new", as: :new_text
  # get "texts/:id" => "texts#show", as: :text
  #
  # post "texts" => "texts#create"
  #
  # # Word paths
  # get "words" => "words#index"
  # get 'words/new' => "words#new", as: :new_word
  # get "words/:id" => "words#show", as: :word
  #
  # post "words" => "words#create"

end
