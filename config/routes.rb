Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  # contacts POST /contacts(.:format) contacts#create
  # new_contact GET  /contacts/new(.:format) contacts#new
end
